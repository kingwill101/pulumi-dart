import 'package:pulumi/pulumi.dart' as pulumi;
import 'standards_control_association_args.dart';

/// Resource for managing an AWS Security Hub Standards Control Association.
///
/// Disable/enable Security Hub security control in the standard.
///
/// The `aws.securityhub.StandardsControlAssociation`, similarly to `aws.securityhub.StandardsControl`,
/// behaves differently from normal resources, in that Terraform does not _create_ this resource, but instead "adopts" it
/// into management. When you _delete_ this resource configuration, Terraform "abandons" resource as is and just removes it from the state.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Disabling security control in all standards
class StandardsControlAssociation extends pulumi.CustomResource {
  /// The desired enablement status of the control in the standard. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> associationStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The unique identifier for the security control whose enablement status you want to update.
  late final pulumi.Output<String> securityControlId;

  /// The Amazon Resource Name (ARN) of the standard in which you want to update the control's enablement status.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> standardsArn;

  /// The reason for updating the control's enablement status in the standard. Required when `association_status` is `DISABLED`.
  late final pulumi.Output<String?> updatedReason;

  StandardsControlAssociation(
    String name, {
    StandardsControlAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsControlAssociation:StandardsControlAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associationStatus = registerOutput<String>('associationStatus');
    this.region = registerOutput<String>('region');
    this.securityControlId = registerOutput<String>('securityControlId');
    this.standardsArn = registerOutput<String>('standardsArn');
    this.updatedReason = registerOutput<String?>('updatedReason');
  }
}
