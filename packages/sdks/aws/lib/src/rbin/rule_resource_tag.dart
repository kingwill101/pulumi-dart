// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleResourceTag {
  /// Tag key.
  ///
  /// The following argument is optional:
  final pulumi.Input<String> resourceTagKey;
  /// Tag value.
  final pulumi.Input<String>? resourceTagValue;

  /// Creates a new [RuleResourceTag].
  /// [resourceTagKey] Tag key.
  /// [resourceTagValue] Tag value.
  const RuleResourceTag({
    required this.resourceTagKey,
    this.resourceTagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTagKey': resourceTagKey,
      'resourceTagValue': ?resourceTagValue,
    };
  }

  factory RuleResourceTag.fromMap(Map<String, dynamic> map) {
    return RuleResourceTag(
      resourceTagKey: pulumi.Input.fromValue(map['resourceTagKey'] as String),
      resourceTagValue: (() { final guardedValue = map['resourceTagValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

