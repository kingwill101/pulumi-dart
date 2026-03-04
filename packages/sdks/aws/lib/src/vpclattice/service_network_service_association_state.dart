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
  final pulumi.Input<List<ServiceNetworkServiceAssociationDnsEntry>>?
  dnsEntries;

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
      'dnsEntries':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceNetworkServiceAssociationDnsEntry>,
            List<Map<String, dynamic>>
          >(
            dnsEntries,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceNetworkServiceAssociationDnsEntry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'serviceIdentifier': ?serviceIdentifier,
      'serviceNetworkIdentifier': ?serviceNetworkIdentifier,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ServiceNetworkServiceAssociationState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceNetworkServiceAssociationState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdBy: (() {
        final guardedValue = map['createdBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customDomainName: (() {
        final guardedValue = map['customDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsEntries: (() {
        final guardedValue = map['dnsEntries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceNetworkServiceAssociationDnsEntry>(
            guardedValue,
            (value) => ServiceNetworkServiceAssociationDnsEntry.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceIdentifier: (() {
        final guardedValue = map['serviceIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceNetworkIdentifier: (() {
        final guardedValue = map['serviceNetworkIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
