// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ownership_controls_rule.dart';

/// Definition of OwnershipControls
class OwnershipControls {
  /// Specifies the container element for Object Ownership rules.
  final pulumi.Input<List<OwnershipControlsRule>>? rules;

  /// Creates a new [OwnershipControls].
  /// [rules] Specifies the container element for Object Ownership rules.
  OwnershipControls({this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<OwnershipControlsRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  OwnershipControlsRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory OwnershipControls.fromMap(Map<String, dynamic> map) {
    return OwnershipControls(
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OwnershipControlsRule>(
            guardedValue,
            (value) => OwnershipControlsRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
