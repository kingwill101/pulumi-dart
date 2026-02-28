// ignore_for_file: unused_element, unnecessary_cast

/// Policy to be used while updating the instance.
class UpdatePolicyResponseAlloydbV1beta {
  /// Mode for updating the instance.
  final String mode;

  /// Creates a new [UpdatePolicyResponseAlloydbV1beta].
  /// [mode] Mode for updating the instance.
  UpdatePolicyResponseAlloydbV1beta({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory UpdatePolicyResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return UpdatePolicyResponseAlloydbV1beta(
      mode: map['mode'] as String,
    );
  }
}
