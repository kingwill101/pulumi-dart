// ignore_for_file: unused_element, unnecessary_cast

class UserPoolUserAttributeUpdateSettings {
  /// A list of attributes requiring verification before update. If set, the provided value(s) must also be set in <span pulumi-lang-nodejs="`autoVerifiedAttributes`" pulumi-lang-dotnet="`AutoVerifiedAttributes`" pulumi-lang-go="`autoVerifiedAttributes`" pulumi-lang-python="`auto_verified_attributes`" pulumi-lang-yaml="`autoVerifiedAttributes`" pulumi-lang-java="`autoVerifiedAttributes`">`auto_verified_attributes`</span>. Valid values: <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span>, <span pulumi-lang-nodejs="`phoneNumber`" pulumi-lang-dotnet="`PhoneNumber`" pulumi-lang-go="`phoneNumber`" pulumi-lang-python="`phone_number`" pulumi-lang-yaml="`phoneNumber`" pulumi-lang-java="`phoneNumber`">`phone_number`</span>.
  final List<String> attributesRequireVerificationBeforeUpdates;

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
