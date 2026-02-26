// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getZone.
class GetZoneArgs {
  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone.
  final Input<bool>? enableAcceleratedRecovery;

  /// Hosted Zone name of the desired Hosted Zone. If blank, then accept any name, filtering on only <span pulumi-lang-nodejs="`privateZone`" pulumi-lang-dotnet="`PrivateZone`" pulumi-lang-go="`privateZone`" pulumi-lang-python="`private_zone`" pulumi-lang-yaml="`privateZone`" pulumi-lang-java="`privateZone`">`private_zone`</span>, <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> and <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span>.
  final Input<String>? name;

  /// Filter to only private Hosted Zones.
  final Input<bool>? privateZone;

  /// A map of tags, each pair of which must exactly match a pair on the desired Hosted Zone.
  ///
  /// The arguments of this data source act as filters for querying the available Hosted Zone.
  ///
  /// - The given filter must match exactly one Hosted Zone.
  final Input<Map<String, String>>? tags;

  /// Filter to private Hosted Zones associated with the specified <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span>.
  final Input<String>? vpcId;

  /// and <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> are mutually exclusive.
  /// - If you use the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> argument for a private Hosted Zone, you need to set the <span pulumi-lang-nodejs="`privateZone`" pulumi-lang-dotnet="`PrivateZone`" pulumi-lang-go="`privateZone`" pulumi-lang-python="`private_zone`" pulumi-lang-yaml="`privateZone`" pulumi-lang-java="`privateZone`">`private_zone`</span> argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<String>? zoneId;

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
          Input.asOptionalInput<bool>(map['enableAcceleratedRecovery']),
      name: Input.asOptionalInput<String>(map['name']),
      privateZone: Input.asOptionalInput<bool>(map['privateZone']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
      zoneId: Input.asOptionalInput<String>(map['zoneId']),
    );
  }
}
