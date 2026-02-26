import 'package:pulumi/pulumi.dart';
import 'role_policy_args.dart';

/// Provides an IAM role inline policy.
///
/// > **NOTE:** For a given role, this resource is incompatible with using the <span pulumi-lang-nodejs="`aws.iam.Role`" pulumi-lang-dotnet="`aws.iam.Role`" pulumi-lang-go="`iam.Role`" pulumi-lang-python="`iam.Role`" pulumi-lang-yaml="`aws.iam.Role`" pulumi-lang-java="`aws.iam.Role`">`aws.iam.Role`</span> resource <span pulumi-lang-nodejs="`inlinePolicy`" pulumi-lang-dotnet="`InlinePolicy`" pulumi-lang-go="`inlinePolicy`" pulumi-lang-python="`inline_policy`" pulumi-lang-yaml="`inlinePolicy`" pulumi-lang-java="`inlinePolicy`">`inline_policy`</span> argument. When using that argument and this resource, both will attempt to manage the role's inline policies and the provider will show a permanent difference.
///
/// > **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span>. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testRole = new aws.iam.Role("test_role", {
/// name: "test_role",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Sid: "",
/// Principal: {
/// Service: "ec2.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const testPolicy = new aws.iam.RolePolicy("test_policy", {
/// name: "test_policy",
/// role: testRole.id,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: ["ec2:Describe*"],
/// Effect: "Allow",
/// Resource: "*",
/// }],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test_role = aws.iam.Role("test_role",
/// name="test_role",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid": "",
/// "Principal": {
/// "Service": "ec2.amazonaws.com",
/// },
/// }],
/// }))
/// test_policy = aws.iam.RolePolicy("test_policy",
/// name="test_policy",
/// role=test_role.id,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": ["ec2:Describe*"],
/// "Effect": "Allow",
/// "Resource": "*",
/// }],
/// }))
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
/// var testRole = new Aws.Iam.Role("test_role", new()
/// {
/// Name = "test_role",
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
/// ["Service"] = "ec2.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var testPolicy = new Aws.Iam.RolePolicy("test_policy", new()
/// {
/// Name = "test_policy",
/// Role = testRole.Id,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "ec2:Describe*",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = "*",
/// },
/// },
/// }),
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
/// "Service": "ec2.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// testRole, err := iam.NewRole(ctx, "test_role", &iam.RoleArgs{
/// Name:             pulumi.String("test_role"),
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "ec2:Describe*",
/// },
/// "Effect":   "Allow",
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json1 := string(tmpJSON1)
/// _, err = iam.NewRolePolicy(ctx, "test_policy", &iam.RolePolicyArgs{
/// Name:   pulumi.String("test_policy"),
/// Role:   testRole.ID(),
/// Policy: pulumi.String(json1),
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
/// var testRole = new Role("testRole", RoleArgs.builder()
/// .name("test_role")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Sid", ""),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "ec2.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var testPolicy = new RolePolicy("testPolicy", RolePolicyArgs.builder()
/// .name("test_policy")
/// .role(testRole.id())
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", jsonArray("ec2:Describe*")),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", "*")
/// )))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testPolicy:
/// type: aws:iam:RolePolicy
/// name: test_policy
/// properties:
/// name: test_policy
/// role: ${testRole.id}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - ec2:Describe*
/// Effect: Allow
/// Resource: '*'
/// testRole:
/// type: aws:iam:Role
/// name: test_role
/// properties:
/// name: test_role
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Sid: ""
/// Principal:
/// Service: ec2.amazonaws.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span> (String) Name of the IAM role.
/// * <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> (String) Name of the role policy.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import IAM Role Policies using the `role_name:role_policy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/rolePolicy:RolePolicy example role_of_mypolicy_name:mypolicy_name
/// ```
class RolePolicy extends CustomResource {
  /// The name of the role policy.
  /// If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix.
  /// Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// The inline policy document.
  /// This is a JSON formatted string.
  /// For more information about building IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide
  late final Output<String> policy;

  /// The name of the IAM role to attach to the policy.
  late final Output<String> role;

  RolePolicy(
    String name, {
    RolePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/rolePolicy:RolePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String>();
    this.role = Output.createUnknown<String>();
  }
}
