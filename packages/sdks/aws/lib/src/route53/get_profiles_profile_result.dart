// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProfilesProfile.
class GetProfilesProfileResult {
  /// ARN of the Profile.
  final String arn;
  /// ID of the Profile.
  final String id;
  /// Name of the Profile.
  final String name;
  /// ID of the AWS account that owns the Profile.
  final String ownerId;
  final String region;
  /// Share status of the Profile.
  final String shareStatus;
  /// Status of the Profile.
  final String status;
  /// Status message of the Profile.
  final String statusMessage;
  /// Map of tags assigned to the Profile.
  final Map<String, String> tags;

  /// Creates a new [GetProfilesProfileResult].
  /// [arn] ARN of the Profile.
  /// [id] ID of the Profile.
  /// [name] Name of the Profile.
  /// [ownerId] ID of the AWS account that owns the Profile.
  /// [region] Required.
  /// [shareStatus] Share status of the Profile.
  /// [status] Status of the Profile.
  /// [statusMessage] Status message of the Profile.
  /// [tags] Map of tags assigned to the Profile.
  const GetProfilesProfileResult({
    required this.arn,
    required this.id,
    required this.name,
    required this.ownerId,
    required this.region,
    required this.shareStatus,
    required this.status,
    required this.statusMessage,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
      'ownerId': ownerId,
      'region': region,
      'shareStatus': shareStatus,
      'status': status,
      'statusMessage': statusMessage,
      'tags': tags,
    };
  }

  factory GetProfilesProfileResult.fromMap(Map<String, dynamic> map) {
    return GetProfilesProfileResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      shareStatus: map['shareStatus'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
