// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_vpc_association_dns_options.dart';

/// {@template pulumi_vpclattice_service_network_vpc_association_service_network_vpc_association_args_doc}
/// The set of arguments for ServiceNetworkVpcAssociation.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_service_network_vpc_association_service_network_vpc_association_args_doc}
class ServiceNetworkVpcAssociationArgs {
  /// Configuration block for DNS option. See `dnsOptions` block below for details.
  final pulumi.Input<ServiceNetworkVpcAssociationDnsOptions>? dnsOptions;
  /// Boolean to indicate whether to enable private DNS for the VPC association. Defaults to `false`.
  final pulumi.Input<bool>? privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// IDs of the security groups.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  final pulumi.Input<String> serviceNetworkIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the VPC.
  final pulumi.Input<String> vpcIdentifier;

  /// Creates a new [ServiceNetworkVpcAssociationArgs].
  /// [dnsOptions] Configuration block for DNS option. See `dnsOptions` block below for details.
  /// [privateDnsEnabled] Boolean to indicate whether to enable private DNS for the VPC association. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] IDs of the security groups.
  /// [serviceNetworkIdentifier] ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcIdentifier] ID of the VPC.
  const ServiceNetworkVpcAssociationArgs({
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
      dnsOptions: (() { final guardedValue = map['dnsOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceNetworkVpcAssociationDnsOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateDnsEnabled: (() { final guardedValue = map['privateDnsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceNetworkIdentifier: pulumi.Input.fromValue(map['serviceNetworkIdentifier'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcIdentifier: pulumi.Input.fromValue(map['vpcIdentifier'] as String),
    );
  }
}
