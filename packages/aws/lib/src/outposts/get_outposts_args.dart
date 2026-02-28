// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_outposts_get_outposts_get_outposts_args_doc}
/// Arguments for getOutposts.
/// {@endtemplate}
/// {@macro pulumi_outposts_get_outposts_get_outposts_args_doc}
class GetOutpostsArgs {
  /// Availability Zone name.
  final pulumi.Input<String>? availabilityZone;

  /// Availability Zone identifier.
  final pulumi.Input<String>? availabilityZoneId;

  /// AWS Account identifier of the Outpost owner.
  final pulumi.Input<String>? ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Site identifier.
  final pulumi.Input<String>? siteId;

  /// Creates a new [GetOutpostsArgs].
  /// [availabilityZone] Availability Zone name.
  /// [availabilityZoneId] Availability Zone identifier.
  /// [ownerId] AWS Account identifier of the Outpost owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [siteId] Site identifier.
  GetOutpostsArgs({
    String? availabilityZone,
    String? availabilityZoneId,
    String? ownerId,
    String? region,
    String? siteId,
  })  : availabilityZone =
            pulumi.Input.asOptionalInput<String>(availabilityZone),
        availabilityZoneId =
            pulumi.Input.asOptionalInput<String>(availabilityZoneId),
        ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
        region = pulumi.Input.asOptionalInput<String>(region),
        siteId = pulumi.Input.asOptionalInput<String>(siteId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    final ownerIdValue = ownerId;
    if (ownerIdValue != null) {
      map['ownerId'] = ownerIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final siteIdValue = siteId;
    if (siteIdValue != null) {
      map['siteId'] = siteIdValue;
    }
    return map;
  }

  factory GetOutpostsArgs.fromMap(Map<String, dynamic> map) {
    return GetOutpostsArgs(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] == null
          ? null
          : map['availabilityZoneId'] as String,
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      siteId: map['siteId'] == null ? null : map['siteId'] as String,
    );
  }
}
