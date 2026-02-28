// ignore_for_file: unused_element, unnecessary_cast

class UserProfileDetailIam {
  final String arn;

  /// Creates a new [UserProfileDetailIam].
  /// [arn] Required.
  UserProfileDetailIam({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory UserProfileDetailIam.fromMap(Map<String, dynamic> map) {
    return UserProfileDetailIam(
      arn: map['arn'] as String,
    );
  }
}
