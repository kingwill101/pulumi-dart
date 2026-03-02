// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleExcludeResourceTag {
  /// Tag key.
  ///
  /// The following argument is optional:
  final pulumi.Input<String> resourceTagKey;
  /// Tag value.
  final pulumi.Input<String>? resourceTagValue;

  /// Creates a new [RuleExcludeResourceTag].
  /// [resourceTagKey] Tag key.
  /// [resourceTagValue] Tag value.
  RuleExcludeResourceTag({
    required this.resourceTagKey,
    this.resourceTagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTagKey': resourceTagKey,
      'resourceTagValue': ?resourceTagValue,
    };
  }

  factory RuleExcludeResourceTag.fromMap(Map<String, dynamic> map) {
    return RuleExcludeResourceTag(
      resourceTagKey: (map['resourceTagKey'] as String).input(),
      resourceTagValue: map['resourceTagValue'] == null ? null : ((map['resourceTagValue'] as String).input()).input(),
    );
  }
}

