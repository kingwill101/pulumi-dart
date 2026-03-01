// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ownership_controls_rule.dart';

/// Definition of OwnershipControls
class OwnershipControls {
  /// Specifies the container element for Object Ownership rules.
  final List<OwnershipControlsRule>? rules;

  /// Creates a new [OwnershipControls].
  /// [rules] Specifies the container element for Object Ownership rules.
  OwnershipControls({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?rules == null ? null : pulumi.Input.encodeList<OwnershipControlsRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory OwnershipControls.fromMap(Map<String, dynamic> map) {
    return OwnershipControls(
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<OwnershipControlsRule>(map['rules'], (value) => OwnershipControlsRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

