// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getZone.
class GetZoneArgs {
  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone.
  final pulumi.Input<bool>? enableAcceleratedRecovery;

  /// Hosted Zone name of the desired Hosted Zone. If blank, then accept any name, filtering on only `private_zone`, `vpc_id` and `tags`.
  final pulumi.Input<String>? name;

  /// Filter to only private Hosted Zones.
  final pulumi.Input<bool>? privateZone;

  /// A map of tags, each pair of which must exactly match a pair on the desired Hosted Zone.
  ///
  /// The arguments of this data source act as filters for querying the available Hosted Zone.
  ///
  /// - The given filter must match exactly one Hosted Zone.
  final pulumi.Input<Map<String, String>>? tags;

  /// Filter to private Hosted Zones associated with the specified `vpc_id`.
  final pulumi.Input<String>? vpcId;

  /// and `name` are mutually exclusive.
  /// - If you use the `name` argument for a private Hosted Zone, you need to set the `private_zone` argument to `true`.
  final pulumi.Input<String>? zoneId;

  GetZoneArgs({
    this.enableAcceleratedRecovery,
    this.name,
    this.privateZone,
    this.tags,
    this.vpcId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableAcceleratedRecoveryValue = enableAcceleratedRecovery;
    if (enableAcceleratedRecoveryValue != null) {
      map['enableAcceleratedRecovery'] = enableAcceleratedRecoveryValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final privateZoneValue = privateZone;
    if (privateZoneValue != null) {
      map['privateZone'] = privateZoneValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    final zoneIdValue = zoneId;
    if (zoneIdValue != null) {
      map['zoneId'] = zoneIdValue;
    }
    return map;
  }

  factory GetZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneArgs(
      enableAcceleratedRecovery:
          pulumi.Input.asOptionalInput<bool>(map['enableAcceleratedRecovery']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      privateZone: pulumi.Input.asOptionalInput<bool>(map['privateZone']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asOptionalInput<String>(map['vpcId']),
      zoneId: pulumi.Input.asOptionalInput<String>(map['zoneId']),
    );
  }
}
