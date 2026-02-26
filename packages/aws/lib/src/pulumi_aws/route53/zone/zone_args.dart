// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../zone_vpc/zone_vpc.dart';

/// The set of arguments for Zone.
class ZoneArgs {
  /// A comment for the hosted zone. Defaults to 'Managed by Pulumi'.
  final Input<String>? comment;

  /// The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with <span pulumi-lang-nodejs="`vpc`" pulumi-lang-dotnet="`Vpc`" pulumi-lang-go="`vpc`" pulumi-lang-python="`vpc`" pulumi-lang-yaml="`vpc`" pulumi-lang-java="`vpc`">`vpc`</span> as delegation sets can only be used for public zones.
  final Input<String>? delegationSetId;

  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Once set, switching to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> requires explicitly specifying <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> rather than removing the argument.
  final Input<bool>? enableAcceleratedRecovery;

  /// Whether to destroy all records (possibly managed outside of this provider) in the zone when destroying the zone.
  final Input<bool>? forceDestroy;

  /// This is the name of the hosted zone.
  final Input<String>? name;

  /// A mapping of tags to assign to the zone. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the <span pulumi-lang-nodejs="`delegationSetId`" pulumi-lang-dotnet="`DelegationSetId`" pulumi-lang-go="`delegationSetId`" pulumi-lang-python="`delegation_set_id`" pulumi-lang-yaml="`delegationSetId`" pulumi-lang-java="`delegationSetId`">`delegation_set_id`</span> argument in this resource and any <span pulumi-lang-nodejs="`aws.route53.ZoneAssociation`" pulumi-lang-dotnet="`aws.route53.ZoneAssociation`" pulumi-lang-go="`route53.ZoneAssociation`" pulumi-lang-python="`route53.ZoneAssociation`" pulumi-lang-yaml="`aws.route53.ZoneAssociation`" pulumi-lang-java="`aws.route53.ZoneAssociation`">`aws.route53.ZoneAssociation`</span> resource specifying the same zone ID. Detailed below.
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
