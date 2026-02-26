import 'package:pulumi/pulumi.dart';
import '../folder_permission/folder_permission.dart';
import 'folder_args.dart';

/// Resource for managing a QuickSight Folder.
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
/// const example = new aws.quicksight.Folder("example", {
/// folderId: "example-id",
/// name: "example-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Folder("example",
/// folder_id="example-id",
/// name="example-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Quicksight.Folder("example", new()
/// {
/// FolderId = "example-id",
/// Name = "example-name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewFolder(ctx, "example", &quicksight.FolderArgs{
/// FolderId: pulumi.String("example-id"),
/// Name:     pulumi.String("example-name"),
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
/// import com.pulumi.aws.quicksight.Folder;
/// import com.pulumi.aws.quicksight.FolderArgs;
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
/// var example = new Folder("example", FolderArgs.builder()
/// .folderId("example-id")
/// .name("example-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:Folder
/// properties:
/// folderId: example-id
/// name: example-name
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Permissions
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Folder("example", {
/// folderId: "example-id",
/// name: "example-name",
/// permissions: [{
/// actions: [
/// "quicksight:CreateFolder",
/// "quicksight:DescribeFolder",
/// "quicksight:UpdateFolder",
/// "quicksight:DeleteFolder",
/// "quicksight:CreateFolderMembership",
/// "quicksight:DeleteFolderMembership",
/// "quicksight:DescribeFolderPermissions",
/// "quicksight:UpdateFolderPermissions",
/// ],
/// principal: exampleAwsQuicksightUser.arn,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Folder("example",
/// folder_id="example-id",
/// name="example-name",
/// permissions=[{
/// "actions": [
/// "quicksight:CreateFolder",
/// "quicksight:DescribeFolder",
/// "quicksight:UpdateFolder",
/// "quicksight:DeleteFolder",
/// "quicksight:CreateFolderMembership",
/// "quicksight:DeleteFolderMembership",
/// "quicksight:DescribeFolderPermissions",
/// "quicksight:UpdateFolderPermissions",
/// ],
/// "principal": example_aws_quicksight_user["arn"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Quicksight.Folder("example", new()
/// {
/// FolderId = "example-id",
/// Name = "example-name",
/// Permissions = new[]
/// {
/// new Aws.Quicksight.Inputs.FolderPermissionArgs
/// {
/// Actions = new[]
/// {
/// "quicksight:CreateFolder",
/// "quicksight:DescribeFolder",
/// "quicksight:UpdateFolder",
/// "quicksight:DeleteFolder",
/// "quicksight:CreateFolderMembership",
/// "quicksight:DeleteFolderMembership",
/// "quicksight:DescribeFolderPermissions",
/// "quicksight:UpdateFolderPermissions",
/// },
/// Principal = exampleAwsQuicksightUser.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewFolder(ctx, "example", &quicksight.FolderArgs{
/// FolderId: pulumi.String("example-id"),
/// Name:     pulumi.String("example-name"),
/// Permissions: quicksight.FolderPermissionArray{
/// &quicksight.FolderPermissionArgs{
/// Actions: pulumi.StringArray{
/// pulumi.String("quicksight:CreateFolder"),
/// pulumi.String("quicksight:DescribeFolder"),
/// pulumi.String("quicksight:UpdateFolder"),
/// pulumi.String("quicksight:DeleteFolder"),
/// pulumi.String("quicksight:CreateFolderMembership"),
/// pulumi.String("quicksight:DeleteFolderMembership"),
/// pulumi.String("quicksight:DescribeFolderPermissions"),
/// pulumi.String("quicksight:UpdateFolderPermissions"),
/// },
/// Principal: pulumi.Any(exampleAwsQuicksightUser.Arn),
/// },
/// },
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
/// import com.pulumi.aws.quicksight.Folder;
/// import com.pulumi.aws.quicksight.FolderArgs;
/// import com.pulumi.aws.quicksight.inputs.FolderPermissionArgs;
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
/// var example = new Folder("example", FolderArgs.builder()
/// .folderId("example-id")
/// .name("example-name")
/// .permissions(FolderPermissionArgs.builder()
/// .actions(
/// "quicksight:CreateFolder",
/// "quicksight:DescribeFolder",
/// "quicksight:UpdateFolder",
/// "quicksight:DeleteFolder",
/// "quicksight:CreateFolderMembership",
/// "quicksight:DeleteFolderMembership",
/// "quicksight:DescribeFolderPermissions",
/// "quicksight:UpdateFolderPermissions")
/// .principal(exampleAwsQuicksightUser.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:Folder
/// properties:
/// folderId: example-id
/// name: example-name
/// permissions:
/// - actions:
/// - quicksight:CreateFolder
/// - quicksight:DescribeFolder
/// - quicksight:UpdateFolder
/// - quicksight:DeleteFolder
/// - quicksight:CreateFolderMembership
/// - quicksight:DeleteFolderMembership
/// - quicksight:DescribeFolderPermissions
/// - quicksight:UpdateFolderPermissions
/// principal: ${exampleAwsQuicksightUser.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Parent Folder
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const parent = new aws.quicksight.Folder("parent", {
/// folderId: "parent-id",
/// name: "parent-name",
/// });
/// const example = new aws.quicksight.Folder("example", {
/// folderId: "example-id",
/// name: "example-name",
/// parentFolderArn: parent.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// parent = aws.quicksight.Folder("parent",
/// folder_id="parent-id",
/// name="parent-name")
/// example = aws.quicksight.Folder("example",
/// folder_id="example-id",
/// name="example-name",
/// parent_folder_arn=parent.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var parent = new Aws.Quicksight.Folder("parent", new()
/// {
/// FolderId = "parent-id",
/// Name = "parent-name",
/// });
///
/// var example = new Aws.Quicksight.Folder("example", new()
/// {
/// FolderId = "example-id",
/// Name = "example-name",
/// ParentFolderArn = parent.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// parent, err := quicksight.NewFolder(ctx, "parent", &quicksight.FolderArgs{
/// FolderId: pulumi.String("parent-id"),
/// Name:     pulumi.String("parent-name"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = quicksight.NewFolder(ctx, "example", &quicksight.FolderArgs{
/// FolderId:        pulumi.String("example-id"),
/// Name:            pulumi.String("example-name"),
/// ParentFolderArn: parent.Arn,
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
/// import com.pulumi.aws.quicksight.Folder;
/// import com.pulumi.aws.quicksight.FolderArgs;
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
/// var parent = new Folder("parent", FolderArgs.builder()
/// .folderId("parent-id")
/// .name("parent-name")
/// .build());
///
/// var example = new Folder("example", FolderArgs.builder()
/// .folderId("example-id")
/// .name("example-name")
/// .parentFolderArn(parent.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// parent:
/// type: aws:quicksight:Folder
/// properties:
/// folderId: parent-id
/// name: parent-name
/// example:
/// type: aws:quicksight:Folder
/// properties:
/// folderId: example-id
/// name: example-name
/// parentFolderArn: ${parent.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight folder using the AWS account ID and folder ID name separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/folder:Folder example 123456789012,example-id
/// ```
class Folder extends CustomResource {
  /// ARN of the folder.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The time that the folder was created.
  late final Output<String> createdTime;

  /// Identifier for the folder.
  late final Output<String> folderId;

  /// An array of ancestor ARN strings for the folder. Empty for root-level folders.
  late final Output<List<String>> folderPaths;

  /// The type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  late final Output<String?> folderType;

  /// The time that the folder was last updated.
  late final Output<String> lastUpdatedTime;

  /// Display name for the folder.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// The Amazon Resource Name (ARN) for the parent folder. If not set, creates a root-level folder.
  late final Output<String?> parentFolderArn;

  /// A set of resource permissions on the folder. Maximum of 64 items. See permissions.
  late final Output<List<FolderPermission>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Folder(
    String name, {
    FolderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/folder:Folder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.createdTime = registerOutput<String>('createdTime');
    this.folderId = registerOutput<String>('folderId');
    this.folderPaths = registerOutput<List<String>>('folderPaths');
    this.folderType = registerOutput<String?>('folderType');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    this.parentFolderArn = registerOutput<String?>('parentFolderArn');
    this.permissions = registerOutput<List<FolderPermission>?>('permissions');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
