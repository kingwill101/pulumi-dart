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
  /// A mapping of tags to assign to the zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the `delegation_set_id` argument in this resource and any `aws.route53.ZoneAssociation` resource specifying the same zone ID. Detailed below.
  final pulumi.Input<List<ZoneVpc>>? vpcs;

  /// Creates a new [ZoneArgs].
  /// [comment] A comment for the hosted zone. Defaults to 'Managed by Pulumi'.
  /// [delegationSetId] The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with `vpc` as delegation sets can only be used for public zones.
  /// [enableAcceleratedRecovery] Boolean to indicate whether to enable accelerated recovery for the hosted zone. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing the argument.
  /// [forceDestroy] Whether to destroy all records (possibly managed outside of this provider) in the zone when destroying the zone.
  /// [name] This is the name of the hosted zone.
  /// [tags] A mapping of tags to assign to the zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcs] Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the `delegation_set_id` argument in this resource and any `aws.route53.ZoneAssociation` resource specifying the same zone ID. Detailed below.
  ZoneArgs({
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
      comment: map['comment'] == null ? null : ((map['comment'] as String).input()).input(),
      delegationSetId: map['delegationSetId'] == null ? null : ((map['delegationSetId'] as String).input()).input(),
      enableAcceleratedRecovery: map['enableAcceleratedRecovery'] == null ? null : ((map['enableAcceleratedRecovery'] as bool).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      vpcs: map['vpcs'] == null ? null : ((pulumi.Input.decodeList<ZoneVpc>(map['vpcs']!, (value) => ZoneVpc.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

