// ignore_for_file: unused_element, unnecessary_cast

class GetProfilesProfilesProfile {
  /// ARN of the Profile.
  final String arn;

  /// ID of the Profile.
  final String id;

  /// Name of the Profile.
  final String name;

  /// Share status of the Profile. Valid values [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53profiles_Profile.html)
  final String shareStatus;

  GetProfilesProfilesProfile({
    required this.arn,
    required this.id,
    required this.name,
    required this.shareStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['shareStatus'] = shareStatus;
    return map;
  }

  factory GetProfilesProfilesProfile.fromMap(Map<String, dynamic> map) {
    return GetProfilesProfilesProfile(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      shareStatus: map['shareStatus'] as String,
    );
  }
}
