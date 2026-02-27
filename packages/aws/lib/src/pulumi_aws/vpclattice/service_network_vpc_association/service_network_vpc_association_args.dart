// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_network_vpc_association_dns_options/service_network_vpc_association_dns_options.dart';

/// The set of arguments for ServiceNetworkVpcAssociation.
class ServiceNetworkVpcAssociationArgs {
  /// Configuration block for DNS option. See `dns_options` block below for details.
  final Input<ServiceNetworkVpcAssociationDnsOptions>? dnsOptions;

  /// Boolean to indicate whether to enable private DNS for the VPC association. Defaults to `false`.
  final Input<bool>? privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The IDs of the security groups.
  final Input<List<String>>? securityGroupIds;

  /// The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// The following arguments are optional:
  final Input<String> serviceNetworkIdentifier;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the VPC.
  final Input<String> vpcIdentifier;

  ServiceNetworkVpcAssociationArgs({
    this.dnsOptions,
    this.privateDnsEnabled,
    this.region,
    this.securityGroupIds,
    required this.serviceNetworkIdentifier,
    this.tags,
    required this.vpcIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsOptionsValue = dnsOptions;
    if (dnsOptionsValue != null) {
      map['dnsOptions'] = Input.mapOptionalInputValue<
          ServiceNetworkVpcAssociationDnsOptions,
          Map<String, dynamic>>(dnsOptionsValue, (value) => value.toMap());
    }
    final privateDnsEnabledValue = privateDnsEnabled;
    if (privateDnsEnabledValue != null) {
      map['privateDnsEnabled'] = privateDnsEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['serviceNetworkIdentifier'] = serviceNetworkIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcIdentifier'] = vpcIdentifier;
    return map;
  }

  factory ServiceNetworkVpcAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkVpcAssociationArgs(
      dnsOptions: Input.asOptionalInput<ServiceNetworkVpcAssociationDnsOptions>(
          map['dnsOptions']),
      privateDnsEnabled: Input.asOptionalInput<bool>(map['privateDnsEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      serviceNetworkIdentifier:
          Input.asInput<String>(map['serviceNetworkIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcIdentifier: Input.asInput<String>(map['vpcIdentifier']),
    );
  }
}
