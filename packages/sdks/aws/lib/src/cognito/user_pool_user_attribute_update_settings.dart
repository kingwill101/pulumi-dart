// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolUserAttributeUpdateSettings {
  /// A list of attributes requiring verification before update. If set, the provided value(s) must also be set in `auto_verified_attributes`. Valid values: `email`, `phone_number`.
  final pulumi.Input<List<String>> attributesRequireVerificationBeforeUpdates;

  /// Creates a new [UserPoolUserAttributeUpdateSettings].
  /// [attributesRequireVerificationBeforeUpdates] A list of attributes requiring verification before update. If set, the provided value(s) must also be set in `auto_verified_attributes`. Valid values: `email`, `phone_number`.
  UserPoolUserAttributeUpdateSettings({
    required this.attributesRequireVerificationBeforeUpdates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributesRequireVerificationBeforeUpdates': attributesRequireVerificationBeforeUpdates,
    };
  }

  factory UserPoolUserAttributeUpdateSettings.fromMap(Map<String, dynamic> map) {
    return UserPoolUserAttributeUpdateSettings(
      attributesRequireVerificationBeforeUpdates: pulumi.Input.fromValue((map['attributesRequireVerificationBeforeUpdates'] as List).cast<String>()),
    );
  }
}

