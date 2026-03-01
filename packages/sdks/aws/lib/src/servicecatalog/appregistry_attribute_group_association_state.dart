// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppregistryAttributeGroupAssociation resources.
class AppregistryAttributeGroupAssociationState {
  /// ID of the application.
  final pulumi.Input<String>? applicationId;
  /// ID of the attribute group to associate with the application.
  final pulumi.Input<String>? attributeGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AppregistryAttributeGroupAssociationState].
  /// [applicationId] ID of the application.
  /// [attributeGroupId] ID of the attribute group to associate with the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AppregistryAttributeGroupAssociationState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? attributeGroupId,
    pulumi.Output<String>? region,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      attributeGroupId = pulumi.Input.asOptionalInput<String>(attributeGroupId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'attributeGroupId': ?attributeGroupId,
      'region': ?region,
    };
  }

  factory AppregistryAttributeGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return AppregistryAttributeGroupAssociationState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      attributeGroupId: map['attributeGroupId'] == null ? null : pulumi.Output.create<String>(map['attributeGroupId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

