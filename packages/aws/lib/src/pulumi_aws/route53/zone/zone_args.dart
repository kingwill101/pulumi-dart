// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../zone_vpc/zone_vpc.dart';

/// The set of arguments for Zone.
class ZoneArgs {
  /// A comment for the hosted zone. Defaults to 'Managed by Pulumi'.
  final Input<String>? comment;

  /// The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with `vpc` as delegation sets can only be used for public zones.
  final Input<String>? delegationSetId;

  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing the argument.
  final Input<bool>? enableAcceleratedRecovery;

  /// Whether to destroy all records (possibly managed outside of this provider) in the zone when destroying the zone.
  final Input<bool>? forceDestroy;

  /// This is the name of the hosted zone.
  final Input<String>? name;

  /// A mapping of tags to assign to the zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the `delegation_set_id` argument in this resource and any `aws.route53.ZoneAssociation` resource specifying the same zone ID. Detailed below.
  final Input<List<ZoneVpc>>? vpcs;

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
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final delegationSetIdValue = delegationSetId;
    if (delegationSetIdValue != null) {
      map['delegationSetId'] = delegationSetIdValue;
    }
    final enableAcceleratedRecoveryValue = enableAcceleratedRecovery;
    if (enableAcceleratedRecoveryValue != null) {
      map['enableAcceleratedRecovery'] = enableAcceleratedRecoveryValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcsValue = vpcs;
    if (vpcsValue != null) {
      map['vpcs'] = Input.mapOptionalInputValue<List<ZoneVpc>,
              List<Map<String, dynamic>>>(
          vpcsValue,
          (value) => Input.encodeList<ZoneVpc, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      comment: Input.asOptionalInput<String>(map['comment']),
      delegationSetId: Input.asOptionalInput<String>(map['delegationSetId']),
      enableAcceleratedRecovery:
          Input.asOptionalInput<bool>(map['enableAcceleratedRecovery']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      name: Input.asOptionalInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcs: Input.asOptionalInput<List<ZoneVpc>>(map['vpcs']),
    );
  }
}
