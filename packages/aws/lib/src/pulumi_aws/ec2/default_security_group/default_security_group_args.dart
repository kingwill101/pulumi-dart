// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../default_security_group_egress/default_security_group_egress.dart';
import '../default_security_group_ingress/default_security_group_ingress.dart';

/// The set of arguments for DefaultSecurityGroup.
class DefaultSecurityGroupArgs {
  /// Configuration block. Detailed below.
  final pulumi.Input<List<DefaultSecurityGroupEgress>>? egress;

  /// Configuration block. Detailed below.
  final pulumi.Input<List<DefaultSecurityGroupIngress>>? ingress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<bool>? revokeRulesOnDelete;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// VPC ID. **Note that changing the `vpc_id` will _not_ restore any default security group rules that were modified, added, or removed.** It will be left in its current state.
  final pulumi.Input<String>? vpcId;

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
      map['egress'] = pulumi.Input.mapOptionalInputValue<
              List<DefaultSecurityGroupEgress>, List<Map<String, dynamic>>>(
          egressValue,
          (value) => pulumi.Input.encodeList<DefaultSecurityGroupEgress,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ingressValue = ingress;
    if (ingressValue != null) {
      map['ingress'] = pulumi.Input.mapOptionalInputValue<
              List<DefaultSecurityGroupIngress>, List<Map<String, dynamic>>>(
          ingressValue,
          (value) => pulumi.Input.encodeList<DefaultSecurityGroupIngress,
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
      egress: pulumi.Input.asOptionalInput<List<DefaultSecurityGroupEgress>>(
          map['egress']),
      ingress: pulumi.Input.asOptionalInput<List<DefaultSecurityGroupIngress>>(
          map['ingress']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      revokeRulesOnDelete:
          pulumi.Input.asOptionalInput<bool>(map['revokeRulesOnDelete']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
