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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataEventTrailRegion,
    pulumi.Output<String>? eventRw,
    pulumi.Output<String>? eventSelectors,
    pulumi.Output<bool>? isOrganizationTrail,
    pulumi.Output<String>? maxComputeProjectArn,
    pulumi.Output<String>? maxComputeWriteRoleArn,
    pulumi.Output<String>? mnsTopicArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ossBucketName,
    pulumi.Output<String>? ossKeyPrefix,
    pulumi.Output<String>? ossWriteRoleArn,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? roleName,
    pulumi.Output<String>? slsProjectArn,
    pulumi.Output<String>? slsWriteRoleArn,
    pulumi.Output<String>? status,
    pulumi.Output<String>? trailName,
    pulumi.Output<String>? trailRegion,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataEventTrailRegion = pulumi.Input.asOptionalInput<String>(dataEventTrailRegion),
      eventRw = pulumi.Input.asOptionalInput<String>(eventRw),
      eventSelectors = pulumi.Input.asOptionalInput<String>(eventSelectors),
      isOrganizationTrail = pulumi.Input.asOptionalInput<bool>(isOrganizationTrail),
      maxComputeProjectArn = pulumi.Input.asOptionalInput<String>(maxComputeProjectArn),
      maxComputeWriteRoleArn = pulumi.Input.asOptionalInput<String>(maxComputeWriteRoleArn),
      mnsTopicArn = pulumi.Input.asOptionalInput<String>(mnsTopicArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      ossBucketName = pulumi.Input.asOptionalInput<String>(ossBucketName),
      ossKeyPrefix = pulumi.Input.asOptionalInput<String>(ossKeyPrefix),
      ossWriteRoleArn = pulumi.Input.asOptionalInput<String>(ossWriteRoleArn),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      slsProjectArn = pulumi.Input.asOptionalInput<String>(slsProjectArn),
      slsWriteRoleArn = pulumi.Input.asOptionalInput<String>(slsWriteRoleArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      trailName = pulumi.Input.asOptionalInput<String>(trailName),
      trailRegion = pulumi.Input.asOptionalInput<String>(trailRegion);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataEventTrailRegion: map['dataEventTrailRegion'] == null ? null : pulumi.Output.create<String>(map['dataEventTrailRegion'] as String),
      eventRw: map['eventRw'] == null ? null : pulumi.Output.create<String>(map['eventRw'] as String),
      eventSelectors: map['eventSelectors'] == null ? null : pulumi.Output.create<String>(map['eventSelectors'] as String),
      isOrganizationTrail: map['isOrganizationTrail'] == null ? null : pulumi.Output.create<bool>(map['isOrganizationTrail'] as bool),
      maxComputeProjectArn: map['maxComputeProjectArn'] == null ? null : pulumi.Output.create<String>(map['maxComputeProjectArn'] as String),
      maxComputeWriteRoleArn: map['maxComputeWriteRoleArn'] == null ? null : pulumi.Output.create<String>(map['maxComputeWriteRoleArn'] as String),
      mnsTopicArn: map['mnsTopicArn'] == null ? null : pulumi.Output.create<String>(map['mnsTopicArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ossBucketName: map['ossBucketName'] == null ? null : pulumi.Output.create<String>(map['ossBucketName'] as String),
      ossKeyPrefix: map['ossKeyPrefix'] == null ? null : pulumi.Output.create<String>(map['ossKeyPrefix'] as String),
      ossWriteRoleArn: map['ossWriteRoleArn'] == null ? null : pulumi.Output.create<String>(map['ossWriteRoleArn'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      slsProjectArn: map['slsProjectArn'] == null ? null : pulumi.Output.create<String>(map['slsProjectArn'] as String),
      slsWriteRoleArn: map['slsWriteRoleArn'] == null ? null : pulumi.Output.create<String>(map['slsWriteRoleArn'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      trailName: map['trailName'] == null ? null : pulumi.Output.create<String>(map['trailName'] as String),
      trailRegion: map['trailRegion'] == null ? null : pulumi.Output.create<String>(map['trailRegion'] as String),
    );
  }
}

