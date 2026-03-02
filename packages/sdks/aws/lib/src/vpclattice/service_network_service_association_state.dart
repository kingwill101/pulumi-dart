// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_service_association_dns_entry.dart';

/// Input properties used for looking up and filtering ServiceNetworkServiceAssociation resources.
class ServiceNetworkServiceAssociationState {
  /// The ARN of the Association.
  final pulumi.Input<String>? arn;
  /// The account that created the association.
  final pulumi.Input<String>? createdBy;
  /// The custom domain name of the service.
  final pulumi.Input<String>? customDomainName;
  /// The DNS name of the service.
  final pulumi.Input<List<ServiceNetworkServiceAssociationDnsEntry>>? dnsEntries;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID or Amazon Resource Identifier (ARN) of the service.
  final pulumi.Input<String>? serviceIdentifier;
  /// The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  final pulumi.Input<String>? serviceNetworkIdentifier;
  /// The operations status. Valid Values are CREATE_IN_PROGRESS | ACTIVE | DELETE_IN_PROGRESS | CREATE_FAILED | DELETE_FAILED
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ServiceNetworkServiceAssociationState].
  /// [arn] The ARN of the Association.
  /// [createdBy] The account that created the association.
  /// [customDomainName] The custom domain name of the service.
  /// [dnsEntries] The DNS name of the service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceIdentifier] The ID or Amazon Resource Identifier (ARN) of the service.
  /// [serviceNetworkIdentifier] The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// [status] The operations status. Valid Values are CREATE_IN_PROGRESS | ACTIVE | DELETE_IN_PROGRESS | CREATE_FAILED | DELETE_FAILED
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ServiceNetworkServiceAssociationState({
    this.arn,
    this.createdBy,
    this.customDomainName,
    this.dnsEntries,
    this.region,
    this.serviceIdentifier,
    this.serviceNetworkIdentifier,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdBy': ?createdBy,
      'customDomainName': ?customDomainName,
      'dnsEntries': ?pulumi.Input.mapOptionalInputValue<List<ServiceNetworkServiceAssociationDnsEntry>, List<Map<String, dynamic>>>(dnsEntries, (value) => pulumi.Input.encodeList<ServiceNetworkServiceAssociationDnsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'serviceIdentifier': ?serviceIdentifier,
      'serviceNetworkIdentifier': ?serviceNetworkIdentifier,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ServiceNetworkServiceAssociationState.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkServiceAssociationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdBy: map['createdBy'] == null ? null : ((map['createdBy'] as String).input()).input(),
      customDomainName: map['customDomainName'] == null ? null : ((map['customDomainName'] as String).input()).input(),
      dnsEntries: map['dnsEntries'] == null ? null : ((pulumi.Input.decodeList<ServiceNetworkServiceAssociationDnsEntry>(map['dnsEntries']!, (value) => ServiceNetworkServiceAssociationDnsEntry.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceIdentifier: map['serviceIdentifier'] == null ? null : ((map['serviceIdentifier'] as String).input()).input(),
      serviceNetworkIdentifier: map['serviceNetworkIdentifier'] == null ? null : ((map['serviceNetworkIdentifier'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

