import 'package:pulumi/pulumi.dart';
import 'folder_membership_args.dart';

/// Resource for managing an AWS QuickSight Folder Membership.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Folder Membership using the AWS account ID, folder ID, member type, and member ID separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/folderMembership:FolderMembership example 123456789012,example-folder,DATASET,example-dataset
/// ```
class FolderMembership extends CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Identifier for the folder.
  late final Output<String> folderId;

  /// ID of the asset (the dashboard, analysis, or dataset).
  late final Output<String> memberId;

  /// Type of the member. Valid values are `ANALYSIS`, `DASHBOARD`, and `DATASET`.
  ///
  /// The following arguments are optional:
  late final Output<String> memberType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  FolderMembership(
    String name, {
    FolderMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/folderMembership:FolderMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.folderId = registerOutput<String>('folderId');
    this.memberId = registerOutput<String>('memberId');
    this.memberType = registerOutput<String>('memberType');
    this.region = registerOutput<String>('region');
  }
}
