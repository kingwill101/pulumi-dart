// ignore_for_file: unused_element, unnecessary_cast

class TargetCustomTarget {
  /// Required. The name of the CustomTargetType. Format must be `projects/{project}/locations/{location}/customTargetTypes/{custom_target_type}`.
  final String customTargetType;

  /// Creates a new [TargetCustomTarget].
  /// [customTargetType] Required. The name of the CustomTargetType. Format must be `projects/{project}/locations/{location}/customTargetTypes/{custom_target_type}`.
  TargetCustomTarget({required this.customTargetType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'customTargetType': customTargetType};
  }

  factory TargetCustomTarget.fromMap(Map<String, dynamic> map) {
    return TargetCustomTarget(
      customTargetType: map['customTargetType'] as String,
    );
  }
}
