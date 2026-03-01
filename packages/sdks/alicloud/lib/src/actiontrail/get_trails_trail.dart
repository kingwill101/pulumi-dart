// ignore_for_file: unused_element, unnecessary_cast


class GetTrailsTrail {
  /// Indicates whether the event is a read or a write event.
  final String eventRw;
  /// The id of the ActionTrail Trail. It is the same as trail name.
  final String id;
  final bool isOrganizationTrail;
  /// The name of the specified OSS bucket.
  final String ossBucketName;
  /// The prefix of the specified OSS bucket name.
  final String ossKeyPrefix;
  final String ossWriteRoleArn;
  /// The unique ARN of the Log Service project.
  final String slsProjectArn;
  /// The unique ARN of the Log Service role.
  final String slsWriteRoleArn;
  /// Filter the results by status of the ActionTrail Trail. Valid values: `Disable`, `Enable`, `Fresh`.
  final String status;
  /// The name of the ActionTrail Trail.
  final String trailName;
  /// The regions to which the trail is applied.
  final String trailRegion;

  /// Creates a new [GetTrailsTrail].
  /// [eventRw] Indicates whether the event is a read or a write event.
  /// [id] The id of the ActionTrail Trail. It is the same as trail name.
  /// [isOrganizationTrail] Required.
  /// [ossBucketName] The name of the specified OSS bucket.
  /// [ossKeyPrefix] The prefix of the specified OSS bucket name.
  /// [ossWriteRoleArn] Required.
  /// [slsProjectArn] The unique ARN of the Log Service project.
  /// [slsWriteRoleArn] The unique ARN of the Log Service role.
  /// [status] Filter the results by status of the ActionTrail Trail. Valid values: `Disable`, `Enable`, `Fresh`.
  /// [trailName] The name of the ActionTrail Trail.
  /// [trailRegion] The regions to which the trail is applied.
  GetTrailsTrail({
    required this.eventRw,
    required this.id,
    required this.isOrganizationTrail,
    required this.ossBucketName,
    required this.ossKeyPrefix,
    required this.ossWriteRoleArn,
    required this.slsProjectArn,
    required this.slsWriteRoleArn,
    required this.status,
    required this.trailName,
    required this.trailRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventRw': eventRw,
      'id': id,
      'isOrganizationTrail': isOrganizationTrail,
      'ossBucketName': ossBucketName,
      'ossKeyPrefix': ossKeyPrefix,
      'ossWriteRoleArn': ossWriteRoleArn,
      'slsProjectArn': slsProjectArn,
      'slsWriteRoleArn': slsWriteRoleArn,
      'status': status,
      'trailName': trailName,
      'trailRegion': trailRegion,
    };
  }

  factory GetTrailsTrail.fromMap(Map<String, dynamic> map) {
    return GetTrailsTrail(
      eventRw: map['eventRw'] as String,
      id: map['id'] as String,
      isOrganizationTrail: map['isOrganizationTrail'] as bool,
      ossBucketName: map['ossBucketName'] as String,
      ossKeyPrefix: map['ossKeyPrefix'] as String,
      ossWriteRoleArn: map['ossWriteRoleArn'] as String,
      slsProjectArn: map['slsProjectArn'] as String,
      slsWriteRoleArn: map['slsWriteRoleArn'] as String,
      status: map['status'] as String,
      trailName: map['trailName'] as String,
      trailRegion: map['trailRegion'] as String,
    );
  }
}

