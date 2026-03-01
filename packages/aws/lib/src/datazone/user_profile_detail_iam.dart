// ignore_for_file: unused_element, unnecessary_cast

class UserProfileDetailIam {
  final String arn;

  /// Creates a new [UserProfileDetailIam].
  /// [arn] Required.
  UserProfileDetailIam({required this.arn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn};
  }

  factory UserProfileDetailIam.fromMap(Map<String, dynamic> map) {
    return UserProfileDetailIam(arn: map['arn'] as String);
  }
}
