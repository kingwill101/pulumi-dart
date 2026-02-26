// ignore_for_file: unused_element, unnecessary_cast

class UserPoolAccountRecoverySettingRecoveryMechanism {
  /// Recovery method for a user. Can be of the following: <span pulumi-lang-nodejs="`verifiedEmail`" pulumi-lang-dotnet="`VerifiedEmail`" pulumi-lang-go="`verifiedEmail`" pulumi-lang-python="`verified_email`" pulumi-lang-yaml="`verifiedEmail`" pulumi-lang-java="`verifiedEmail`">`verified_email`</span>, <span pulumi-lang-nodejs="`verifiedPhoneNumber`" pulumi-lang-dotnet="`VerifiedPhoneNumber`" pulumi-lang-go="`verifiedPhoneNumber`" pulumi-lang-python="`verified_phone_number`" pulumi-lang-yaml="`verifiedPhoneNumber`" pulumi-lang-java="`verifiedPhoneNumber`">`verified_phone_number`</span>, and <span pulumi-lang-nodejs="`adminOnly`" pulumi-lang-dotnet="`AdminOnly`" pulumi-lang-go="`adminOnly`" pulumi-lang-python="`admin_only`" pulumi-lang-yaml="`adminOnly`" pulumi-lang-java="`adminOnly`">`admin_only`</span>.
  final String name;

  /// Positive integer specifying priority of a method with 1 being the highest priority.
  final int priority;

  UserPoolAccountRecoverySettingRecoveryMechanism({
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['priority'] = priority;
    return map;
  }

  factory UserPoolAccountRecoverySettingRecoveryMechanism.fromMap(
      Map<String, dynamic> map) {
    return UserPoolAccountRecoverySettingRecoveryMechanism(
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}
