// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StandardsControlAssociation resources.
class StandardsControlAssociationState {
  /// The desired enablement status of the control in the standard. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? associationStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The unique identifier for the security control whose enablement status you want to update.
  final pulumi.Input<String>? securityControlId;
  /// The Amazon Resource Name (ARN) of the standard in which you want to update the control's enablement status.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? standardsArn;
  /// The reason for updating the control's enablement status in the standard. Required when `association_status` is `DISABLED`.
  final pulumi.Input<String>? updatedReason;

  /// Creates a new [StandardsControlAssociationState].
  /// [associationStatus] The desired enablement status of the control in the standard. Valid values: `ENABLED`, `DISABLED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityControlId] The unique identifier for the security control whose enablement status you want to update.
  /// [standardsArn] The Amazon Resource Name (ARN) of the standard in which you want to update the control's enablement status.
  /// [updatedReason] The reason for updating the control's enablement status in the standard. Required when `association_status` is `DISABLED`.
  StandardsControlAssociationState({
    pulumi.Output<String>? associationStatus,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityControlId,
    pulumi.Output<String>? standardsArn,
    pulumi.Output<String>? updatedReason,
  }) :
      associationStatus = pulumi.Input.asOptionalInput<String>(associationStatus),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityControlId = pulumi.Input.asOptionalInput<String>(securityControlId),
      standardsArn = pulumi.Input.asOptionalInput<String>(standardsArn),
      updatedReason = pulumi.Input.asOptionalInput<String>(updatedReason);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationStatus': ?associationStatus,
      'region': ?region,
      'securityControlId': ?securityControlId,
      'standardsArn': ?standardsArn,
      'updatedReason': ?updatedReason,
    };
  }

  factory StandardsControlAssociationState.fromMap(Map<String, dynamic> map) {
    return StandardsControlAssociationState(
      associationStatus: map['associationStatus'] == null ? null : pulumi.Output.create<String>(map['associationStatus'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityControlId: map['securityControlId'] == null ? null : pulumi.Output.create<String>(map['securityControlId'] as String),
      standardsArn: map['standardsArn'] == null ? null : pulumi.Output.create<String>(map['standardsArn'] as String),
      updatedReason: map['updatedReason'] == null ? null : pulumi.Output.create<String>(map['updatedReason'] as String),
    );
  }
}

