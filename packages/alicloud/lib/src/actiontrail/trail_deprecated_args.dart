// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_trail_deprecated_trail_deprecated_args_doc}
/// The set of arguments for TrailDeprecated.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_trail_deprecated_trail_deprecated_args_doc}
class TrailDeprecatedArgs {
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
  /// The RAM role in ActionTrail permitted by the user.
  final pulumi.Input<String>? roleName;
  /// The unique ARN of the Log Service project.
  final pulumi.Input<String>? slsProjectArn;
  /// The unique ARN of the Log Service role.
  ///
  /// > **NOTE:** `sls_project_arn` and `sls_write_role_arn` should be set or not set at the same time when actiontrail delivers logs.
  final pulumi.Input<String>? slsWriteRoleArn;
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? trailName;
  final pulumi.Input<String>? trailRegion;

  /// Creates a new [TrailDeprecatedArgs].
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
  /// [roleName] The RAM role in ActionTrail permitted by the user.
  /// [slsProjectArn] The unique ARN of the Log Service project.
  /// [slsWriteRoleArn] The unique ARN of the Log Service role.
  /// [status] Optional.
  /// [trailName] Optional.
  /// [trailRegion] Optional.
  TrailDeprecatedArgs({
    String? dataEventTrailRegion,
    String? eventRw,
    String? eventSelectors,
    bool? isOrganizationTrail,
    String? maxComputeProjectArn,
    String? maxComputeWriteRoleArn,
    String? mnsTopicArn,
    String? name,
    String? ossBucketName,
    String? ossKeyPrefix,
    String? ossWriteRoleArn,
    String? roleName,
    String? slsProjectArn,
    String? slsWriteRoleArn,
    String? status,
    String? trailName,
    String? trailRegion,
  }) :
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
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      slsProjectArn = pulumi.Input.asOptionalInput<String>(slsProjectArn),
      slsWriteRoleArn = pulumi.Input.asOptionalInput<String>(slsWriteRoleArn),
      status = pulumi.Input.asOptionalInput<String>(status),
      trailName = pulumi.Input.asOptionalInput<String>(trailName),
      trailRegion = pulumi.Input.asOptionalInput<String>(trailRegion);

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

  factory TrailDeprecatedArgs.fromMap(Map<String, dynamic> map) {
    return TrailDeprecatedArgs(
      dataEventTrailRegion: map['dataEventTrailRegion'] == null ? null : map['dataEventTrailRegion'] as String,
      eventRw: map['eventRw'] == null ? null : map['eventRw'] as String,
      eventSelectors: map['eventSelectors'] == null ? null : map['eventSelectors'] as String,
      isOrganizationTrail: map['isOrganizationTrail'] == null ? null : map['isOrganizationTrail'] as bool,
      maxComputeProjectArn: map['maxComputeProjectArn'] == null ? null : map['maxComputeProjectArn'] as String,
      maxComputeWriteRoleArn: map['maxComputeWriteRoleArn'] == null ? null : map['maxComputeWriteRoleArn'] as String,
      mnsTopicArn: map['mnsTopicArn'] == null ? null : map['mnsTopicArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      ossBucketName: map['ossBucketName'] == null ? null : map['ossBucketName'] as String,
      ossKeyPrefix: map['ossKeyPrefix'] == null ? null : map['ossKeyPrefix'] as String,
      ossWriteRoleArn: map['ossWriteRoleArn'] == null ? null : map['ossWriteRoleArn'] as String,
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      slsProjectArn: map['slsProjectArn'] == null ? null : map['slsProjectArn'] as String,
      slsWriteRoleArn: map['slsWriteRoleArn'] == null ? null : map['slsWriteRoleArn'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      trailName: map['trailName'] == null ? null : map['trailName'] as String,
      trailRegion: map['trailRegion'] == null ? null : map['trailRegion'] as String,
    );
  }
}

