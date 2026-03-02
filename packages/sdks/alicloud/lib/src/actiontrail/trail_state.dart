// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Trail resources.
class TrailState {
  /// (Available since v1.256.0) The time when the trail was created.
  final pulumi.Input<String>? createTime;
  /// The regions where the trail tracks data events. The value is a comma-separated list of region IDs.
  final pulumi.Input<String>? dataEventTrailRegion;
  /// The read/write type of the events to be delivered. Default value: `All`. Valid values: `Read`, `Write`, `All`.
  final pulumi.Input<String>? eventRw;
  /// The configuration of the data event selector. This parameter is a JSON array that can contain a maximum of 20 elements.
  final pulumi.Input<String>? eventSelectors;
  /// Specifies whether to create a multi-account trail. Default value: `false`. Valid values:
  final pulumi.Input<bool>? isOrganizationTrail;
  /// The ARN of the MaxCompute project to which you want to deliver events.
  final pulumi.Input<String>? maxComputeProjectArn;
  /// The ARN of the role that is assumed by ActionTrail to deliver events to the MaxCompute project.
  final pulumi.Input<String>? maxComputeWriteRoleArn;
  /// Field `mns_topic_arn` has been deprecated from provider version 1.118.0.
  final pulumi.Input<String>? mnsTopicArn;
  /// Field `name` has been deprecated from provider version 1.95.0. New field `trail_name` instead.
  final pulumi.Input<String>? name;
  /// The OSS bucket to which the trail delivers logs.
  final pulumi.Input<String>? ossBucketName;
  /// The prefix of the file name in the OSS bucket to which the trail delivers logs.
  final pulumi.Input<String>? ossKeyPrefix;
  /// The name of the RAM role that the user allows ActionTrail to access OSS service.
  final pulumi.Input<String>? ossWriteRoleArn;
  /// (Available since v1.256.0) The home region of the trail.
  final pulumi.Input<String>? regionId;
  /// Field `role_name` has been deprecated from provider version 1.118.0.
  final pulumi.Input<String>? roleName;
  /// The ARN of the Simple Log Service project to which the trail delivers logs.
  final pulumi.Input<String>? slsProjectArn;
  /// The ARN of the role that ActionTrail assumes to deliver operation events to the Simple Log Service project.
  final pulumi.Input<String>? slsWriteRoleArn;
  /// The status of the trail. Default value: `Enable`. Valid values: `Enable`, `Disable`.
  final pulumi.Input<String>? status;
  /// The name of the trail to be created.
  final pulumi.Input<String>? trailName;
  /// The region of the trail.
  final pulumi.Input<String>? trailRegion;

  /// Creates a new [TrailState].
  /// [createTime] (Available since v1.256.0) The time when the trail was created.
  /// [dataEventTrailRegion] The regions where the trail tracks data events. The value is a comma-separated list of region IDs.
  /// [eventRw] The read/write type of the events to be delivered. Default value: `All`. Valid values: `Read`, `Write`, `All`.
  /// [eventSelectors] The configuration of the data event selector. This parameter is a JSON array that can contain a maximum of 20 elements.
  /// [isOrganizationTrail] Specifies whether to create a multi-account trail. Default value: `false`. Valid values:
  /// [maxComputeProjectArn] The ARN of the MaxCompute project to which you want to deliver events.
  /// [maxComputeWriteRoleArn] The ARN of the role that is assumed by ActionTrail to deliver events to the MaxCompute project.
  /// [mnsTopicArn] Field `mns_topic_arn` has been deprecated from provider version 1.118.0.
  /// [name] Field `name` has been deprecated from provider version 1.95.0. New field `trail_name` instead.
  /// [ossBucketName] The OSS bucket to which the trail delivers logs.
  /// [ossKeyPrefix] The prefix of the file name in the OSS bucket to which the trail delivers logs.
  /// [ossWriteRoleArn] The name of the RAM role that the user allows ActionTrail to access OSS service.
  /// [regionId] (Available since v1.256.0) The home region of the trail.
  /// [roleName] Field `role_name` has been deprecated from provider version 1.118.0.
  /// [slsProjectArn] The ARN of the Simple Log Service project to which the trail delivers logs.
  /// [slsWriteRoleArn] The ARN of the role that ActionTrail assumes to deliver operation events to the Simple Log Service project.
  /// [status] The status of the trail. Default value: `Enable`. Valid values: `Enable`, `Disable`.
  /// [trailName] The name of the trail to be created.
  /// [trailRegion] The region of the trail.
  TrailState({
    this.createTime,
    this.dataEventTrailRegion,
    this.eventRw,
    this.eventSelectors,
    this.isOrganizationTrail,
    this.maxComputeProjectArn,
    this.maxComputeWriteRoleArn,
    this.mnsTopicArn,
    this.name,
    this.ossBucketName,
    this.ossKeyPrefix,
    this.ossWriteRoleArn,
    this.regionId,
    this.roleName,
    this.slsProjectArn,
    this.slsWriteRoleArn,
    this.status,
    this.trailName,
    this.trailRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataEventTrailRegion': ?dataEventTrailRegion,
      'eventRw': ?eventRw,
      'eventSelectors': ?eventSelectors,
      'isOrganizationTrail': ?isOrganizationTrail,
      'maxComputeProjectArn': ?maxComputeProjectArn,
      'maxComputeWriteRoleArn': ?maxComputeWriteRoleArn,
      'mnsTopicArn': ?mnsTopicArn,
      'name': ?name,
      'ossBucketName': ?ossBucketName,
      'ossKeyPrefix': ?ossKeyPrefix,
      'ossWriteRoleArn': ?ossWriteRoleArn,
      'regionId': ?regionId,
      'roleName': ?roleName,
      'slsProjectArn': ?slsProjectArn,
      'slsWriteRoleArn': ?slsWriteRoleArn,
      'status': ?status,
      'trailName': ?trailName,
      'trailRegion': ?trailRegion,
    };
  }

  factory TrailState.fromMap(Map<String, dynamic> map) {
    return TrailState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dataEventTrailRegion: map['dataEventTrailRegion'] == null ? null : (map['dataEventTrailRegion'] as String).input(),
      eventRw: map['eventRw'] == null ? null : (map['eventRw'] as String).input(),
      eventSelectors: map['eventSelectors'] == null ? null : (map['eventSelectors'] as String).input(),
      isOrganizationTrail: map['isOrganizationTrail'] == null ? null : (map['isOrganizationTrail'] as bool).input(),
      maxComputeProjectArn: map['maxComputeProjectArn'] == null ? null : (map['maxComputeProjectArn'] as String).input(),
      maxComputeWriteRoleArn: map['maxComputeWriteRoleArn'] == null ? null : (map['maxComputeWriteRoleArn'] as String).input(),
      mnsTopicArn: map['mnsTopicArn'] == null ? null : (map['mnsTopicArn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ossBucketName: map['ossBucketName'] == null ? null : (map['ossBucketName'] as String).input(),
      ossKeyPrefix: map['ossKeyPrefix'] == null ? null : (map['ossKeyPrefix'] as String).input(),
      ossWriteRoleArn: map['ossWriteRoleArn'] == null ? null : (map['ossWriteRoleArn'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
      slsProjectArn: map['slsProjectArn'] == null ? null : (map['slsProjectArn'] as String).input(),
      slsWriteRoleArn: map['slsWriteRoleArn'] == null ? null : (map['slsWriteRoleArn'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      trailName: map['trailName'] == null ? null : (map['trailName'] as String).input(),
      trailRegion: map['trailRegion'] == null ? null : (map['trailRegion'] as String).input(),
    );
  }
}

