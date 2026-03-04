import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_args.dart';
import 'group_policy_state.dart';

/// Provides an IAM policy attached to a group.
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
/// const myDevelopers = new aws.iam.Group("my_developers", {
///     name: "developers",
///     path: "/users/",
/// });
/// const myDeveloperPolicy = new aws.iam.GroupPolicy("my_developer_policy", {
///     name: "my_developer_policy",
///     group: myDevelopers.name,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: ["ec2:Describe*"],
///             Effect: "Allow",
///             Resource: "*",
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// my_developers = aws.iam.Group("my_developers",
///     name="developers",
///     path="/users/")
/// my_developer_policy = aws.iam.GroupPolicy("my_developer_policy",
///     name="my_developer_policy",
///     group=my_developers.name,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": ["ec2:Describe*"],
///             "Effect": "Allow",
///             "Resource": "*",
///         }],
///     }))
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
///     var myDevelopers = new Aws.Iam.Group("my_developers", new()
///     {
///         Name = "developers",
///         Path = "/users/",
///     });
///
///     var myDeveloperPolicy = new Aws.Iam.GroupPolicy("my_developer_policy", new()
///     {
///         Name = "my_developer_policy",
///         Group = myDevelopers.Name,
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
/// 		myDevelopers, err := iam.NewGroup(ctx, "my_developers", &iam.GroupArgs{
/// 			Name: pulumi.String("developers"),
/// 			Path: pulumi.String("/users/"),
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
/// 		_, err = iam.NewGroupPolicy(ctx, "my_developer_policy", &iam.GroupPolicyArgs{
/// 			Name:   pulumi.String("my_developer_policy"),
/// 			Group:  myDevelopers.Name,
/// 			Policy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.Group;
/// import com.pulumi.aws.iam.GroupArgs;
/// import com.pulumi.aws.iam.GroupPolicy;
/// import com.pulumi.aws.iam.GroupPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var myDevelopers = new Group("myDevelopers", GroupArgs.builder()
///             .name("developers")
///             .path("/users/")
///             .build());
///
///         var myDeveloperPolicy = new GroupPolicy("myDeveloperPolicy", GroupPolicyArgs.builder()
///             .name("my_developer_policy")
///             .group(myDevelopers.name())
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myDeveloperPolicy:
///     type: aws:iam:GroupPolicy
///     name: my_developer_policy
///     properties:
///       name: my_developer_policy
///       group: ${myDevelopers.name}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - ec2:Describe*
///               Effect: Allow
///               Resource: '*'
///   myDevelopers:
///     type: aws:iam:Group
///     name: my_developers
///     properties:
///       name: developers
///       path: /users/
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Group Policies using the `group_name:group_policy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/groupPolicy:GroupPolicy mypolicy group_of_mypolicy_name:mypolicy_name
/// ```
class GroupPolicy extends pulumi.CustomResource {
  /// The IAM group to attach to the policy.
  late final pulumi.Output<String> group;

  /// The name of the policy. If omitted, the provider will
  /// assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// The policy document. This is a JSON formatted string.
  late final pulumi.Output<String> policy;

  /// Creates a new [GroupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupPolicy]. {@macro pulumi_iam_group_policy_group_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupPolicy(
    String name, {
    GroupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iam/groupPolicy:GroupPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    group = registerOutput<String>('group');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    policy = registerOutput<String>('policy');
  }

  /// Gets an existing [GroupPolicy] resource's state with the given [name] and [id].
  static GroupPolicy get(
    String name,
    pulumi.Input<String> id, {
    GroupPolicyState? state,
  }) {
    return GroupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iam/groupPolicy:GroupPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    group = registerOutput<String>('group');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    policy = registerOutput<String>('policy');
  }
}
