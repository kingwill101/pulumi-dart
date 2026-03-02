// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_vpc_association_dns_options.dart';

/// {@template pulumi_vpclattice_service_network_vpc_association_service_network_vpc_association_args_doc}
/// The set of arguments for ServiceNetworkVpcAssociation.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_service_network_vpc_association_service_network_vpc_association_args_doc}
class ServiceNetworkVpcAssociationArgs {
  /// Configuration block for DNS option. See `dns_options` block below for details.
  final pulumi.Input<ServiceNetworkVpcAssociationDnsOptions>? dnsOptions;
  /// Boolean to indicate whether to enable private DNS for the VPC association. Defaults to `false`.
  final pulumi.Input<bool>? privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IDs of the security groups.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// The following arguments are optional:
  final pulumi.Input<String> serviceNetworkIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcIdentifier;

  /// Creates a new [ServiceNetworkVpcAssociationArgs].
  /// [dnsOptions] Configuration block for DNS option. See `dns_options` block below for details.
  /// [privateDnsEnabled] Boolean to indicate whether to enable private DNS for the VPC association. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] The IDs of the security groups.
  /// [serviceNetworkIdentifier] The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcIdentifier] The ID of the VPC.
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
    return <String, dynamic>{
      'dnsOptions': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkVpcAssociationDnsOptions, Map<String, dynamic>>(dnsOptions, (value) => value.toMap()),
      'privateDnsEnabled': ?privateDnsEnabled,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'serviceNetworkIdentifier': serviceNetworkIdentifier,
      'tags': ?tags,
      'vpcIdentifier': vpcIdentifier,
    };
  }

  factory ServiceNetworkVpcAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkVpcAssociationArgs(
      dnsOptions: map['dnsOptions'] == null ? null : ((ServiceNetworkVpcAssociationDnsOptions.fromMap((map['dnsOptions']! as Map).cast<String, dynamic>())).input()).input(),
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : ((map['privateDnsEnabled'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      serviceNetworkIdentifier: (map['serviceNetworkIdentifier'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      vpcIdentifier: (map['vpcIdentifier'] as String).input(),
    );
  }
}

