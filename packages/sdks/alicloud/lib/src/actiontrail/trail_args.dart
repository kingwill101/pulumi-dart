// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_trail_trail_args_doc}
/// The set of arguments for Trail.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_trail_trail_args_doc}
class TrailArgs {
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

  /// Creates a new [TrailArgs].
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
  /// [roleName] Field `role_name` has been deprecated from provider version 1.118.0.
  /// [slsProjectArn] The ARN of the Simple Log Service project to which the trail delivers logs.
  /// [slsWriteRoleArn] The ARN of the role that ActionTrail assumes to deliver operation events to the Simple Log Service project.
  /// [status] The status of the trail. Default value: `Enable`. Valid values: `Enable`, `Disable`.
  /// [trailName] The name of the trail to be created.
  /// [trailRegion] The region of the trail.
  TrailArgs({
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
    this.roleName,
    this.slsProjectArn,
    this.slsWriteRoleArn,
    this.status,
    this.trailName,
    this.trailRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'roleName': ?roleName,
      'slsProjectArn': ?slsProjectArn,
      'slsWriteRoleArn': ?slsWriteRoleArn,
      'status': ?status,
      'trailName': ?trailName,
      'trailRegion': ?trailRegion,
    };
  }

  factory TrailArgs.fromMap(Map<String, dynamic> map) {
    return TrailArgs(
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
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsProjectArn: (() { final guardedValue = map['slsProjectArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsWriteRoleArn: (() { final guardedValue = map['slsWriteRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trailName: (() { final guardedValue = map['trailName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trailRegion: (() { final guardedValue = map['trailRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

