// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_appregistry_attribute_group_associations_get_appregistry_attribute_group_associations_args_doc}
/// Arguments for getAppregistryAttributeGroupAssociations.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_appregistry_attribute_group_associations_get_appregistry_attribute_group_associations_args_doc}
class GetAppregistryAttributeGroupAssociationsArgs {
  /// ID of the application to which attribute groups are associated.
  final pulumi.Input<String>? id;
  /// Name of the application to which attribute groups are associated.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// &gt; Exactly one of `id`or `name` must be set.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAppregistryAttributeGroupAssociationsArgs].
  /// [id] ID of the application to which attribute groups are associated.
  /// [name] Name of the application to which attribute groups are associated.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetAppregistryAttributeGroupAssociationsArgs({
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetAppregistryAttributeGroupAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetAppregistryAttributeGroupAssociationsArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

