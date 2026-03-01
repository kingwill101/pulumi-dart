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
    pulumi.Output<String>? arn,
    pulumi.Output<List<LandingZoneDriftStatus>>? driftStatuses,
    pulumi.Output<String>? latestAvailableVersion,
    pulumi.Output<String>? manifestJson,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      driftStatuses = pulumi.Input.asOptionalInput<List<LandingZoneDriftStatus>>(driftStatuses),
      latestAvailableVersion = pulumi.Input.asOptionalInput<String>(latestAvailableVersion),
      manifestJson = pulumi.Input.asOptionalInput<String>(manifestJson),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      driftStatuses: map['driftStatuses'] == null ? null : pulumi.Output.create<List<LandingZoneDriftStatus>>(pulumi.Input.decodeList<LandingZoneDriftStatus>(map['driftStatuses'], (value) => LandingZoneDriftStatus.fromMap((value as Map).cast<String, dynamic>()))),
      latestAvailableVersion: map['latestAvailableVersion'] == null ? null : pulumi.Output.create<String>(map['latestAvailableVersion'] as String),
      manifestJson: map['manifestJson'] == null ? null : pulumi.Output.create<String>(map['manifestJson'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

