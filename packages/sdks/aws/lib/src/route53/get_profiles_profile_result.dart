// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProfilesProfile.
class GetProfilesProfileResult {
  /// ARN of the Profile.
  final String? arn;
  /// ID of the Profile.
  final String? id;
  /// Name of the Profile.
  final String? name;
  /// ID of the AWS account that owns the Profile.
  final String? ownerId;
  final String? region;
  /// Share status of the Profile.
  final String? shareStatus;
  /// Status of the Profile.
  final String? status;
  /// Status message of the Profile.
  final String? statusMessage;
  /// Map of tags assigned to the Profile.
  final Map<String, String>? tags;

  /// Creates a new [GetProfilesProfileResult].
  /// [arn] ARN of the Profile.
  /// [id] ID of the Profile.
  /// [name] Name of the Profile.
  /// [ownerId] ID of the AWS account that owns the Profile.
  /// [region] Optional.
  /// [shareStatus] Share status of the Profile.
  /// [status] Status of the Profile.
  /// [statusMessage] Status message of the Profile.
  /// [tags] Map of tags assigned to the Profile.
  const GetProfilesProfileResult({
    this.arn,
    this.id,
    this.name,
    this.ownerId,
    this.region,
    this.shareStatus,
    this.status,
    this.statusMessage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'ownerId': ?ownerId,
      'region': ?region,
      'shareStatus': ?shareStatus,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'tags': ?tags,
    };
  }

  factory GetProfilesProfileResult.fromMap(Map<String, dynamic> map) {
    return GetProfilesProfileResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareStatus: (() { final guardedValue = map['shareStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
