// ignore_for_file: unused_element, unnecessary_cast


/// The node image upgrade to be applied to the target clusters in auto upgrade.
class AutoUpgradeNodeImageSelection {
  /// The node image upgrade type.
  final String type;

  /// Creates a new [AutoUpgradeNodeImageSelection].
  /// [type] The node image upgrade type.
  AutoUpgradeNodeImageSelection({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory AutoUpgradeNodeImageSelection.fromMap(Map<String, dynamic> map) {
    return AutoUpgradeNodeImageSelection(
      type: map['type'] as String,
    );
  }
}

