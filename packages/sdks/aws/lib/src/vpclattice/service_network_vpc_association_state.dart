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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdBy,
    pulumi.Output<ServiceNetworkVpcAssociationDnsOptions>? dnsOptions,
    pulumi.Output<bool>? privateDnsEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? serviceNetworkIdentifier,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcIdentifier,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      dnsOptions = pulumi.Input.asOptionalInput<ServiceNetworkVpcAssociationDnsOptions>(dnsOptions),
      privateDnsEnabled = pulumi.Input.asOptionalInput<bool>(privateDnsEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      serviceNetworkIdentifier = pulumi.Input.asOptionalInput<String>(serviceNetworkIdentifier),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcIdentifier = pulumi.Input.asOptionalInput<String>(vpcIdentifier);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      dnsOptions: map['dnsOptions'] == null ? null : pulumi.Output.create<ServiceNetworkVpcAssociationDnsOptions>(ServiceNetworkVpcAssociationDnsOptions.fromMap((map['dnsOptions'] as Map).cast<String, dynamic>())),
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : pulumi.Output.create<bool>(map['privateDnsEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      serviceNetworkIdentifier: map['serviceNetworkIdentifier'] == null ? null : pulumi.Output.create<String>(map['serviceNetworkIdentifier'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcIdentifier: map['vpcIdentifier'] == null ? null : pulumi.Output.create<String>(map['vpcIdentifier'] as String),
    );
  }
}

