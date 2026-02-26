import 'package:pulumi/pulumi.dart';
import 'user_policy_args.dart';

/// Provides an IAM policy attached to a user.
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
/// const lb = new aws.iam.User("lb", {
/// name: "loadbalancer",
/// path: "/system/",
/// });
/// const lbRo = new aws.iam.UserPolicy("lb_ro", {
/// name: "test",
/// user: lb.name,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: ["ec2:Describe*"],
/// Effect: "Allow",
/// Resource: "*",
/// }],
/// }),
/// });
/// const lbAccessKey = new aws.iam.AccessKey("lb", {user: lb.name});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// lb = aws.iam.User("lb",
/// name="loadbalancer",
/// path="/system/")
/// lb_ro = aws.iam.UserPolicy("lb_ro",
/// name="test",
/// user=lb.name,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": ["ec2:Describe*"],
/// "Effect": "Allow",
/// "Resource": "*",
/// }],
/// }))
/// lb_access_key = aws.iam.AccessKey("lb", user=lb.name)
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
/// var lb = new Aws.Iam.User("lb", new()
/// {
/// Name = "loadbalancer",
/// Path = "/system/",
/// });
///
/// var lbRo = new Aws.Iam.UserPolicy("lb_ro", new()
/// {
/// Name = "test",
/// User = lb.Name,
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
/// var lbAccessKey = new Aws.Iam.AccessKey("lb", new()
/// {
/// User = lb.Name,
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
/// lb, err := iam.NewUser(ctx, "lb", &iam.UserArgs{
/// Name: pulumi.String("loadbalancer"),
/// Path: pulumi.String("/system/"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
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
/// json0 := string(tmpJSON0)
/// _, err = iam.NewUserPolicy(ctx, "lb_ro", &iam.UserPolicyArgs{
/// Name:   pulumi.String("test"),
/// User:   lb.Name,
/// Policy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewAccessKey(ctx, "lb", &iam.AccessKeyArgs{
/// User: lb.Name,
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
/// import com.pulumi.aws.iam.AccessKey;
/// import com.pulumi.aws.iam.AccessKeyArgs;
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
/// var lb = new User("lb", UserArgs.builder()
/// .name("loadbalancer")
/// .path("/system/")
/// .build());
///
/// var lbRo = new UserPolicy("lbRo", UserPolicyArgs.builder()
/// .name("test")
/// .user(lb.name())
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
/// var lbAccessKey = new AccessKey("lbAccessKey", AccessKeyArgs.builder()
/// .user(lb.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// lbRo:
/// type: aws:iam:UserPolicy
/// name: lb_ro
/// properties:
/// name: test
/// user: ${lb.name}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - ec2:Describe*
/// Effect: Allow
/// Resource: '*'
/// lb:
/// type: aws:iam:User
/// properties:
/// name: loadbalancer
/// path: /system/
/// lbAccessKey:
/// type: aws:iam:AccessKey
/// name: lb
/// properties:
/// user: ${lb.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM User Policies using the `user_name:user_policy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPolicy:UserPolicy mypolicy user_of_mypolicy_name:mypolicy_name
/// ```
class UserPolicy extends CustomResource {
  /// The name of the policy. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// The policy document. This is a JSON formatted string.
  late final Output<String> policy;

  /// IAM user to which to attach this policy.
  late final Output<String> user;

  UserPolicy(
    String name, {
    UserPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicy:UserPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.policy = registerOutput<String>('policy');
    this.user = registerOutput<String>('user');
  }
}
