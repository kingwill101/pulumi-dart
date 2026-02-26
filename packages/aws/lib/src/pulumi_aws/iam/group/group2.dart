import 'package:pulumi/pulumi.dart';
import 'group_args2.dart';

/// Provides an IAM group.
///
/// > **NOTE on user management:** Using <span pulumi-lang-nodejs="`aws.iam.GroupMembership`" pulumi-lang-dotnet="`aws.iam.GroupMembership`" pulumi-lang-go="`iam.GroupMembership`" pulumi-lang-python="`iam.GroupMembership`" pulumi-lang-yaml="`aws.iam.GroupMembership`" pulumi-lang-java="`aws.iam.GroupMembership`">`aws.iam.GroupMembership`</span> or <span pulumi-lang-nodejs="`aws.iam.UserGroupMembership`" pulumi-lang-dotnet="`aws.iam.UserGroupMembership`" pulumi-lang-go="`iam.UserGroupMembership`" pulumi-lang-python="`iam.UserGroupMembership`" pulumi-lang-yaml="`aws.iam.UserGroupMembership`" pulumi-lang-java="`aws.iam.UserGroupMembership`">`aws.iam.UserGroupMembership`</span> resources in addition to manually managing user/group membership using the console may lead to configuration drift or conflicts. For this reason, it's recommended to either manage membership entirely with the provider or entirely within the AWS console.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const developers = new aws.iam.Group("developers", {
/// name: "developers",
/// path: "/users/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// developers = aws.iam.Group("developers",
/// name="developers",
/// path="/users/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var developers = new Aws.Iam.Group("developers", new()
/// {
/// Name = "developers",
/// Path = "/users/",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewGroup(ctx, "developers", &iam.GroupArgs{
/// Name: pulumi.String("developers"),
/// Path: pulumi.String("/users/"),
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
/// import com.pulumi.aws.iam.Group;
/// import com.pulumi.aws.iam.GroupArgs;
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
/// var developers = new Group("developers", GroupArgs.builder()
/// .name("developers")
/// .path("/users/")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// developers:
/// type: aws:iam:Group
/// properties:
/// name: developers
/// path: /users/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IAM Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/group:Group developers developers
/// ```
class Group2 extends CustomResource {
  /// The ARN assigned by AWS for this group.
  late final Output<String> arn;

  /// The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".
  late final Output<String> name;

  /// Path in which to create the group.
  late final Output<String?> path;

  /// The [unique ID][1] assigned by AWS.
  late final Output<String> uniqueId;

  Group2(
    String name, {
    GroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.path = Output.createUnknown<String?>();
    this.uniqueId = Output.createUnknown<String>();
  }
}
