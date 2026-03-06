// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrailDeprecated resources.
class TrailDeprecatedState {
  final pulumi.Input<String>? createTime;
  final pulumi.Input<String>? dataEventTrailRegion;
  /// Indicates whether the event is a read or a write event. Valid values: Read, Write, and All. Default value: Write.
  final pulumi.Input<String>? eventRw;
  final pulumi.Input<String>? eventSelectors;
  final pulumi.Input<bool>? isOrganizationTrail;
  final pulumi.Input<String>? maxComputeProjectArn;
  final pulumi.Input<String>? maxComputeWriteRoleArn;
  final pulumi.Input<String>? mnsTopicArn;
  /// The name of the trail to be created, which must be unique for an account.
  final pulumi.Input<String>? name;
  /// The OSS bucket to which the trail delivers logs. Ensure that this is an existing OSS bucket.
  final pulumi.Input<String>? ossBucketName;
  /// The prefix of the specified OSS bucket name. This parameter can be left empty.
  final pulumi.Input<String>? ossKeyPrefix;
  final pulumi.Input<String>? ossWriteRoleArn;
  final pulumi.Input<String>? regionId;
  /// The RAM role in ActionTrail permitted by the user.
  final pulumi.Input<String>? roleName;
  /// The unique ARN of the Log Service project.
  final pulumi.Input<String>? slsProjectArn;
  /// The unique ARN of the Log Service role.
  ///
  /// &gt; **NOTE:** `sls_project_arn` and `sls_write_role_arn` should be set or not set at the same time when actiontrail delivers logs.
  final pulumi.Input<String>? slsWriteRoleArn;
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? trailName;
  final pulumi.Input<String>? trailRegion;

  /// Creates a new [TrailDeprecatedState].
  /// [createTime] Optional.
  /// [dataEventTrailRegion] Optional.
  /// [eventRw] Indicates whether the event is a read or a write event. Valid values: Read, Write, and All. Default value: Write.
  /// [eventSelectors] Optional.
  /// [isOrganizationTrail] Optional.
  /// [maxComputeProjectArn] Optional.
  /// [maxComputeWriteRoleArn] Optional.
  /// [mnsTopicArn] Optional.
  /// [name] The name of the trail to be created, which must be unique for an account.
  /// [ossBucketName] The OSS bucket to which the trail delivers logs. Ensure that this is an existing OSS bucket.
  /// [ossKeyPrefix] The prefix of the specified OSS bucket name. This parameter can be left empty.
  /// [ossWriteRoleArn] Optional.
  /// [regionId] Optional.
  /// [roleName] The RAM role in ActionTrail permitted by the user.
  /// [slsProjectArn] The unique ARN of the Log Service project.
  /// [slsWriteRoleArn] The unique ARN of the Log Service role.
  /// [status] Optional.
  /// [trailName] Optional.
  /// [trailRegion] Optional.
  const TrailDeprecatedState({
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

  factory TrailDeprecatedState.fromMap(Map<String, dynamic> map) {
    return TrailDeprecatedState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataEventTrailRegion: (() { final guardedValue = map['dataEventTrailRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventRw: (() { final guardedValue = map['eventRw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventSelectors: (() { final guardedValue = map['eventSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isOrganizationTrail: (() { final guardedValue = map['isOrganizationTrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxComputeProjectArn: (() { final guardedValue = map['maxComputeProjectArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxComputeWriteRoleArn: (() { final guardedValue = map['maxComputeWriteRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mnsTopicArn: (() { final guardedValue = map['mnsTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossBucketName: (() { final guardedValue = map['ossBucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossKeyPrefix: (() { final guardedValue = map['ossKeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossWriteRoleArn: (() { final guardedValue = map['ossWriteRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsProjectArn: (() { final guardedValue = map['slsProjectArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsWriteRoleArn: (() { final guardedValue = map['slsWriteRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trailName: (() { final guardedValue = map['trailName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trailRegion: (() { final guardedValue = map['trailRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

