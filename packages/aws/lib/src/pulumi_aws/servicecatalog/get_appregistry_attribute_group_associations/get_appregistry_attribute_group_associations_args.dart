// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAppregistryAttributeGroupAssociations.
class GetAppregistryAttributeGroupAssociationsArgs {
  /// ID of the application to which attribute groups are associated.
  final Input<String>? id;

  /// Name of the application to which attribute groups are associated.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// > Exactly one of `id`or `name` must be set.
  final Input<String>? region;

  GetAppregistryAttributeGroupAssociationsArgs({
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAppregistryAttributeGroupAssociationsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetAppregistryAttributeGroupAssociationsArgs(
      id: Input.asOptionalInput<String>(map['id']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
