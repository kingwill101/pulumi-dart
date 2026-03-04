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
      'driftStatuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<LandingZoneDriftStatus>,
            List<Map<String, dynamic>>
          >(
            driftStatuses,
            (value) =>
                pulumi.Input.encodeList<
                  LandingZoneDriftStatus,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      driftStatuses: (() {
        final guardedValue = map['driftStatuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LandingZoneDriftStatus>(
            guardedValue,
            (value) => LandingZoneDriftStatus.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      latestAvailableVersion: (() {
        final guardedValue = map['latestAvailableVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      manifestJson: (() {
        final guardedValue = map['manifestJson'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
