import 'package:pulumi/pulumi.dart';
import 'get_principal_policy_simulation_args.dart';
import 'get_principal_policy_simulation_result2.dart';

/// Runs a simulation of the IAM policies of a particular principal against a given hypothetical request.
///
/// You can use this data source in conjunction with
/// Preconditions and Postconditions so that your configuration can test either whether it should have sufficient access to do its own work, or whether policies your configuration declares itself are sufficient for their intended use elsewhere.
///
/// > **Note:** Correctly using this data source requires familiarity with various details of AWS Identity and Access Management, and how various AWS services integrate with it. For general information on the AWS IAM policy simulator, see [Testing IAM policies with the IAM policy simulator](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html). This data source wraps the `iam:SimulatePrincipalPolicy` API action described on that page.
///
/// ## Example Usage
///
/// ### Self Access-checking Example
///
/// The following example raises an error if the credentials passed to the AWS provider do not have access to perform the three actions `s3:GetObject`, `s3:PutObject`, and `s3:DeleteObject` on the S3 bucket with the given ARN.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const s3ObjectAccess = current.then(current => aws.iam.getPrincipalPolicySimulation({
/// actionNames: [
/// "s3:GetObject",
/// "s3:PutObject",
/// "s3:DeleteObject",
/// ],
/// policySourceArn: current.arn,
/// resourceArns: ["arn:aws:s3:::my-test-bucket"],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// s3_object_access = aws.iam.get_principal_policy_simulation(action_names=[
/// "s3:GetObject",
/// "s3:PutObject",
/// "s3:DeleteObject",
/// ],
/// policy_source_arn=current.arn,
/// resource_arns=["arn:aws:s3:::my-test-bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var s3ObjectAccess = Aws.Iam.GetPrincipalPolicySimulation.Invoke(new()
/// {
/// ActionNames = new[]
/// {
/// "s3:GetObject",
/// "s3:PutObject",
/// "s3:DeleteObject",
/// },
/// PolicySourceArn = current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
/// ResourceArns = new[]
/// {
/// "arn:aws:s3:::my-test-bucket",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.LookupPrincipalPolicySimulation(ctx, &iam.LookupPrincipalPolicySimulationArgs{
/// ActionNames: []string{
/// "s3:GetObject",
/// "s3:PutObject",
/// "s3:DeleteObject",
/// },
/// PolicySourceArn: current.Arn,
/// ResourceArns: []string{
/// "arn:aws:s3:::my-test-bucket",
/// },
/// }, nil)
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPrincipalPolicySimulationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var s3ObjectAccess = IamFunctions.getPrincipalPolicySimulation(GetPrincipalPolicySimulationArgs.builder()
/// .actionNames(
/// "s3:GetObject",
/// "s3:PutObject",
/// "s3:DeleteObject")
/// .policySourceArn(current.arn())
/// .resourceArns("arn:aws:s3:::my-test-bucket")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// s3ObjectAccess:
/// fn::invoke:
/// function: aws:iam:getPrincipalPolicySimulation
/// arguments:
/// actionNames:
/// - s3:GetObject
/// - s3:PutObject
/// - s3:DeleteObject
/// policySourceArn: ${current.arn}
/// resourceArns:
/// - arn:aws:s3:::my-test-bucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// If you intend to use this data source to quickly raise an error when the given credentials are insufficient then you must use <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> inside any resource which would require those credentials, to ensure that the policy check will run first:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketObjectv2("example", {bucket: "my-test-bucket"}, {
/// dependsOn: [s3ObjectAccess],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketObjectv2("example", bucket="my-test-bucket",
/// opts = pulumi.ResourceOptions(depends_on=[s3_object_access]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.BucketObjectv2("example", new()
/// {
/// Bucket = "my-test-bucket",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// s3ObjectAccess,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// Bucket: pulumi.Any("my-test-bucket"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// s3ObjectAccess,
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
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
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
/// var example = new BucketObjectv2("example", BucketObjectv2Args.builder()
/// .bucket("my-test-bucket")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(s3ObjectAccess)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:BucketObjectv2
/// properties:
/// bucket: my-test-bucket
/// options:
/// dependsOn:
/// - ${s3ObjectAccess}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Testing the Effect of a Declared Policy
///
/// The following example declares an S3 bucket and a user that should have access to the bucket, and then uses <span pulumi-lang-nodejs="`aws.iam.getPrincipalPolicySimulation`" pulumi-lang-dotnet="`aws.iam.getPrincipalPolicySimulation`" pulumi-lang-go="`iam.getPrincipalPolicySimulation`" pulumi-lang-python="`iam_get_principal_policy_simulation`" pulumi-lang-yaml="`aws.iam.getPrincipalPolicySimulation`" pulumi-lang-java="`aws.iam.getPrincipalPolicySimulation`">`aws.iam.getPrincipalPolicySimulation`</span> to verify that the user does indeed have access to perform needed operations against the bucket.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.iam.User("example", {name: "example"});
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "my-test-bucket"});
/// const s3Access = new aws.iam.UserPolicy("s3_access", {
/// name: "example_s3_access",
/// user: example.name,
/// policy: pulumi.jsonStringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "s3:GetObject",
/// Effect: "Allow",
/// Resource: exampleBucket.arn,
/// }],
/// }),
/// });
/// const accountAccess = new aws.s3.BucketPolicy("account_access", {
/// bucket: exampleBucket.bucket,
/// policy: pulumi.jsonStringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "s3:*",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => current.accountId),
/// },
/// Resource: [
/// exampleBucket.arn,
/// pulumi.interpolate`${exampleBucket.arn}/*`,
/// ],
/// }],
/// }),
/// });
/// const s3ObjectAccess = aws.iam.getPrincipalPolicySimulationOutput({
/// actionNames: ["s3:GetObject"],
/// policySourceArn: example.arn,
/// resourceArns: [exampleBucket.arn],
/// resourcePolicyJson: accountAccess.policy,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.iam.User("example", name="example")
/// example_bucket = aws.s3.Bucket("example", bucket="my-test-bucket")
/// s3_access = aws.iam.UserPolicy("s3_access",
/// name="example_s3_access",
/// user=example.name,
/// policy=pulumi.Output.json_dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "s3:GetObject",
/// "Effect": "Allow",
/// "Resource": example_bucket.arn,
/// }],
/// }))
/// account_access = aws.s3.BucketPolicy("account_access",
/// bucket=example_bucket.bucket,
/// policy=pulumi.Output.json_dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "s3:*",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": current.account_id,
/// },
/// "Resource": [
/// example_bucket.arn,
/// example_bucket.arn.apply(lambda arn: f"{arn}/*"),
/// ],
/// }],
/// }))
/// s3_object_access = aws.iam.get_principal_policy_simulation_output(action_names=["s3:GetObject"],
/// policy_source_arn=example.arn,
/// resource_arns=[example_bucket.arn],
/// resource_policy_json=account_access.policy)
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
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = new Aws.Iam.User("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleBucket = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "my-test-bucket",
/// });
///
/// var s3Access = new Aws.Iam.UserPolicy("s3_access", new()
/// {
/// Name = "example_s3_access",
/// User = example.Name,
/// Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "s3:GetObject",
/// ["Effect"] = "Allow",
/// ["Resource"] = exampleBucket.Arn,
/// },
/// },
/// })),
/// });
///
/// var accountAccess = new Aws.S3.BucketPolicy("account_access", new()
/// {
/// Bucket = exampleBucket.BucketName,
/// Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "s3:*",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// ["Resource"] = new[]
/// {
/// exampleBucket.Arn,
/// exampleBucket.Arn.Apply(arn => $"{arn}/*"),
/// },
/// },
/// },
/// })),
/// });
///
/// var s3ObjectAccess = Aws.Iam.GetPrincipalPolicySimulation.Invoke(new()
/// {
/// ActionNames = new[]
/// {
/// "s3:GetObject",
/// },
/// PolicySourceArn = example.Arn,
/// ResourceArns = new[]
/// {
/// exampleBucket.Arn,
/// },
/// ResourcePolicyJson = accountAccess.Policy,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := iam.NewUser(ctx, "example", &iam.UserArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("my-test-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewUserPolicy(ctx, "s3_access", &iam.UserPolicyArgs{
/// Name: pulumi.String("example_s3_access"),
/// User: example.Name,
/// Policy: exampleBucket.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// var _zero pulumi.String
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action":   "s3:GetObject",
/// "Effect":   "Allow",
/// "Resource": arn,
/// },
/// },
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json0 := string(tmpJSON0)
/// return pulumi.String(json0), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// accountAccess, err := s3.NewBucketPolicy(ctx, "account_access", &s3.BucketPolicyArgs{
/// Bucket: exampleBucket.Bucket,
/// Policy: pulumi.All(exampleBucket.Arn, exampleBucket.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// exampleBucketArn := _args[0].(string)
/// exampleBucketArn1 := _args[1].(string)
/// var _zero string
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "s3:*",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": current.AccountId,
/// },
/// "Resource": []string{
/// exampleBucketArn,
/// fmt.Sprintf("%v/*", exampleBucketArn1),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json1 := string(tmpJSON1)
/// return json1, nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _ = iam.LookupPrincipalPolicySimulationOutput(ctx, iam.GetPrincipalPolicySimulationOutputArgs{
/// ActionNames: pulumi.StringArray{
/// pulumi.String("s3:GetObject"),
/// },
/// PolicySourceArn: example.Arn,
/// ResourceArns: pulumi.StringArray{
/// exampleBucket.Arn,
/// },
/// ResourcePolicyJson: accountAccess.Policy,
/// }, nil)
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.UserPolicy;
/// import com.pulumi.aws.iam.UserPolicyArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPrincipalPolicySimulationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var example = new User("example", UserArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
/// .bucket("my-test-bucket")
/// .build());
///
/// var s3Access = new UserPolicy("s3Access", UserPolicyArgs.builder()
/// .name("example_s3_access")
/// .user(example.name())
/// .policy(exampleBucket.arn().applyValue(_arn -> serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "s3:GetObject"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", _arn)
/// )))
/// ))))
/// .build());
///
/// var accountAccess = new BucketPolicy("accountAccess", BucketPolicyArgs.builder()
/// .bucket(exampleBucket.bucket())
/// .policy(Output.tuple(exampleBucket.arn(), exampleBucket.arn()).applyValue(values -> {
/// var exampleBucketArn = values.t1;
/// var exampleBucketArn1 = values.t2;
/// return serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "s3:*"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", current.accountId())
/// )),
/// jsonProperty("Resource", jsonArray(
/// exampleBucketArn,
/// String.format("%s/*", exampleBucketArn1)
/// ))
/// )))
/// ));
/// }))
/// .build());
///
/// final var s3ObjectAccess = IamFunctions.getPrincipalPolicySimulation(GetPrincipalPolicySimulationArgs.builder()
/// .actionNames("s3:GetObject")
/// .policySourceArn(example.arn())
/// .resourceArns(exampleBucket.arn())
/// .resourcePolicyJson(accountAccess.policy())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:User
/// properties:
/// name: example
/// exampleBucket:
/// type: aws:s3:Bucket
/// name: example
/// properties:
/// bucket: my-test-bucket
/// s3Access:
/// type: aws:iam:UserPolicy
/// name: s3_access
/// properties:
/// name: example_s3_access
/// user: ${example.name}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: s3:GetObject
/// Effect: Allow
/// Resource: ${exampleBucket.arn}
/// accountAccess:
/// type: aws:s3:BucketPolicy
/// name: account_access
/// properties:
/// bucket: ${exampleBucket.bucket}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: s3:*
/// Effect: Allow
/// Principal:
/// AWS: ${current.accountId}
/// Resource:
/// - ${exampleBucket.arn}
/// - ${exampleBucket.arn}/*
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// s3ObjectAccess:
/// fn::invoke:
/// function: aws:iam:getPrincipalPolicySimulation
/// arguments:
/// actionNames:
/// - s3:GetObject
/// policySourceArn: ${example.arn}
/// resourceArns:
/// - ${exampleBucket.arn}
/// resourcePolicyJson: ${accountAccess.policy}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// When using <span pulumi-lang-nodejs="`aws.iam.getPrincipalPolicySimulation`" pulumi-lang-dotnet="`aws.iam.getPrincipalPolicySimulation`" pulumi-lang-go="`iam.getPrincipalPolicySimulation`" pulumi-lang-python="`iam_get_principal_policy_simulation`" pulumi-lang-yaml="`aws.iam.getPrincipalPolicySimulation`" pulumi-lang-java="`aws.iam.getPrincipalPolicySimulation`">`aws.iam.getPrincipalPolicySimulation`</span> to test the effect of a policy declared elsewhere in the same configuration, it's important to use <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> to make sure that the needed policy has been fully created or updated before running the simulation.
Future<GetPrincipalPolicySimulationResult2> getPrincipalPolicySimulation(
  GetPrincipalPolicySimulationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getPrincipalPolicySimulation:getPrincipalPolicySimulation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrincipalPolicySimulationResult2.fromMap(result);
}
