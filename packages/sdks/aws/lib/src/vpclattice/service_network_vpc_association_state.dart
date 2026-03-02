// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_vpc_association_dns_options.dart';

/// Input properties used for looking up and filtering ServiceNetworkVpcAssociation resources.
class ServiceNetworkVpcAssociationState {
  /// The ARN of the Association.
  final pulumi.Input<String>? arn;
  /// The account that created the association.
  final pulumi.Input<String>? createdBy;
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
  final pulumi.Input<String>? serviceNetworkIdentifier;
  /// The operations status. Valid Values are CREATE_IN_PROGRESS | ACTIVE | DELETE_IN_PROGRESS | CREATE_FAILED | DELETE_FAILED
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcIdentifier;

  /// Creates a new [ServiceNetworkVpcAssociationState].
  /// [arn] The ARN of the Association.
  /// [createdBy] The account that created the association.
  /// [dnsOptions] Configuration block for DNS option. See `dns_options` block below for details.
  /// [privateDnsEnabled] Boolean to indicate whether to enable private DNS for the VPC association. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] The IDs of the security groups.
  /// [serviceNetworkIdentifier] The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// [status] The operations status. Valid Values are CREATE_IN_PROGRESS | ACTIVE | DELETE_IN_PROGRESS | CREATE_FAILED | DELETE_FAILED
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcIdentifier] The ID of the VPC.
  ServiceNetworkVpcAssociationState({
    this.arn,
    this.createdBy,
    this.dnsOptions,
    this.privateDnsEnabled,
    this.region,
    this.securityGroupIds,
    this.serviceNetworkIdentifier,
    this.status,
    this.tags,
    this.tagsAll,
    this.vpcIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdBy': ?createdBy,
      'dnsOptions': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkVpcAssociationDnsOptions, Map<String, dynamic>>(dnsOptions, (value) => value.toMap()),
      'privateDnsEnabled': ?privateDnsEnabled,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'serviceNetworkIdentifier': ?serviceNetworkIdentifier,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcIdentifier': ?vpcIdentifier,
    };
  }

  factory ServiceNetworkVpcAssociationState.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkVpcAssociationState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy'] as String).input(),
      dnsOptions: map['dnsOptions'] == null ? null : (ServiceNetworkVpcAssociationDnsOptions.fromMap((map['dnsOptions'] as Map).cast<String, dynamic>())).input(),
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : (map['privateDnsEnabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      serviceNetworkIdentifier: map['serviceNetworkIdentifier'] == null ? null : (map['serviceNetworkIdentifier'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcIdentifier: map['vpcIdentifier'] == null ? null : (map['vpcIdentifier'] as String).input(),
    );
  }
}

