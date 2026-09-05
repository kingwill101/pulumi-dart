import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_policy_args.dart';
import 'user_policy_state.dart';

/// Provides an IAM policy attached to a user.
///
/// &gt; **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lb = new aws.iam.User("lb", {
///     name: "loadbalancer",
///     path: "/system/",
/// });
/// const lbRo = new aws.iam.UserPolicy("lb_ro", {
///     name: "test",
///     user: lb.name,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: ["ec2:Describe*"],
///             Effect: "Allow",
///             Resource: "*",
///         }],
///     }),
/// });
/// const lbAccessKey = new aws.iam.AccessKey("lb", {user: lb.name});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// lb = aws.iam.User("lb",
///     name="loadbalancer",
///     path="/system/")
/// lb_ro = aws.iam.UserPolicy("lb_ro",
///     name="test",
///     user=lb.name,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": ["ec2:Describe*"],
///             "Effect": "Allow",
///             "Resource": "*",
///         }],
///     }))
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
///     var lb = new Aws.Iam.User("lb", new()
///     {
///         Name = "loadbalancer",
///         Path = "/system/",
///     });
///
///     var lbRo = new Aws.Iam.UserPolicy("lb_ro", new()
///     {
///         Name = "test",
///         User = lb.Name,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "ec2:Describe*",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     var lbAccessKey = new Aws.Iam.AccessKey("lb", new()
///     {
///         User = lb.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		lb, err := iam.NewUser(ctx, "lb", &iam.UserArgs{
/// 			Name: pulumi.String("loadbalancer"),
/// 			Path: pulumi.String("/system/"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"ec2:Describe*",
/// 					},
/// 					"Effect":   "Allow",
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = iam.NewUserPolicy(ctx, "lb_ro", &iam.UserPolicyArgs{
/// 			Name:   pulumi.String("test"),
/// 			User:   lb.Name,
/// 			Policy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewAccessKey(ctx, "lb", &iam.AccessKeyArgs{
/// 			User: lb.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_iam_userpolicy" "lb_ro" {
///   name = "test"
///   user = aws_iam_user.lb.name
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action"   = ["ec2:Describe*"]
///       "Effect"   = "Allow"
///       "Resource" = "*"
///     }]
///   })
/// }
/// resource "aws_iam_user" "lb" {
///   name = "loadbalancer"
///   path = "/system/"
/// }
/// resource "aws_iam_accesskey" "lb" {
///   user = aws_iam_user.lb.name
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var lb = new User("lb", UserArgs.builder()
///             .name("loadbalancer")
///             .path("/system/")
///             .build());
///
///         var lbRo = new UserPolicy("lbRo", UserPolicyArgs.builder()
///             .name("test")
///             .user(lb.name())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray("ec2:Describe*")),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///         var lbAccessKey = new AccessKey("lbAccessKey", AccessKeyArgs.builder()
///             .user(lb.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lbRo:
///     type: aws:iam:UserPolicy
///     name: lb_ro
///     properties:
///       name: test
///       user: ${lb.name}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - ec2:Describe*
///               Effect: Allow
///               Resource: '*'
///   lb:
///     type: aws:iam:User
///     properties:
///       name: loadbalancer
///       path: /system/
///   lbAccessKey:
///     type: aws:iam:AccessKey
///     name: lb
///     properties:
///       user: ${lb.name}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM User Policies using the `user_name:user_policy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userPolicy:UserPolicy mypolicy user_of_mypolicy_name:mypolicy_name
/// ```
class UserPolicy extends pulumi.CustomResource {
  /// The name of the policy. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// The policy document. This is a JSON formatted string.
  late final pulumi.Output<String> policy;
  /// IAM user to which to attach this policy.
  late final pulumi.Output<String> user;

  /// Creates a new [UserPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPolicy]. {@macro pulumi_iam_user_policy_user_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPolicy(
    String name, {
    UserPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicy:UserPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    policy = registerOutput<String>('policy');
    user = registerOutput<String>('user');
  }

  /// Gets an existing [UserPolicy] resource's state with the given [name] and [id].
  static UserPolicy get(
    String name,
    pulumi.Input<String> id, {
    UserPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userPolicy:UserPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    policy = registerOutput<String>('policy');
    user = registerOutput<String>('user');
  }

  /// Creates a typed reference to an existing [UserPolicy] resource.
  UserPolicy.reference(String urn)
    : super(
        'aws:iam/userPolicy:UserPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    policy = registerOutput<String>('policy');
    user = registerOutput<String>('user');
  }
}
