// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedRuleGroupAvailableLabel {
  /// Managed rule group name.
  final pulumi.Input<String> name;

  /// Creates a new [GetManagedRuleGroupAvailableLabel].
  /// [name] Managed rule group name.
  GetManagedRuleGroupAvailableLabel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetManagedRuleGroupAvailableLabel.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupAvailableLabel(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

