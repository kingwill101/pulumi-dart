// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../default_security_group_egress/default_security_group_egress.dart';
import '../default_security_group_ingress/default_security_group_ingress.dart';

/// The set of arguments for DefaultSecurityGroup.
class DefaultSecurityGroupArgs {
  /// Configuration block. Detailed below.
  final Input<List<DefaultSecurityGroupEgress>>? egress;

  /// Configuration block. Detailed below.
  final Input<List<DefaultSecurityGroupIngress>>? ingress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<bool>? revokeRulesOnDelete;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// VPC ID. **Note that changing the <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  final Input<String>? vpcId;

  DefaultSecurityGroupArgs({
    this.egress,
    this.ingress,
    this.region,
    this.revokeRulesOnDelete,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressValue = egress;
    if (egressValue != null) {
      map['egress'] = Input.mapOptionalInputValue<
              List<DefaultSecurityGroupEgress>, List<Map<String, dynamic>>>(
          egressValue,
          (value) => Input.encodeList<DefaultSecurityGroupEgress,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ingressValue = ingress;
    if (ingressValue != null) {
      map['ingress'] = Input.mapOptionalInputValue<
              List<DefaultSecurityGroupIngress>, List<Map<String, dynamic>>>(
          ingressValue,
          (value) => Input.encodeList<DefaultSecurityGroupIngress,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final revokeRulesOnDeleteValue = revokeRulesOnDelete;
    if (revokeRulesOnDeleteValue != null) {
      map['revokeRulesOnDelete'] = revokeRulesOnDeleteValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory DefaultSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return DefaultSecurityGroupArgs(
      egress: Input.asOptionalInput<List<DefaultSecurityGroupEgress>>(
          map['egress']),
      ingress: Input.asOptionalInput<List<DefaultSecurityGroupIngress>>(
          map['ingress']),
      region: Input.asOptionalInput<String>(map['region']),
      revokeRulesOnDelete:
          Input.asOptionalInput<bool>(map['revokeRulesOnDelete']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
