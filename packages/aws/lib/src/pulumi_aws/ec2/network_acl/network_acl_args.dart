// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_acl_egress/network_acl_egress.dart';
import '../network_acl_ingress/network_acl_ingress.dart';

/// The set of arguments for NetworkAcl.
class NetworkAclArgs {
  /// Specifies an egress rule. Parameters defined below.
  final Input<List<NetworkAclEgress>>? egress;

  /// Specifies an ingress rule. Parameters defined below.
  final Input<List<NetworkAclIngress>>? ingress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of Subnet IDs to apply the ACL to
  final Input<List<String>>? subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the associated VPC.
  final Input<String> vpcId;

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
      map['egress'] = Input.mapOptionalInputValue<List<NetworkAclEgress>,
              List<Map<String, dynamic>>>(
          egressValue,
          (value) => Input.encodeList<NetworkAclEgress, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final ingressValue = ingress;
    if (ingressValue != null) {
      map['ingress'] = Input.mapOptionalInputValue<List<NetworkAclIngress>,
              List<Map<String, dynamic>>>(
          ingressValue,
          (value) => Input.encodeList<NetworkAclIngress, Map<String, dynamic>>(
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
      egress: Input.asOptionalInput<List<NetworkAclEgress>>(map['egress']),
      ingress: Input.asOptionalInput<List<NetworkAclIngress>>(map['ingress']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetIds: Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
