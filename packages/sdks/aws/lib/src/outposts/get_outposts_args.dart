// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_outposts_get_outposts_get_outposts_args_doc}
/// Arguments for getOutposts.
/// {@endtemplate}
/// {@macro pulumi_outposts_get_outposts_get_outposts_args_doc}
class GetOutpostsArgs {
  /// Availability Zone name.
  final pulumi.Input<String?>? availabilityZone;
  /// Availability Zone identifier.
  final pulumi.Input<String?>? availabilityZoneId;
  /// AWS Account identifier of the Outpost owner.
  final pulumi.Input<String?>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Site identifier.
  final pulumi.Input<String?>? siteId;

  /// Creates a new [GetOutpostsArgs].
  /// [availabilityZone] Availability Zone name.
  /// [availabilityZoneId] Availability Zone identifier.
  /// [ownerId] AWS Account identifier of the Outpost owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [siteId] Site identifier.
  const GetOutpostsArgs({
    this.availabilityZone,
    this.availabilityZoneId,
    this.ownerId,
    this.region,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'ownerId': ?ownerId,
      'region': ?region,
      'siteId': ?siteId,
    };
  }

  factory GetOutpostsArgs.fromMap(Map<String, dynamic> map) {
    return GetOutpostsArgs(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
