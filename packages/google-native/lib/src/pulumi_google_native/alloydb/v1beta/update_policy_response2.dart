// ignore_for_file: unused_element, unnecessary_cast

/// Policy to be used while updating the instance.
class UpdatePolicyResponse2 {
  /// Mode for updating the instance.
  final String mode;

  UpdatePolicyResponse2({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory UpdatePolicyResponse2.fromMap(Map<String, dynamic> map) {
    return UpdatePolicyResponse2(
      mode: map['mode'] as String,
    );
  }
}
