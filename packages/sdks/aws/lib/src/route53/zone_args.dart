// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_vpc.dart';

/// {@template pulumi_route53_zone_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_route53_zone_zone_args_doc}
class ZoneArgs {
  /// A comment for the hosted zone. Defaults to 'Managed by Pulumi'.
  final pulumi.Input<String>? comment;
  /// The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with `vpc` as delegation sets can only be used for public zones.
  final pulumi.Input<String>? delegationSetId;
  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing the argument.
  final pulumi.Input<bool>? enableAcceleratedRecovery;
  /// Whether to destroy all records (possibly managed outside of this provider) in the zone when destroying the zone.
  final pulumi.Input<bool>? forceDestroy;
  /// This is the name of the hosted zone.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the zone. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the `delegationSetId` argument in this resource and any `aws.route53.ZoneAssociation` resource specifying the same zone ID. Detailed below.
  final pulumi.Input<List<ZoneVpc>>? vpcs;

  /// Creates a new [ZoneArgs].
  /// [comment] A comment for the hosted zone. Defaults to 'Managed by Pulumi'.
  /// [delegationSetId] The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with `vpc` as delegation sets can only be used for public zones.
  /// [enableAcceleratedRecovery] Boolean to indicate whether to enable accelerated recovery for the hosted zone. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing the argument.
  /// [forceDestroy] Whether to destroy all records (possibly managed outside of this provider) in the zone when destroying the zone.
  /// [name] This is the name of the hosted zone.
  /// [tags] A mapping of tags to assign to the zone. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcs] Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the `delegationSetId` argument in this resource and any `aws.route53.ZoneAssociation` resource specifying the same zone ID. Detailed below.
  const ZoneArgs({
    this.comment,
    this.delegationSetId,
    this.enableAcceleratedRecovery,
    this.forceDestroy,
    this.name,
    this.tags,
    this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'delegationSetId': ?delegationSetId,
      'enableAcceleratedRecovery': ?enableAcceleratedRecovery,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
      'tags': ?tags,
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<ZoneVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<ZoneVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delegationSetId: (() { final guardedValue = map['delegationSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAcceleratedRecovery: (() { final guardedValue = map['enableAcceleratedRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcs: (() { final guardedValue = map['vpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneVpc>(guardedValue, (value) => ZoneVpc.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
