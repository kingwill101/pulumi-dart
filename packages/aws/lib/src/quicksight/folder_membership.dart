import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_membership_args.dart';

/// Resource for managing an AWS QuickSight Folder Membership.
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
/// const example = new aws.quicksight.FolderMembership("example", {
///     folderId: exampleAwsQuicksightFolder.folderId,
///     memberType: "DATASET",
///     memberId: exampleAwsQuicksightDataSet.dataSetId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.FolderMembership("example",
///     folder_id=example_aws_quicksight_folder["folderId"],
///     member_type="DATASET",
///     member_id=example_aws_quicksight_data_set["dataSetId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.FolderMembership("example", new()
///     {
///         FolderId = exampleAwsQuicksightFolder.FolderId,
///         MemberType = "DATASET",
///         MemberId = exampleAwsQuicksightDataSet.DataSetId,
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
/// 		_, err := quicksight.NewFolderMembership(ctx, "example", &quicksight.FolderMembershipArgs{
/// 			FolderId:   pulumi.Any(exampleAwsQuicksightFolder.FolderId),
/// 			MemberType: pulumi.String("DATASET"),
/// 			MemberId:   pulumi.Any(exampleAwsQuicksightDataSet.DataSetId),
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
/// import com.pulumi.aws.quicksight.FolderMembership;
/// import com.pulumi.aws.quicksight.FolderMembershipArgs;
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
///         var example = new FolderMembership("example", FolderMembershipArgs.builder()
///             .folderId(exampleAwsQuicksightFolder.folderId())
///             .memberType("DATASET")
///             .memberId(exampleAwsQuicksightDataSet.dataSetId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:FolderMembership
///     properties:
///       folderId: ${exampleAwsQuicksightFolder.folderId}
///       memberType: DATASET
///       memberId: ${exampleAwsQuicksightDataSet.dataSetId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Folder Membership using the AWS account ID, folder ID, member type, and member ID separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/folderMembership:FolderMembership example 123456789012,example-folder,DATASET,example-dataset
/// ```
class FolderMembership extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Identifier for the folder.
  late final pulumi.Output<String> folderId;

  /// ID of the asset (the dashboard, analysis, or dataset).
  late final pulumi.Output<String> memberId;

  /// Type of the member. Valid values are `ANALYSIS`, `DASHBOARD`, and `DATASET`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> memberType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [FolderMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderMembership]. {@macro pulumi_quicksight_folder_membership_folder_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderMembership(
    String name, {
    FolderMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/folderMembership:FolderMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.folderId = registerOutput<String>('folderId');
    this.memberId = registerOutput<String>('memberId');
    this.memberType = registerOutput<String>('memberType');
    this.region = registerOutput<String>('region');
  }
}
