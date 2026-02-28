// ignore_for_file: unused_element, unnecessary_cast

class UserPoolUserAttributeUpdateSettings {
  /// A list of attributes requiring verification before update. If set, the provided value(s) must also be set in `auto_verified_attributes`. Valid values: `email`, `phone_number`.
  final List<String> attributesRequireVerificationBeforeUpdates;

  /// Creates a new [UserPoolUserAttributeUpdateSettings].
  /// [attributesRequireVerificationBeforeUpdates] A list of attributes requiring verification before update. If set, the provided value(s) must also be set in `auto_verified_attributes`. Valid values: `email`, `phone_number`.
  UserPoolUserAttributeUpdateSettings({
    required this.attributesRequireVerificationBeforeUpdates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributesRequireVerificationBeforeUpdates'] =
        attributesRequireVerificationBeforeUpdates;
    return map;
  }

  factory UserPoolUserAttributeUpdateSettings.fromMap(
      Map<String, dynamic> map) {
    return UserPoolUserAttributeUpdateSettings(
      attributesRequireVerificationBeforeUpdates:
          (map['attributesRequireVerificationBeforeUpdates'] as List)
              .cast<String>(),
    );
  }
}
