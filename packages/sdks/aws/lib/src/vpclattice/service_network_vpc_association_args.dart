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
    pulumi.Output<ServiceNetworkVpcAssociationDnsOptions>? dnsOptions,
    pulumi.Output<bool>? privateDnsEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    required pulumi.Output<String> serviceNetworkIdentifier,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcIdentifier,
  }) :
      dnsOptions = pulumi.Input.asOptionalInput<ServiceNetworkVpcAssociationDnsOptions>(dnsOptions),
      privateDnsEnabled = pulumi.Input.asOptionalInput<bool>(privateDnsEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      serviceNetworkIdentifier = pulumi.Input.asInput<String>(serviceNetworkIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcIdentifier = pulumi.Input.asInput<String>(vpcIdentifier);

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
      dnsOptions: map['dnsOptions'] == null ? null : pulumi.Output.create<ServiceNetworkVpcAssociationDnsOptions>(ServiceNetworkVpcAssociationDnsOptions.fromMap((map['dnsOptions'] as Map).cast<String, dynamic>())),
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : pulumi.Output.create<bool>(map['privateDnsEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      serviceNetworkIdentifier: pulumi.Output.create<String>(map['serviceNetworkIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcIdentifier: pulumi.Output.create<String>(map['vpcIdentifier'] as String),
    );
  }
}

