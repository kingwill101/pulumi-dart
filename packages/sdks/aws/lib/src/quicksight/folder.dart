import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_args.dart';
import 'folder_permission.dart';
import 'folder_state.dart';

/// Resource for managing a QuickSight Folder.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Folder("example", {
///     folderId: "example-id",
///     name: "example-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Folder("example",
///     folder_id="example-id",
///     name="example-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.Folder("example", new()
///     {
///         FolderId = "example-id",
///         Name = "example-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewFolder(ctx, "example", &quicksight.FolderArgs{
/// 			FolderId: pulumi.String("example-id"),
/// 			Name:     pulumi.String("example-name"),
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
/// resource "aws_quicksight_folder" "example" {
///   folder_id = "example-id"
///   name      = "example-name"
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
///         var example = new Folder("example", FolderArgs.builder()
///             .folderId("example-id")
///             .name("example-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:Folder
///     properties:
///       folderId: example-id
///       name: example-name
/// ```
///
///
/// ### With Permissions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Folder("example", {
///     permissions: [{
///         actions: [
///             "quicksight:CreateFolder",
///             "quicksight:DescribeFolder",
///             "quicksight:UpdateFolder",
///             "quicksight:DeleteFolder",
///             "quicksight:CreateFolderMembership",
///             "quicksight:DeleteFolderMembership",
///             "quicksight:DescribeFolderPermissions",
///             "quicksight:UpdateFolderPermissions",
///         ],
///         principal: exampleAwsQuicksightUser.arn,
///     }],
///     folderId: "example-id",
///     name: "example-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Folder("example",
///     permissions=[{
///         "actions": [
///             "quicksight:CreateFolder",
///             "quicksight:DescribeFolder",
///             "quicksight:UpdateFolder",
///             "quicksight:DeleteFolder",
///             "quicksight:CreateFolderMembership",
///             "quicksight:DeleteFolderMembership",
///             "quicksight:DescribeFolderPermissions",
///             "quicksight:UpdateFolderPermissions",
///         ],
///         "principal": example_aws_quicksight_user["arn"],
///     }],
///     folder_id="example-id",
///     name="example-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.Folder("example", new()
///     {
///         Permissions = new[]
///         {
///             new Aws.Quicksight.Inputs.FolderPermissionArgs
///             {
///                 Actions = new[]
///                 {
///                     "quicksight:CreateFolder",
///                     "quicksight:DescribeFolder",
///                     "quicksight:UpdateFolder",
///                     "quicksight:DeleteFolder",
///                     "quicksight:CreateFolderMembership",
///                     "quicksight:DeleteFolderMembership",
///                     "quicksight:DescribeFolderPermissions",
///                     "quicksight:UpdateFolderPermissions",
///                 },
///                 Principal = exampleAwsQuicksightUser.Arn,
///             },
///         },
///         FolderId = "example-id",
///         Name = "example-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewFolder(ctx, "example", &quicksight.FolderArgs{
/// 			Permissions: quicksight.FolderPermissionArray{
/// 				&quicksight.FolderPermissionArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("quicksight:CreateFolder"),
/// 						pulumi.String("quicksight:DescribeFolder"),
/// 						pulumi.String("quicksight:UpdateFolder"),
/// 						pulumi.String("quicksight:DeleteFolder"),
/// 						pulumi.String("quicksight:CreateFolderMembership"),
/// 						pulumi.String("quicksight:DeleteFolderMembership"),
/// 						pulumi.String("quicksight:DescribeFolderPermissions"),
/// 						pulumi.String("quicksight:UpdateFolderPermissions"),
/// 					},
/// 					Principal: pulumi.Any(exampleAwsQuicksightUser.Arn),
/// 				},
/// 			},
/// 			FolderId: pulumi.String("example-id"),
/// 			Name:     pulumi.String("example-name"),
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
/// resource "aws_quicksight_folder" "example" {
///   permissions {
///     actions   = ["quicksight:CreateFolder", "quicksight:DescribeFolder", "quicksight:UpdateFolder", "quicksight:DeleteFolder", "quicksight:CreateFolderMembership", "quicksight:DeleteFolderMembership", "quicksight:DescribeFolderPermissions", "quicksight:UpdateFolderPermissions"]
///     principal = exampleAwsQuicksightUser.arn
///   }
///   folder_id = "example-id"
///   name      = "example-name"
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
///         var example = new Folder("example", FolderArgs.builder()
///             .permissions(FolderPermissionArgs.builder()
///                 .actions(
///                     "quicksight:CreateFolder",
///                     "quicksight:DescribeFolder",
///                     "quicksight:UpdateFolder",
///                     "quicksight:DeleteFolder",
///                     "quicksight:CreateFolderMembership",
///                     "quicksight:DeleteFolderMembership",
///                     "quicksight:DescribeFolderPermissions",
///                     "quicksight:UpdateFolderPermissions")
///                 .principal(exampleAwsQuicksightUser.arn())
///                 .build())
///             .folderId("example-id")
///             .name("example-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:Folder
///     properties:
///       permissions:
///         - actions:
///             - quicksight:CreateFolder
///             - quicksight:DescribeFolder
///             - quicksight:UpdateFolder
///             - quicksight:DeleteFolder
///             - quicksight:CreateFolderMembership
///             - quicksight:DeleteFolderMembership
///             - quicksight:DescribeFolderPermissions
///             - quicksight:UpdateFolderPermissions
///           principal: ${exampleAwsQuicksightUser.arn}
///       folderId: example-id
///       name: example-name
/// ```
///
///
/// ### With Parent Folder
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const parent = new aws.quicksight.Folder("parent", {
///     folderId: "parent-id",
///     name: "parent-name",
/// });
/// const example = new aws.quicksight.Folder("example", {
///     folderId: "example-id",
///     name: "example-name",
///     parentFolderArn: parent.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// parent = aws.quicksight.Folder("parent",
///     folder_id="parent-id",
///     name="parent-name")
/// example = aws.quicksight.Folder("example",
///     folder_id="example-id",
///     name="example-name",
///     parent_folder_arn=parent.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var parent = new Aws.Quicksight.Folder("parent", new()
///     {
///         FolderId = "parent-id",
///         Name = "parent-name",
///     });
///
///     var example = new Aws.Quicksight.Folder("example", new()
///     {
///         FolderId = "example-id",
///         Name = "example-name",
///         ParentFolderArn = parent.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		parent, err := quicksight.NewFolder(ctx, "parent", &quicksight.FolderArgs{
/// 			FolderId: pulumi.String("parent-id"),
/// 			Name:     pulumi.String("parent-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = quicksight.NewFolder(ctx, "example", &quicksight.FolderArgs{
/// 			FolderId:        pulumi.String("example-id"),
/// 			Name:            pulumi.String("example-name"),
/// 			ParentFolderArn: parent.Arn,
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
/// resource "aws_quicksight_folder" "parent" {
///   folder_id = "parent-id"
///   name      = "parent-name"
/// }
/// resource "aws_quicksight_folder" "example" {
///   folder_id         = "example-id"
///   name              = "example-name"
///   parent_folder_arn = aws_quicksight_folder.parent.arn
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
///         var parent = new Folder("parent", FolderArgs.builder()
///             .folderId("parent-id")
///             .name("parent-name")
///             .build());
///
///         var example = new Folder("example", FolderArgs.builder()
///             .folderId("example-id")
///             .name("example-name")
///             .parentFolderArn(parent.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   parent:
///     type: aws:quicksight:Folder
///     properties:
///       folderId: parent-id
///       name: parent-name
///   example:
///     type: aws:quicksight:Folder
///     properties:
///       folderId: example-id
///       name: example-name
///       parentFolderArn: ${parent.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight folder using the AWS account ID and folder ID name separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/folder:Folder example 123456789012,example-id
/// ```
class Folder extends pulumi.CustomResource {
  /// ARN of the folder.
  late final pulumi.Output<String> arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// The time that the folder was created.
  late final pulumi.Output<String> createdTime;
  /// Identifier for the folder.
  late final pulumi.Output<String> folderId;
  /// An array of ancestor ARN strings for the folder. Empty for root-level folders.
  late final pulumi.Output<List<String>> folderPaths;
  /// The type of folder. By default, it is `SHARED`. Valid values are: `SHARED`.
  late final pulumi.Output<String?> folderType;
  /// The time that the folder was last updated.
  late final pulumi.Output<String> lastUpdatedTime;
  /// Display name for the folder.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// ARN for the parent folder. If not set, creates a root-level folder.
  late final pulumi.Output<String?> parentFolderArn;
  /// A set of resource permissions on the folder. Maximum of 64 items. See permissions.
  late final pulumi.Output<List<FolderPermission>?> permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Folder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Folder]. {@macro pulumi_quicksight_folder_folder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Folder(
    String name, {
    FolderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/folder:Folder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    createdTime = registerOutput<String>('createdTime');
    folderId = registerOutput<String>('folderId');
    folderPaths = registerOutput<List<String>>('folderPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    folderType = registerOutput<String?>('folderType');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    parentFolderArn = registerOutput<String?>('parentFolderArn');
    permissions = registerOutput<List<FolderPermission>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FolderPermission>(guardedValue, (value) => FolderPermission.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Folder] resource's state with the given [name] and [id].
  static Folder get(
    String name,
    pulumi.Input<String> id, {
    FolderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Folder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Folder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/folder:Folder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    createdTime = registerOutput<String>('createdTime');
    folderId = registerOutput<String>('folderId');
    folderPaths = registerOutput<List<String>>('folderPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    folderType = registerOutput<String?>('folderType');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    parentFolderArn = registerOutput<String?>('parentFolderArn');
    permissions = registerOutput<List<FolderPermission>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FolderPermission>(guardedValue, (value) => FolderPermission.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Folder] resource.
  Folder.reference(String urn)
    : super(
        'aws:quicksight/folder:Folder',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    createdTime = registerOutput<String>('createdTime');
    folderId = registerOutput<String>('folderId');
    folderPaths = registerOutput<List<String>>('folderPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    folderType = registerOutput<String?>('folderType');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    parentFolderArn = registerOutput<String?>('parentFolderArn');
    permissions = registerOutput<List<FolderPermission>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FolderPermission>(guardedValue, (value) => FolderPermission.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
