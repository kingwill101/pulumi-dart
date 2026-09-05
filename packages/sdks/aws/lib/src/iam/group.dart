import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// Provides an IAM group.
///
/// &gt; **NOTE on user management:** Using `aws.iam.GroupMembership` or `aws.iam.UserGroupMembership` resources in addition to manually managing user/group membership using the console may lead to configuration drift or conflicts. For this reason, it's recommended to either manage membership entirely with the provider or entirely within the AWS console.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const developers = new aws.iam.Group("developers", {
///     name: "developers",
///     path: "/users/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// developers = aws.iam.Group("developers",
///     name="developers",
///     path="/users/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var developers = new Aws.Iam.Group("developers", new()
///     {
///         Name = "developers",
///         Path = "/users/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewGroup(ctx, "developers", &iam.GroupArgs{
/// 			Name: pulumi.String("developers"),
/// 			Path: pulumi.String("/users/"),
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
/// resource "aws_iam_group" "developers" {
///   name = "developers"
///   path = "/users/"
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
///         var developers = new Group("developers", GroupArgs.builder()
///             .name("developers")
///             .path("/users/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   developers:
///     type: aws:iam:Group
///     properties:
///       name: developers
///       path: /users/
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/group:Group developers developers
/// ```
class Group extends pulumi.CustomResource {
  /// ARN assigned by AWS for this group.
  late final pulumi.Output<String> arn;
  /// Group's name. Must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".
  late final pulumi.Output<String> name;
  /// Path in which to create the group.
  late final pulumi.Output<String?> path;
  /// [Unique ID](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html#GUIDs) assigned by AWS.
  late final pulumi.Output<String> uniqueId;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_iam_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    uniqueId = registerOutput<String>('uniqueId');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    uniqueId = registerOutput<String>('uniqueId');
  }

  /// Creates a typed reference to an existing [Group] resource.
  Group.reference(String urn)
    : super(
        'aws:iam/group:Group',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    uniqueId = registerOutput<String>('uniqueId');
  }
}
