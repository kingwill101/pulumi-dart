// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_appregistry_attribute_group_association_appregistry_attribute_group_association_args_doc}
/// The set of arguments for AppregistryAttributeGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_appregistry_attribute_group_association_appregistry_attribute_group_association_args_doc}
class AppregistryAttributeGroupAssociationArgs {
  /// ID of the application.
  final pulumi.Input<String> applicationId;
  /// ID of the attribute group to associate with the application.
  final pulumi.Input<String> attributeGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AppregistryAttributeGroupAssociationArgs].
  /// [applicationId] ID of the application.
  /// [attributeGroupId] ID of the attribute group to associate with the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AppregistryAttributeGroupAssociationArgs({
    required this.applicationId,
    required this.attributeGroupId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'attributeGroupId': attributeGroupId,
      'region': ?region,
    };
  }

  factory AppregistryAttributeGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return AppregistryAttributeGroupAssociationArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      attributeGroupId: pulumi.Input.fromValue(map['attributeGroupId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
