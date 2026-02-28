// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_standards_control_association_standards_control_association_args_doc}
/// The set of arguments for StandardsControlAssociation.
/// {@endtemplate}
/// {@macro pulumi_securityhub_standards_control_association_standards_control_association_args_doc}
class StandardsControlAssociationArgs {
  /// The desired enablement status of the control in the standard. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> associationStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The unique identifier for the security control whose enablement status you want to update.
  final pulumi.Input<String> securityControlId;

  /// The Amazon Resource Name (ARN) of the standard in which you want to update the control's enablement status.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> standardsArn;

  /// The reason for updating the control's enablement status in the standard. Required when `association_status` is `DISABLED`.
  final pulumi.Input<String>? updatedReason;

  /// Creates a new [StandardsControlAssociationArgs].
  /// [associationStatus] The desired enablement status of the control in the standard. Valid values: `ENABLED`, `DISABLED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityControlId] The unique identifier for the security control whose enablement status you want to update.
  /// [standardsArn] The Amazon Resource Name (ARN) of the standard in which you want to update the control's enablement status.
  /// [updatedReason] The reason for updating the control's enablement status in the standard. Required when `association_status` is `DISABLED`.
  StandardsControlAssociationArgs({
    required String associationStatus,
    String? region,
    required String securityControlId,
    required String standardsArn,
    String? updatedReason,
  })  : associationStatus = pulumi.Input.asInput<String>(associationStatus),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityControlId = pulumi.Input.asInput<String>(securityControlId),
        standardsArn = pulumi.Input.asInput<String>(standardsArn),
        updatedReason = pulumi.Input.asOptionalInput<String>(updatedReason);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associationStatus'] = associationStatus;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityControlId'] = securityControlId;
    map['standardsArn'] = standardsArn;
    final updatedReasonValue = updatedReason;
    if (updatedReasonValue != null) {
      map['updatedReason'] = updatedReasonValue;
    }
    return map;
  }

  factory StandardsControlAssociationArgs.fromMap(Map<String, dynamic> map) {
    return StandardsControlAssociationArgs(
      associationStatus: map['associationStatus'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityControlId: map['securityControlId'] as String,
      standardsArn: map['standardsArn'] as String,
      updatedReason:
          map['updatedReason'] == null ? null : map['updatedReason'] as String,
    );
  }
}
