// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'landing_zone_drift_status.dart';

/// Input properties used for looking up and filtering LandingZone resources.
class LandingZoneState {
  /// The ARN of the landing zone.
  final pulumi.Input<String>? arn;
  /// The drift status summary of the landing zone.
  final pulumi.Input<List<LandingZoneDriftStatus>>? driftStatuses;
  /// The latest available version of the landing zone.
  final pulumi.Input<String>? latestAvailableVersion;
  /// The manifest JSON file is a text file that describes your AWS resources. For examples, review [Launch your landing zone](https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch).
  final pulumi.Input<String>? manifestJson;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the landing zone, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The landing zone version.
  final pulumi.Input<String>? version;

  /// Creates a new [LandingZoneState].
  /// [arn] The ARN of the landing zone.
  /// [driftStatuses] The drift status summary of the landing zone.
  /// [latestAvailableVersion] The latest available version of the landing zone.
  /// [manifestJson] The manifest JSON file is a text file that describes your AWS resources. For examples, review [Launch your landing zone](https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the landing zone, including those inherited from the provider `default_tags` configuration block.
  /// [version] The landing zone version.
  LandingZoneState({
    this.arn,
    this.driftStatuses,
    this.latestAvailableVersion,
    this.manifestJson,
    this.region,
    this.tags,
    this.tagsAll,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'driftStatuses': ?pulumi.Input.mapOptionalInputValue<List<LandingZoneDriftStatus>, List<Map<String, dynamic>>>(driftStatuses, (value) => pulumi.Input.encodeList<LandingZoneDriftStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'latestAvailableVersion': ?latestAvailableVersion,
      'manifestJson': ?manifestJson,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory LandingZoneState.fromMap(Map<String, dynamic> map) {
    return LandingZoneState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      driftStatuses: map['driftStatuses'] == null ? null : ((pulumi.Input.decodeList<LandingZoneDriftStatus>(map['driftStatuses']!, (value) => LandingZoneDriftStatus.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      latestAvailableVersion: map['latestAvailableVersion'] == null ? null : ((map['latestAvailableVersion'] as String).input()).input(),
      manifestJson: map['manifestJson'] == null ? null : ((map['manifestJson'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

