// ignore_for_file: unused_element, unnecessary_cast

/// Policy to be used while updating the instance.
class UpdatePolicyResponse {
  /// Mode for updating the instance.
  final String mode;

  /// Creates a new [UpdatePolicyResponse].
  /// [mode] Mode for updating the instance.
  UpdatePolicyResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory UpdatePolicyResponse.fromMap(Map<String, dynamic> map) {
    return UpdatePolicyResponse(
      mode: map['mode'] as String,
    );
  }
}
