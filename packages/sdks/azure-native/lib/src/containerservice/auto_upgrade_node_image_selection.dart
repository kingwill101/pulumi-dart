// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The node image upgrade to be applied to the target clusters in auto upgrade.
class AutoUpgradeNodeImageSelection {
  /// The node image upgrade type.
  final pulumi.Input<String> type;

  /// Creates a new [AutoUpgradeNodeImageSelection].
  /// [type] The node image upgrade type.
  const AutoUpgradeNodeImageSelection({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory AutoUpgradeNodeImageSelection.fromMap(Map<String, dynamic> map) {
    return AutoUpgradeNodeImageSelection(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
