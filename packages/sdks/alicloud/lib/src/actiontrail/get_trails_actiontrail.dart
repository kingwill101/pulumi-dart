// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrailsActiontrail {
  /// Indicates whether the event is a read or a write event.
  final pulumi.Input<String> eventRw;
  /// The id of the ActionTrail Trail. It is the same as trail name.
  final pulumi.Input<String> id;
  final pulumi.Input<bool> isOrganizationTrail;
  /// The name of the specified OSS bucket.
  final pulumi.Input<String> ossBucketName;
  /// The prefix of the specified OSS bucket name.
  final pulumi.Input<String> ossKeyPrefix;
  final pulumi.Input<String> ossWriteRoleArn;
  /// The unique ARN of the Log Service project.
  final pulumi.Input<String> slsProjectArn;
  /// The unique ARN of the Log Service role.
  final pulumi.Input<String> slsWriteRoleArn;
  /// Filter the results by status of the ActionTrail Trail. Valid values: `Disable`, `Enable`, `Fresh`.
  final pulumi.Input<String> status;
  /// The name of the ActionTrail Trail.
  final pulumi.Input<String> trailName;
  /// The regions to which the trail is applied.
  final pulumi.Input<String> trailRegion;

  /// Creates a new [GetTrailsActiontrail].
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
  GetTrailsActiontrail({
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

  factory GetTrailsActiontrail.fromMap(Map<String, dynamic> map) {
    return GetTrailsActiontrail(
      eventRw: (map['eventRw'] as String).input(),
      id: (map['id'] as String).input(),
      isOrganizationTrail: (map['isOrganizationTrail'] as bool).input(),
      ossBucketName: (map['ossBucketName'] as String).input(),
      ossKeyPrefix: (map['ossKeyPrefix'] as String).input(),
      ossWriteRoleArn: (map['ossWriteRoleArn'] as String).input(),
      slsProjectArn: (map['slsProjectArn'] as String).input(),
      slsWriteRoleArn: (map['slsWriteRoleArn'] as String).input(),
      status: (map['status'] as String).input(),
      trailName: (map['trailName'] as String).input(),
      trailRegion: (map['trailRegion'] as String).input(),
    );
  }
}

