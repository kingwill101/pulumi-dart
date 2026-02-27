// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_acl_egress/network_acl_egress.dart';
import '../network_acl_ingress/network_acl_ingress.dart';

/// The set of arguments for NetworkAcl.
class NetworkAclArgs {
  /// Specifies an egress rule. Parameters defined below.
  final pulumi.Input<List<NetworkAclEgress>>? egress;

  /// Specifies an ingress rule. Parameters defined below.
  final pulumi.Input<List<NetworkAclIngress>>? ingress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A list of Subnet IDs to apply the ACL to
  final pulumi.Input<List<String>>? subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the associated VPC.
  final pulumi.Input<String> vpcId;

  NetworkAclArgs({
    this.egress,
    this.ingress,
    this.region,
    this.subnetIds,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressValue = egress;
    if (egressValue != null) {
      map['egress'] = pulumi.Input.mapOptionalInputValue<List<NetworkAclEgress>,
              List<Map<String, dynamic>>>(
          egressValue,
          (value) =>
              pulumi.Input.encodeList<NetworkAclEgress, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final ingressValue = ingress;
    if (ingressValue != null) {
      map['ingress'] = pulumi.Input.mapOptionalInputValue<
              List<NetworkAclIngress>, List<Map<String, dynamic>>>(
          ingressValue,
          (value) =>
              pulumi.Input.encodeList<NetworkAclIngress, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory NetworkAclArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAclArgs(
      egress:
          pulumi.Input.asOptionalInput<List<NetworkAclEgress>>(map['egress']),
      ingress:
          pulumi.Input.asOptionalInput<List<NetworkAclIngress>>(map['ingress']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subnetIds: pulumi.Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}
