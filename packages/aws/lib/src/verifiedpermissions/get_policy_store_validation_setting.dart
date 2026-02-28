// ignore_for_file: unused_element, unnecessary_cast

class GetPolicyStoreValidationSetting {
  final String mode;

  /// Creates a new [GetPolicyStoreValidationSetting].
  /// [mode] Required.
  GetPolicyStoreValidationSetting({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory GetPolicyStoreValidationSetting.fromMap(Map<String, dynamic> map) {
    return GetPolicyStoreValidationSetting(
      mode: map['mode'] as String,
    );
  }
}
