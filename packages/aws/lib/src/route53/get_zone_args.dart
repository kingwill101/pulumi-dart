// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_zone_get_zone_args_doc}
/// Arguments for getZone.
/// {@endtemplate}
/// {@macro pulumi_route53_get_zone_get_zone_args_doc}
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

  /// Creates a new [GetZoneArgs].
  /// [enableAcceleratedRecovery] Boolean to indicate whether to enable accelerated recovery for the hosted zone.
  /// [name] Hosted Zone name of the desired Hosted Zone. If blank, then accept any name, filtering on only `private_zone`, `vpc_id` and `tags`.
  /// [privateZone] Filter to only private Hosted Zones.
  /// [tags] A map of tags, each pair of which must exactly match a pair on the desired Hosted Zone.
  /// [vpcId] Filter to private Hosted Zones associated with the specified `vpc_id`.
  /// [zoneId] and `name` are mutually exclusive.
  GetZoneArgs({
    bool? enableAcceleratedRecovery,
    String? name,
    bool? privateZone,
    Map<String, String>? tags,
    String? vpcId,
    String? zoneId,
  })  : enableAcceleratedRecovery =
            pulumi.Input.asOptionalInput<bool>(enableAcceleratedRecovery),
        name = pulumi.Input.asOptionalInput<String>(name),
        privateZone = pulumi.Input.asOptionalInput<bool>(privateZone),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
        zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      enableAcceleratedRecovery: map['enableAcceleratedRecovery'] == null
          ? null
          : map['enableAcceleratedRecovery'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      privateZone:
          map['privateZone'] == null ? null : map['privateZone'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}
