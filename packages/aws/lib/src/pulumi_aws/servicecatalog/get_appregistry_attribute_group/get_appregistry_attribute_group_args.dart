// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAppregistryAttributeGroup.
class GetAppregistryAttributeGroupArgs {
  /// ARN of the Attribute Group to find.
  final Input<String>? arn;

  /// ID of the Attribute Group to find.
  final Input<String>? id;

  /// Name of the Attribute Group to find.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// > Exactly one of `arn`, `id`, or `name` must be set.
  final Input<String>? region;

  GetAppregistryAttributeGroupArgs({
    this.arn,
    this.id,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
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

  factory GetAppregistryAttributeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAppregistryAttributeGroupArgs(
      arn: Input.asOptionalInput<String>(map['arn']),
      id: Input.asOptionalInput<String>(map['id']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
