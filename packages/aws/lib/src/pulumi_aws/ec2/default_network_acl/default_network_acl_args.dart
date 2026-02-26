// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../default_network_acl_egress/default_network_acl_egress.dart';
import '../default_network_acl_ingress/default_network_acl_ingress.dart';

/// The set of arguments for DefaultNetworkAcl.
class DefaultNetworkAclArgs {
  /// Network ACL ID to manage. This attribute is exported from <span pulumi-lang-nodejs="`aws.ec2.Vpc`" pulumi-lang-dotnet="`aws.ec2.Vpc`" pulumi-lang-go="`ec2.Vpc`" pulumi-lang-python="`ec2.Vpc`" pulumi-lang-yaml="`aws.ec2.Vpc`" pulumi-lang-java="`aws.ec2.Vpc`">`aws.ec2.Vpc`</span>, or manually found via the AWS Console.
  ///
  /// The following arguments are optional:
  final Input<String> defaultNetworkAclId;

  /// Configuration block for an egress rule. Detailed below.
  final Input<List<DefaultNetworkAclEgress>>? egress;

  /// Configuration block for an ingress rule. Detailed below.
  final Input<List<DefaultNetworkAclIngress>>? ingress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of Subnet IDs to apply the ACL to. See the notes above on Managing Subnets in the Default Network ACL
  final Input<List<String>>? subnetIds;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DefaultNetworkAclArgs({
    required this.defaultNetworkAclId,
    this.egress,
    this.ingress,
    this.region,
    this.subnetIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultNetworkAclId'] = defaultNetworkAclId;
    final egressValue = egress;
    if (egressValue != null) {
      map['egress'] = Input.mapOptionalInputValue<List<DefaultNetworkAclEgress>,
              List<Map<String, dynamic>>>(
          egressValue,
          (value) =>
              Input.encodeList<DefaultNetworkAclEgress, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final ingressValue = ingress;
    if (ingressValue != null) {
      map['ingress'] = Input.mapOptionalInputValue<
              List<DefaultNetworkAclIngress>, List<Map<String, dynamic>>>(
          ingressValue,
          (value) =>
              Input.encodeList<DefaultNetworkAclIngress, Map<String, dynamic>>(
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
    return map;
  }

  factory DefaultNetworkAclArgs.fromMap(Map<String, dynamic> map) {
    return DefaultNetworkAclArgs(
      defaultNetworkAclId: Input.asInput<String>(map['defaultNetworkAclId']),
      egress:
          Input.asOptionalInput<List<DefaultNetworkAclEgress>>(map['egress']),
      ingress:
          Input.asOptionalInput<List<DefaultNetworkAclIngress>>(map['ingress']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetIds: Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
