import 'package:pulumi/pulumi.dart';
import 'pull_time_update_exclusion_args.dart';

/// Manages an AWS ECR (Elastic Container Registry) Pull Time Update Exclusion.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.Role("example", {
/// name: "example-role",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Principal: {
/// Service: "ec2.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
/// name: "example-role-policy",
/// role: example.id,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Effect: "Allow",
/// Action: [
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// ],
/// Resource: "*",
/// }],
/// }),
/// });
/// const examplePullTimeUpdateExclusion = new aws.ecr.PullTimeUpdateExclusion("example", {principalArn: example.arn});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
/// name="example-role",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "ec2.amazonaws.com",
/// },
/// }],
/// }))
/// example_role_policy = aws.iam.RolePolicy("example",
/// name="example-role-policy",
/// role=example.id,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Effect": "Allow",
/// "Action": [
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// ],
/// "Resource": "*",
/// }],
/// }))
/// example_pull_time_update_exclusion = aws.ecr.PullTimeUpdateExclusion("example", principal_arn=example.arn)
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
/// var example = new Aws.Iam.Role("example", new()
/// {
/// Name = "example-role",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "ec2.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
/// {
/// Name = "example-role-policy",
/// Role = example.Id,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Effect"] = "Allow",
/// ["Action"] = new[]
/// {
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// },
/// ["Resource"] = "*",
/// },
/// },
/// }),
/// });
///
/// var examplePullTimeUpdateExclusion = new Aws.Ecr.PullTimeUpdateExclusion("example", new()
/// {
/// PrincipalArn = example.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
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
/// "Principal": map[string]interface{}{
/// "Service": "ec2.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("example-role"),
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Effect": "Allow",
/// "Action": []string{
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// },
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json1 := string(tmpJSON1)
/// _, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// Name:   pulumi.String("example-role-policy"),
/// Role:   example.ID(),
/// Policy: pulumi.String(json1),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecr.NewPullTimeUpdateExclusion(ctx, "example", &ecr.PullTimeUpdateExclusionArgs{
/// PrincipalArn: example.Arn,
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
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.ecr.PullTimeUpdateExclusion;
/// import com.pulumi.aws.ecr.PullTimeUpdateExclusionArgs;
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
/// var example = new Role("example", RoleArgs.builder()
/// .name("example-role")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "ec2.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
/// .name("example-role-policy")
/// .role(example.id())
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Action", jsonArray(
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage"
/// )),
/// jsonProperty("Resource", "*")
/// )))
/// )))
/// .build());
///
/// var examplePullTimeUpdateExclusion = new PullTimeUpdateExclusion("examplePullTimeUpdateExclusion", PullTimeUpdateExclusionArgs.builder()
/// .principalArn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:Role
/// properties:
/// name: example-role
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Principal:
/// Service: ec2.amazonaws.com
/// exampleRolePolicy:
/// type: aws:iam:RolePolicy
/// name: example
/// properties:
/// name: example-role-policy
/// role: ${example.id}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Effect: Allow
/// Action:
/// - ecr:GetAuthorizationToken
/// - ecr:BatchCheckLayerAvailability
/// - ecr:GetDownloadUrlForLayer
/// - ecr:BatchGetImage
/// Resource: '*'
/// examplePullTimeUpdateExclusion:
/// type: aws:ecr:PullTimeUpdateExclusion
/// name: example
/// properties:
/// principalArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With IAM User
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.User("example", {name: "example-user"});
/// const exampleUserPolicy = new aws.iam.UserPolicy("example", {
/// name: "example-user-policy",
/// user: example.name,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Effect: "Allow",
/// Action: [
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// ],
/// Resource: "*",
/// }],
/// }),
/// });
/// const examplePullTimeUpdateExclusion = new aws.ecr.PullTimeUpdateExclusion("example", {principalArn: example.arn});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.User("example", name="example-user")
/// example_user_policy = aws.iam.UserPolicy("example",
/// name="example-user-policy",
/// user=example.name,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Effect": "Allow",
/// "Action": [
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// ],
/// "Resource": "*",
/// }],
/// }))
/// example_pull_time_update_exclusion = aws.ecr.PullTimeUpdateExclusion("example", principal_arn=example.arn)
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
/// var example = new Aws.Iam.User("example", new()
/// {
/// Name = "example-user",
/// });
///
/// var exampleUserPolicy = new Aws.Iam.UserPolicy("example", new()
/// {
/// Name = "example-user-policy",
/// User = example.Name,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Effect"] = "Allow",
/// ["Action"] = new[]
/// {
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// },
/// ["Resource"] = "*",
/// },
/// },
/// }),
/// });
///
/// var examplePullTimeUpdateExclusion = new Aws.Ecr.PullTimeUpdateExclusion("example", new()
/// {
/// PrincipalArn = example.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iam.NewUser(ctx, "example", &iam.UserArgs{
/// Name: pulumi.String("example-user"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Effect": "Allow",
/// "Action": []string{
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage",
/// },
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = iam.NewUserPolicy(ctx, "example", &iam.UserPolicyArgs{
/// Name:   pulumi.String("example-user-policy"),
/// User:   example.Name,
/// Policy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecr.NewPullTimeUpdateExclusion(ctx, "example", &ecr.PullTimeUpdateExclusionArgs{
/// PrincipalArn: example.Arn,
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
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.iam.UserPolicy;
/// import com.pulumi.aws.iam.UserPolicyArgs;
/// import com.pulumi.aws.ecr.PullTimeUpdateExclusion;
/// import com.pulumi.aws.ecr.PullTimeUpdateExclusionArgs;
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
/// var example = new User("example", UserArgs.builder()
/// .name("example-user")
/// .build());
///
/// var exampleUserPolicy = new UserPolicy("exampleUserPolicy", UserPolicyArgs.builder()
/// .name("example-user-policy")
/// .user(example.name())
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Action", jsonArray(
/// "ecr:GetAuthorizationToken",
/// "ecr:BatchCheckLayerAvailability",
/// "ecr:GetDownloadUrlForLayer",
/// "ecr:BatchGetImage"
/// )),
/// jsonProperty("Resource", "*")
/// )))
/// )))
/// .build());
///
/// var examplePullTimeUpdateExclusion = new PullTimeUpdateExclusion("examplePullTimeUpdateExclusion", PullTimeUpdateExclusionArgs.builder()
/// .principalArn(example.arn())
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
/// name: example-user
/// exampleUserPolicy:
/// type: aws:iam:UserPolicy
/// name: example
/// properties:
/// name: example-user-policy
/// user: ${example.name}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Effect: Allow
/// Action:
/// - ecr:GetAuthorizationToken
/// - ecr:BatchCheckLayerAvailability
/// - ecr:GetDownloadUrlForLayer
/// - ecr:BatchGetImage
/// Resource: '*'
/// examplePullTimeUpdateExclusion:
/// type: aws:ecr:PullTimeUpdateExclusion
/// name: example
/// properties:
/// principalArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ECR (Elastic Container Registry) Pull Time Update Exclusion using the <span pulumi-lang-nodejs="`principalArn`" pulumi-lang-dotnet="`PrincipalArn`" pulumi-lang-go="`principalArn`" pulumi-lang-python="`principal_arn`" pulumi-lang-yaml="`principalArn`" pulumi-lang-java="`principalArn`">`principal_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/pullTimeUpdateExclusion:PullTimeUpdateExclusion example arn:aws:iam::123456789012:role/example-role
/// ```
class PullTimeUpdateExclusion extends CustomResource {
  /// ARN of the IAM principal to exclude from having image pull times recorded.
  ///
  /// The following arguments are optional:
  late final Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PullTimeUpdateExclusion(
    String name, {
    PullTimeUpdateExclusionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/pullTimeUpdateExclusion:PullTimeUpdateExclusion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.principalArn = registerOutput<String>('principalArn');
    this.region = registerOutput<String>('region');
  }
}
