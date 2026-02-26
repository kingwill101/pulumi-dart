import 'package:pulumi/pulumi.dart';
import 'permission_args2.dart';

/// Manages an AWS Lambda permission. Use this resource to grant external sources (e.g., EventBridge Rules, SNS, or S3) permission to invoke Lambda functions.
///
/// ## Example Usage
///
/// ### Basic Usage with EventBridge
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const iamForLambda = new aws.iam.Role("iam_for_lambda", {
/// name: "iam_for_lambda",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Sid: "",
/// Principal: {
/// Service: "lambda.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const testLambda = new aws.lambda.Function("test_lambda", {
/// code: new pulumi.asset.FileArchive("lambdatest.zip"),
/// name: "lambda_function_name",
/// role: iamForLambda.arn,
/// handler: "exports.handler",
/// runtime: aws.lambda.Runtime.NodeJS20dX,
/// });
/// const testAlias = new aws.lambda.Alias("test_alias", {
/// name: "testalias",
/// description: "a sample description",
/// functionName: testLambda.name,
/// functionVersion: "$LATEST",
/// });
/// const allowCloudwatch = new aws.lambda.Permission("allow_cloudwatch", {
/// statementId: "AllowExecutionFromCloudWatch",
/// action: "lambda:InvokeFunction",
/// "function": testLambda.name,
/// principal: "events.amazonaws.com",
/// sourceArn: "arn:aws:events:eu-west-1:111122223333:rule/RunDaily",
/// qualifier: testAlias.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// iam_for_lambda = aws.iam.Role("iam_for_lambda",
/// name="iam_for_lambda",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid": "",
/// "Principal": {
/// "Service": "lambda.amazonaws.com",
/// },
/// }],
/// }))
/// test_lambda = aws.lambda_.Function("test_lambda",
/// code=pulumi.FileArchive("lambdatest.zip"),
/// name="lambda_function_name",
/// role=iam_for_lambda.arn,
/// handler="exports.handler",
/// runtime=aws.lambda_.Runtime.NODE_JS20D_X)
/// test_alias = aws.lambda_.Alias("test_alias",
/// name="testalias",
/// description="a sample description",
/// function_name=test_lambda.name,
/// function_version="$LATEST")
/// allow_cloudwatch = aws.lambda_.Permission("allow_cloudwatch",
/// statement_id="AllowExecutionFromCloudWatch",
/// action="lambda:InvokeFunction",
/// function=test_lambda.name,
/// principal="events.amazonaws.com",
/// source_arn="arn:aws:events:eu-west-1:111122223333:rule/RunDaily",
/// qualifier=test_alias.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var iamForLambda = new Aws.Iam.Role("iam_for_lambda", new()
/// {
/// Name = "iam_for_lambda",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Sid"] = "",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "lambda.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var testLambda = new Aws.Lambda.Function("test_lambda", new()
/// {
/// Code = new FileArchive("lambdatest.zip"),
/// Name = "lambda_function_name",
/// Role = iamForLambda.Arn,
/// Handler = "exports.handler",
/// Runtime = Aws.Lambda.Runtime.NodeJS20dX,
/// });
///
/// var testAlias = new Aws.Lambda.Alias("test_alias", new()
/// {
/// Name = "testalias",
/// Description = "a sample description",
/// FunctionName = testLambda.Name,
/// FunctionVersion = "$LATEST",
/// });
///
/// var allowCloudwatch = new Aws.Lambda.Permission("allow_cloudwatch", new()
/// {
/// StatementId = "AllowExecutionFromCloudWatch",
/// Action = "lambda:InvokeFunction",
/// Function = testLambda.Name,
/// Principal = "events.amazonaws.com",
/// SourceArn = "arn:aws:events:eu-west-1:111122223333:rule/RunDaily",
/// Qualifier = testAlias.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid":    "",
/// "Principal": map[string]interface{}{
/// "Service": "lambda.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// iamForLambda, err := iam.NewRole(ctx, "iam_for_lambda", &iam.RoleArgs{
/// Name:             pulumi.String("iam_for_lambda"),
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// testLambda, err := lambda.NewFunction(ctx, "test_lambda", &lambda.FunctionArgs{
/// Code:    pulumi.NewFileArchive("lambdatest.zip"),
/// Name:    pulumi.String("lambda_function_name"),
/// Role:    iamForLambda.Arn,
/// Handler: pulumi.String("exports.handler"),
/// Runtime: pulumi.String(lambda.RuntimeNodeJS20dX),
/// })
/// if err != nil {
/// return err
/// }
/// testAlias, err := lambda.NewAlias(ctx, "test_alias", &lambda.AliasArgs{
/// Name:            pulumi.String("testalias"),
/// Description:     pulumi.String("a sample description"),
/// FunctionName:    testLambda.Name,
/// FunctionVersion: pulumi.String("$LATEST"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewPermission(ctx, "allow_cloudwatch", &lambda.PermissionArgs{
/// StatementId: pulumi.String("AllowExecutionFromCloudWatch"),
/// Action:      pulumi.String("lambda:InvokeFunction"),
/// Function:    testLambda.Name,
/// Principal:   pulumi.String("events.amazonaws.com"),
/// SourceArn:   pulumi.String("arn:aws:events:eu-west-1:111122223333:rule/RunDaily"),
/// Qualifier:   testAlias.Name,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.Alias;
/// import com.pulumi.aws.lambda.AliasArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import com.pulumi.asset.FileArchive;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var iamForLambda = new Role("iamForLambda", RoleArgs.builder()
/// .name("iam_for_lambda")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Sid", ""),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "lambda.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var testLambda = new Function("testLambda", FunctionArgs.builder()
/// .code(new FileArchive("lambdatest.zip"))
/// .name("lambda_function_name")
/// .role(iamForLambda.arn())
/// .handler("exports.handler")
/// .runtime("nodejs20.x")
/// .build());
///
/// var testAlias = new Alias("testAlias", AliasArgs.builder()
/// .name("testalias")
/// .description("a sample description")
/// .functionName(testLambda.name())
/// .functionVersion("$LATEST")
/// .build());
///
/// var allowCloudwatch = new Permission("allowCloudwatch", PermissionArgs.builder()
/// .statementId("AllowExecutionFromCloudWatch")
/// .action("lambda:InvokeFunction")
/// .function(testLambda.name())
/// .principal("events.amazonaws.com")
/// .sourceArn("arn:aws:events:eu-west-1:111122223333:rule/RunDaily")
/// .qualifier(testAlias.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// allowCloudwatch:
/// type: aws:lambda:Permission
/// name: allow_cloudwatch
/// properties:
/// statementId: AllowExecutionFromCloudWatch
/// action: lambda:InvokeFunction
/// function: ${testLambda.name}
/// principal: events.amazonaws.com
/// sourceArn: arn:aws:events:eu-west-1:111122223333:rule/RunDaily
/// qualifier: ${testAlias.name}
/// testAlias:
/// type: aws:lambda:Alias
/// name: test_alias
/// properties:
/// name: testalias
/// description: a sample description
/// functionName: ${testLambda.name}
/// functionVersion: $LATEST
/// testLambda:
/// type: aws:lambda:Function
/// name: test_lambda
/// properties:
/// code:
/// fn::FileArchive: lambdatest.zip
/// name: lambda_function_name
/// role: ${iamForLambda.arn}
/// handler: exports.handler
/// runtime: nodejs20.x
/// iamForLambda:
/// type: aws:iam:Role
/// name: iam_for_lambda
/// properties:
/// name: iam_for_lambda
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Sid: ""
/// Principal:
/// Service: lambda.amazonaws.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### SNS Integration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.sns.Topic("default", {name: "call-lambda-maybe"});
/// const defaultRole = new aws.iam.Role("default", {
/// name: "iam_for_lambda_with_sns",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Sid: "",
/// Principal: {
/// Service: "lambda.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const func = new aws.lambda.Function("func", {
/// code: new pulumi.asset.FileArchive("lambdatest.zip"),
/// name: "lambda_called_from_sns",
/// role: defaultRole.arn,
/// handler: "exports.handler",
/// runtime: aws.lambda.Runtime.Python3d12,
/// });
/// const withSns = new aws.lambda.Permission("with_sns", {
/// statementId: "AllowExecutionFromSNS",
/// action: "lambda:InvokeFunction",
/// "function": func.name,
/// principal: "sns.amazonaws.com",
/// sourceArn: _default.arn,
/// });
/// const lambda = new aws.sns.TopicSubscription("lambda", {
/// topic: _default.arn,
/// protocol: "lambda",
/// endpoint: func.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// default = aws.sns.Topic("default", name="call-lambda-maybe")
/// default_role = aws.iam.Role("default",
/// name="iam_for_lambda_with_sns",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid": "",
/// "Principal": {
/// "Service": "lambda.amazonaws.com",
/// },
/// }],
/// }))
/// func = aws.lambda_.Function("func",
/// code=pulumi.FileArchive("lambdatest.zip"),
/// name="lambda_called_from_sns",
/// role=default_role.arn,
/// handler="exports.handler",
/// runtime=aws.lambda_.Runtime.PYTHON3D12)
/// with_sns = aws.lambda_.Permission("with_sns",
/// statement_id="AllowExecutionFromSNS",
/// action="lambda:InvokeFunction",
/// function=func.name,
/// principal="sns.amazonaws.com",
/// source_arn=default.arn)
/// lambda_ = aws.sns.TopicSubscription("lambda",
/// topic=default.arn,
/// protocol="lambda",
/// endpoint=func.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Sns.Topic("default", new()
/// {
/// Name = "call-lambda-maybe",
/// });
///
/// var defaultRole = new Aws.Iam.Role("default", new()
/// {
/// Name = "iam_for_lambda_with_sns",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Sid"] = "",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "lambda.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var func = new Aws.Lambda.Function("func", new()
/// {
/// Code = new FileArchive("lambdatest.zip"),
/// Name = "lambda_called_from_sns",
/// Role = defaultRole.Arn,
/// Handler = "exports.handler",
/// Runtime = Aws.Lambda.Runtime.Python3d12,
/// });
///
/// var withSns = new Aws.Lambda.Permission("with_sns", new()
/// {
/// StatementId = "AllowExecutionFromSNS",
/// Action = "lambda:InvokeFunction",
/// Function = func.Name,
/// Principal = "sns.amazonaws.com",
/// SourceArn = @default.Arn,
/// });
///
/// var lambda = new Aws.Sns.TopicSubscription("lambda", new()
/// {
/// Topic = @default.Arn,
/// Protocol = "lambda",
/// Endpoint = func.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := sns.NewTopic(ctx, "default", &sns.TopicArgs{
/// Name: pulumi.String("call-lambda-maybe"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid":    "",
/// "Principal": map[string]interface{}{
/// "Service": "lambda.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// defaultRole, err := iam.NewRole(ctx, "default", &iam.RoleArgs{
/// Name:             pulumi.String("iam_for_lambda_with_sns"),
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _func, err := lambda.NewFunction(ctx, "func", &lambda.FunctionArgs{
/// Code:    pulumi.NewFileArchive("lambdatest.zip"),
/// Name:    pulumi.String("lambda_called_from_sns"),
/// Role:    defaultRole.Arn,
/// Handler: pulumi.String("exports.handler"),
/// Runtime: pulumi.String(lambda.RuntimePython3d12),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewPermission(ctx, "with_sns", &lambda.PermissionArgs{
/// StatementId: pulumi.String("AllowExecutionFromSNS"),
/// Action:      pulumi.String("lambda:InvokeFunction"),
/// Function:    _func.Name,
/// Principal:   pulumi.String("sns.amazonaws.com"),
/// SourceArn:   _default.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sns.NewTopicSubscription(ctx, "lambda", &sns.TopicSubscriptionArgs{
/// Topic:    _default.Arn,
/// Protocol: pulumi.String("lambda"),
/// Endpoint: _func.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import com.pulumi.aws.sns.TopicSubscription;
/// import com.pulumi.aws.sns.TopicSubscriptionArgs;
/// import com.pulumi.asset.FileArchive;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new Topic("default", TopicArgs.builder()
/// .name("call-lambda-maybe")
/// .build());
///
/// var defaultRole = new Role("defaultRole", RoleArgs.builder()
/// .name("iam_for_lambda_with_sns")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Sid", ""),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "lambda.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var func = new Function("func", FunctionArgs.builder()
/// .code(new FileArchive("lambdatest.zip"))
/// .name("lambda_called_from_sns")
/// .role(defaultRole.arn())
/// .handler("exports.handler")
/// .runtime("python3.12")
/// .build());
///
/// var withSns = new Permission("withSns", PermissionArgs.builder()
/// .statementId("AllowExecutionFromSNS")
/// .action("lambda:InvokeFunction")
/// .function(func.name())
/// .principal("sns.amazonaws.com")
/// .sourceArn(default_.arn())
/// .build());
///
/// var lambda = new TopicSubscription("lambda", TopicSubscriptionArgs.builder()
/// .topic(default_.arn())
/// .protocol("lambda")
/// .endpoint(func.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// withSns:
/// type: aws:lambda:Permission
/// name: with_sns
/// properties:
/// statementId: AllowExecutionFromSNS
/// action: lambda:InvokeFunction
/// function: ${func.name}
/// principal: sns.amazonaws.com
/// sourceArn: ${default.arn}
/// default:
/// type: aws:sns:Topic
/// properties:
/// name: call-lambda-maybe
/// lambda:
/// type: aws:sns:TopicSubscription
/// properties:
/// topic: ${default.arn}
/// protocol: lambda
/// endpoint: ${func.arn}
/// func:
/// type: aws:lambda:Function
/// properties:
/// code:
/// fn::FileArchive: lambdatest.zip
/// name: lambda_called_from_sns
/// role: ${defaultRole.arn}
/// handler: exports.handler
/// runtime: python3.12
/// defaultRole:
/// type: aws:iam:Role
/// name: default
/// properties:
/// name: iam_for_lambda_with_sns
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Sid: ""
/// Principal:
/// Service: lambda.amazonaws.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### API Gateway REST API Integration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myDemoAPI = new aws.apigateway.RestApi("MyDemoAPI", {
/// name: "MyDemoAPI",
/// description: "This is my API for demonstration purposes",
/// });
/// const lambdaPermission = new aws.lambda.Permission("lambda_permission", {
/// statementId: "AllowMyDemoAPIInvoke",
/// action: "lambda:InvokeFunction",
/// "function": "MyDemoFunction",
/// principal: "apigateway.amazonaws.com",
/// sourceArn: pulumi.interpolate`${myDemoAPI.executionArn}/*`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_demo_api = aws.apigateway.RestApi("MyDemoAPI",
/// name="MyDemoAPI",
/// description="This is my API for demonstration purposes")
/// lambda_permission = aws.lambda_.Permission("lambda_permission",
/// statement_id="AllowMyDemoAPIInvoke",
/// action="lambda:InvokeFunction",
/// function="MyDemoFunction",
/// principal="apigateway.amazonaws.com",
/// source_arn=my_demo_api.execution_arn.apply(lambda execution_arn: f"{execution_arn}/*"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myDemoAPI = new Aws.ApiGateway.RestApi("MyDemoAPI", new()
/// {
/// Name = "MyDemoAPI",
/// Description = "This is my API for demonstration purposes",
/// });
///
/// var lambdaPermission = new Aws.Lambda.Permission("lambda_permission", new()
/// {
/// StatementId = "AllowMyDemoAPIInvoke",
/// Action = "lambda:InvokeFunction",
/// Function = "MyDemoFunction",
/// Principal = "apigateway.amazonaws.com",
/// SourceArn = myDemoAPI.ExecutionArn.Apply(executionArn => $"{executionArn}/*"),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myDemoAPI, err := apigateway.NewRestApi(ctx, "MyDemoAPI", &apigateway.RestApiArgs{
/// Name:        pulumi.String("MyDemoAPI"),
/// Description: pulumi.String("This is my API for demonstration purposes"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewPermission(ctx, "lambda_permission", &lambda.PermissionArgs{
/// StatementId: pulumi.String("AllowMyDemoAPIInvoke"),
/// Action:      pulumi.String("lambda:InvokeFunction"),
/// Function:    pulumi.Any("MyDemoFunction"),
/// Principal:   pulumi.String("apigateway.amazonaws.com"),
/// SourceArn: myDemoAPI.ExecutionArn.ApplyT(func(executionArn string) (string, error) {
/// return fmt.Sprintf("%v/*", executionArn), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var myDemoAPI = new RestApi("myDemoAPI", RestApiArgs.builder()
/// .name("MyDemoAPI")
/// .description("This is my API for demonstration purposes")
/// .build());
///
/// var lambdaPermission = new Permission("lambdaPermission", PermissionArgs.builder()
/// .statementId("AllowMyDemoAPIInvoke")
/// .action("lambda:InvokeFunction")
/// .function("MyDemoFunction")
/// .principal("apigateway.amazonaws.com")
/// .sourceArn(myDemoAPI.executionArn().applyValue(_executionArn -> String.format("%s/*", _executionArn)))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myDemoAPI:
/// type: aws:apigateway:RestApi
/// name: MyDemoAPI
/// properties:
/// name: MyDemoAPI
/// description: This is my API for demonstration purposes
/// lambdaPermission:
/// type: aws:lambda:Permission
/// name: lambda_permission
/// properties:
/// statementId: AllowMyDemoAPIInvoke
/// action: lambda:InvokeFunction
/// function: MyDemoFunction
/// principal: apigateway.amazonaws.com
/// sourceArn: ${myDemoAPI.executionArn}/*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### CloudWatch Log Group Integration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.cloudwatch.LogGroup("default", {name: "/default"});
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["lambda.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const defaultRole = new aws.iam.Role("default", {
/// name: "iam_for_lambda_called_from_cloudwatch_logs",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const loggingFunction = new aws.lambda.Function("logging", {
/// code: new pulumi.asset.FileArchive("lamba_logging.zip"),
/// name: "lambda_called_from_cloudwatch_logs",
/// handler: "exports.handler",
/// role: defaultRole.arn,
/// runtime: aws.lambda.Runtime.Python3d12,
/// });
/// const logging = new aws.lambda.Permission("logging", {
/// action: "lambda:InvokeFunction",
/// "function": loggingFunction.name,
/// principal: "logs.eu-west-1.amazonaws.com",
/// sourceArn: pulumi.interpolate`${_default.arn}:*`,
/// });
/// const loggingLogSubscriptionFilter = new aws.cloudwatch.LogSubscriptionFilter("logging", {
/// destinationArn: loggingFunction.arn,
/// filterPattern: "",
/// logGroup: _default.name,
/// name: "logging_default",
/// }, {
/// dependsOn: [logging],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.cloudwatch.LogGroup("default", name="/default")
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["lambda.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// default_role = aws.iam.Role("default",
/// name="iam_for_lambda_called_from_cloudwatch_logs",
/// assume_role_policy=assume_role.json)
/// logging_function = aws.lambda_.Function("logging",
/// code=pulumi.FileArchive("lamba_logging.zip"),
/// name="lambda_called_from_cloudwatch_logs",
/// handler="exports.handler",
/// role=default_role.arn,
/// runtime=aws.lambda_.Runtime.PYTHON3D12)
/// logging = aws.lambda_.Permission("logging",
/// action="lambda:InvokeFunction",
/// function=logging_function.name,
/// principal="logs.eu-west-1.amazonaws.com",
/// source_arn=default.arn.apply(lambda arn: f"{arn}:*"))
/// logging_log_subscription_filter = aws.cloudwatch.LogSubscriptionFilter("logging",
/// destination_arn=logging_function.arn,
/// filter_pattern="",
/// log_group=default.name,
/// name="logging_default",
/// opts = pulumi.ResourceOptions(depends_on=[logging]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.CloudWatch.LogGroup("default", new()
/// {
/// Name = "/default",
/// });
///
/// var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "lambda.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// },
/// },
/// });
///
/// var defaultRole = new Aws.Iam.Role("default", new()
/// {
/// Name = "iam_for_lambda_called_from_cloudwatch_logs",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var loggingFunction = new Aws.Lambda.Function("logging", new()
/// {
/// Code = new FileArchive("lamba_logging.zip"),
/// Name = "lambda_called_from_cloudwatch_logs",
/// Handler = "exports.handler",
/// Role = defaultRole.Arn,
/// Runtime = Aws.Lambda.Runtime.Python3d12,
/// });
///
/// var logging = new Aws.Lambda.Permission("logging", new()
/// {
/// Action = "lambda:InvokeFunction",
/// Function = loggingFunction.Name,
/// Principal = "logs.eu-west-1.amazonaws.com",
/// SourceArn = @default.Arn.Apply(arn => $"{arn}:*"),
/// });
///
/// var loggingLogSubscriptionFilter = new Aws.CloudWatch.LogSubscriptionFilter("logging", new()
/// {
/// DestinationArn = loggingFunction.Arn,
/// FilterPattern = "",
/// LogGroup = @default.Name,
/// Name = "logging_default",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// logging,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := cloudwatch.NewLogGroup(ctx, "default", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("/default"),
/// })
/// if err != nil {
/// return err
/// }
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "lambda.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultRole, err := iam.NewRole(ctx, "default", &iam.RoleArgs{
/// Name:             pulumi.String("iam_for_lambda_called_from_cloudwatch_logs"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// loggingFunction, err := lambda.NewFunction(ctx, "logging", &lambda.FunctionArgs{
/// Code:    pulumi.NewFileArchive("lamba_logging.zip"),
/// Name:    pulumi.String("lambda_called_from_cloudwatch_logs"),
/// Handler: pulumi.String("exports.handler"),
/// Role:    defaultRole.Arn,
/// Runtime: pulumi.String(lambda.RuntimePython3d12),
/// })
/// if err != nil {
/// return err
/// }
/// logging, err := lambda.NewPermission(ctx, "logging", &lambda.PermissionArgs{
/// Action:    pulumi.String("lambda:InvokeFunction"),
/// Function:  loggingFunction.Name,
/// Principal: pulumi.String("logs.eu-west-1.amazonaws.com"),
/// SourceArn: _default.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v:*", arn), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewLogSubscriptionFilter(ctx, "logging", &cloudwatch.LogSubscriptionFilterArgs{
/// DestinationArn: loggingFunction.Arn,
/// FilterPattern:  pulumi.String(""),
/// LogGroup:       _default.Name,
/// Name:           pulumi.String("logging_default"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// logging,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import com.pulumi.aws.cloudwatch.LogSubscriptionFilter;
/// import com.pulumi.aws.cloudwatch.LogSubscriptionFilterArgs;
/// import com.pulumi.asset.FileArchive;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new LogGroup("default", LogGroupArgs.builder()
/// .name("/default")
/// .build());
///
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("lambda.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var defaultRole = new Role("defaultRole", RoleArgs.builder()
/// .name("iam_for_lambda_called_from_cloudwatch_logs")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// var loggingFunction = new Function("loggingFunction", FunctionArgs.builder()
/// .code(new FileArchive("lamba_logging.zip"))
/// .name("lambda_called_from_cloudwatch_logs")
/// .handler("exports.handler")
/// .role(defaultRole.arn())
/// .runtime("python3.12")
/// .build());
///
/// var logging = new Permission("logging", PermissionArgs.builder()
/// .action("lambda:InvokeFunction")
/// .function(loggingFunction.name())
/// .principal("logs.eu-west-1.amazonaws.com")
/// .sourceArn(default_.arn().applyValue(_arn -> String.format("%s:*", _arn)))
/// .build());
///
/// var loggingLogSubscriptionFilter = new LogSubscriptionFilter("loggingLogSubscriptionFilter", LogSubscriptionFilterArgs.builder()
/// .destinationArn(loggingFunction.arn())
/// .filterPattern("")
/// .logGroup(default_.name())
/// .name("logging_default")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(logging)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// logging:
/// type: aws:lambda:Permission
/// properties:
/// action: lambda:InvokeFunction
/// function: ${loggingFunction.name}
/// principal: logs.eu-west-1.amazonaws.com
/// sourceArn: ${default.arn}:*
/// default:
/// type: aws:cloudwatch:LogGroup
/// properties:
/// name: /default
/// loggingLogSubscriptionFilter:
/// type: aws:cloudwatch:LogSubscriptionFilter
/// name: logging
/// properties:
/// destinationArn: ${loggingFunction.arn}
/// filterPattern: ""
/// logGroup: ${default.name}
/// name: logging_default
/// options:
/// dependsOn:
/// - ${logging}
/// loggingFunction:
/// type: aws:lambda:Function
/// name: logging
/// properties:
/// code:
/// fn::FileArchive: lamba_logging.zip
/// name: lambda_called_from_cloudwatch_logs
/// handler: exports.handler
/// role: ${defaultRole.arn}
/// runtime: python3.12
/// defaultRole:
/// type: aws:iam:Role
/// name: default
/// properties:
/// name: iam_for_lambda_called_from_cloudwatch_logs
/// assumeRolePolicy: ${assumeRole.json}
/// variables:
/// assumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - lambda.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cross-Account Function URL Access
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const url = new aws.lambda.FunctionUrl("url", {
/// functionName: example.functionName,
/// authorizationType: "AWS_IAM",
/// });
/// const urlPermission = new aws.lambda.Permission("url", {
/// action: "lambda:InvokeFunctionUrl",
/// "function": example.functionName,
/// principal: "arn:aws:iam::444455556666:role/example",
/// sourceAccount: "444455556666",
/// functionUrlAuthType: "AWS_IAM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// url = aws.lambda_.FunctionUrl("url",
/// function_name=example["functionName"],
/// authorization_type="AWS_IAM")
/// url_permission = aws.lambda_.Permission("url",
/// action="lambda:InvokeFunctionUrl",
/// function=example["functionName"],
/// principal="arn:aws:iam::444455556666:role/example",
/// source_account="444455556666",
/// function_url_auth_type="AWS_IAM")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var url = new Aws.Lambda.FunctionUrl("url", new()
/// {
/// FunctionName = example.FunctionName,
/// AuthorizationType = "AWS_IAM",
/// });
///
/// var urlPermission = new Aws.Lambda.Permission("url", new()
/// {
/// Action = "lambda:InvokeFunctionUrl",
/// Function = example.FunctionName,
/// Principal = "arn:aws:iam::444455556666:role/example",
/// SourceAccount = "444455556666",
/// FunctionUrlAuthType = "AWS_IAM",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewFunctionUrl(ctx, "url", &lambda.FunctionUrlArgs{
/// FunctionName:      pulumi.Any(example.FunctionName),
/// AuthorizationType: pulumi.String("AWS_IAM"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewPermission(ctx, "url", &lambda.PermissionArgs{
/// Action:              pulumi.String("lambda:InvokeFunctionUrl"),
/// Function:            pulumi.Any(example.FunctionName),
/// Principal:           pulumi.String("arn:aws:iam::444455556666:role/example"),
/// SourceAccount:       pulumi.String("444455556666"),
/// FunctionUrlAuthType: pulumi.String("AWS_IAM"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.FunctionUrl;
/// import com.pulumi.aws.lambda.FunctionUrlArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var url = new FunctionUrl("url", FunctionUrlArgs.builder()
/// .functionName(example.functionName())
/// .authorizationType("AWS_IAM")
/// .build());
///
/// var urlPermission = new Permission("urlPermission", PermissionArgs.builder()
/// .action("lambda:InvokeFunctionUrl")
/// .function(example.functionName())
/// .principal("arn:aws:iam::444455556666:role/example")
/// .sourceAccount("444455556666")
/// .functionUrlAuthType("AWS_IAM")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// url:
/// type: aws:lambda:FunctionUrl
/// properties:
/// functionName: ${example.functionName}
/// authorizationType: AWS_IAM
/// urlPermission:
/// type: aws:lambda:Permission
/// name: url
/// properties:
/// action: lambda:InvokeFunctionUrl
/// function: ${example.functionName}
/// principal: arn:aws:iam::444455556666:role/example
/// sourceAccount: '444455556666'
/// functionUrlAuthType: AWS_IAM
/// ```
/// <!--End PulumiCodeChooser -->
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`qualifier`" pulumi-lang-dotnet="`Qualifier`" pulumi-lang-go="`qualifier`" pulumi-lang-python="`qualifier`" pulumi-lang-yaml="`qualifier`" pulumi-lang-java="`qualifier`">`qualifier`</span> (String) Qualifier for the function version or alias.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using <span pulumi-lang-nodejs="`qualifier`" pulumi-lang-dotnet="`Qualifier`" pulumi-lang-go="`qualifier`" pulumi-lang-python="`qualifier`" pulumi-lang-yaml="`qualifier`" pulumi-lang-java="`qualifier`">`qualifier`</span>:
///
///
/// For backwards compatibility, the following legacy `pulumi import` commands are also supported:
///
/// ```sh
/// $ pulumi import aws:lambda/permission:Permission example my_test_lambda_function/AllowExecutionFromCloudWatch
/// $ pulumi import aws:lambda/permission:Permission example my_test_lambda_function:qualifier_name/AllowExecutionFromCloudWatch
/// ```
class Permission2 extends CustomResource {
  /// Lambda action to allow in this statement (e.g., `lambda:InvokeFunction`)
  late final Output<String> action;

  /// Event Source Token for Alexa Skills
  late final Output<String?> eventSourceToken;

  /// Name or ARN of the Lambda function
  late final Output<String> function;

  /// Lambda Function URL authentication type. Valid values: `AWS_IAM` or `NONE`. Only valid with `lambda:InvokeFunctionUrl` action
  late final Output<String?> functionUrlAuthType;

  /// Lambda Function URL invoke permission. Only valid with `lambda:InvokeFunction` action
  late final Output<bool?> invokedViaFunctionUrl;

  /// AWS service or account that invokes the function (e.g., `s3.amazonaws.com`, `sns.amazonaws.com`, AWS account ID, or AWS IAM principal)
  ///
  /// The following arguments are optional:
  late final Output<String> principal;

  /// AWS Organizations ID to grant permission to all accounts under this organization
  late final Output<String?> principalOrgId;

  /// Lambda function version or alias name
  late final Output<String?> qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  late final Output<String> region;

  /// AWS account ID of the source owner for cross-account access, S3, or SES
  late final Output<String?> sourceAccount;

  /// ARN of the source resource granting permission to invoke the Lambda function
  late final Output<String?> sourceArn;

  /// Statement identifier. Generated by Pulumi if not provided
  late final Output<String> statementId;

  /// Statement identifier prefix. Conflicts with <span pulumi-lang-nodejs="`statementId`" pulumi-lang-dotnet="`StatementId`" pulumi-lang-go="`statementId`" pulumi-lang-python="`statement_id`" pulumi-lang-yaml="`statementId`" pulumi-lang-java="`statementId`">`statement_id`</span>
  late final Output<String> statementIdPrefix;

  Permission2(
    String name, {
    PermissionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/permission:Permission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = Output.createUnknown<String>();
    this.eventSourceToken = Output.createUnknown<String?>();
    this.function = Output.createUnknown<String>();
    this.functionUrlAuthType = Output.createUnknown<String?>();
    this.invokedViaFunctionUrl = Output.createUnknown<bool?>();
    this.principal = Output.createUnknown<String>();
    this.principalOrgId = Output.createUnknown<String?>();
    this.qualifier = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.sourceAccount = Output.createUnknown<String?>();
    this.sourceArn = Output.createUnknown<String?>();
    this.statementId = Output.createUnknown<String>();
    this.statementIdPrefix = Output.createUnknown<String>();
  }
}
