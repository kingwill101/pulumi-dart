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
  AppregistryAttributeGroupAssociationArgs({
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> attributeGroupId,
    pulumi.Output<String>? region,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      attributeGroupId = pulumi.Input.asInput<String>(attributeGroupId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'attributeGroupId': attributeGroupId,
      'region': ?region,
    };
  }

  factory AppregistryAttributeGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return AppregistryAttributeGroupAssociationArgs(
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      attributeGroupId: pulumi.Output.create<String>(map['attributeGroupId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

