// ignore_for_file: unused_element, unnecessary_cast


/// The node image upgrade to be applied to the target clusters in auto upgrade.
class AutoUpgradeNodeImageSelectionResponse {
  /// The node image upgrade type.
  final String type;

  /// Creates a new [AutoUpgradeNodeImageSelectionResponse].
  /// [type] The node image upgrade type.
  AutoUpgradeNodeImageSelectionResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory AutoUpgradeNodeImageSelectionResponse.fromMap(Map<String, dynamic> map) {
    return AutoUpgradeNodeImageSelectionResponse(
      type: map['type'] as String,
    );
  }
}

