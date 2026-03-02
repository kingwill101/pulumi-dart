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
    this.applicationId,
    this.attributeGroupId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'attributeGroupId': ?attributeGroupId,
      'region': ?region,
    };
  }

  factory AppregistryAttributeGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return AppregistryAttributeGroupAssociationState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      attributeGroupId: map['attributeGroupId'] == null ? null : (map['attributeGroupId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

