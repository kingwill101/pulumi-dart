// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedRuleGroupConsumedLabel {
  /// Managed rule group name.
  final pulumi.Input<String> name;

  /// Creates a new [GetManagedRuleGroupConsumedLabel].
  /// [name] Managed rule group name.
  const GetManagedRuleGroupConsumedLabel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetManagedRuleGroupConsumedLabel.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupConsumedLabel(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
