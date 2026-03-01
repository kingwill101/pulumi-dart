// ignore_for_file: unused_element, unnecessary_cast


class GetTrailsDeprecatedTrail {
  /// Indicates whether the event is a read or a write event.
  final String eventRw;
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
  final String status;
  final String trailName;
  final String trailRegion;

  /// Creates a new [GetTrailsDeprecatedTrail].
  /// [eventRw] Indicates whether the event is a read or a write event.
  /// [id] Required.
  /// [isOrganizationTrail] Required.
  /// [ossBucketName] The name of the specified OSS bucket.
  /// [ossKeyPrefix] The prefix of the specified OSS bucket name.
  /// [ossWriteRoleArn] Required.
  /// [slsProjectArn] The unique ARN of the Log Service project.
  /// [slsWriteRoleArn] The unique ARN of the Log Service role.
  /// [status] Required.
  /// [trailName] Required.
  /// [trailRegion] Required.
  GetTrailsDeprecatedTrail({
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

  factory GetTrailsDeprecatedTrail.fromMap(Map<String, dynamic> map) {
    return GetTrailsDeprecatedTrail(
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

