// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_network_service_associations_item_dns_entry.dart';

class GetServiceNetworkServiceAssociationsItem {
  /// ARN of the association.
  final pulumi.Input<String> arn;
  /// Date and time the association was created, in RFC 3339 format.
  final pulumi.Input<String> createdAt;
  /// Account that created the association.
  final pulumi.Input<String> createdBy;
  /// Custom domain name of the service.
  final pulumi.Input<String> customDomainName;
  /// List of objects with DNS names.
  final pulumi.Input<List<GetServiceNetworkServiceAssociationsItemDnsEntry>> dnsEntries;
  /// ID of the association.
  final pulumi.Input<String> id;
  /// ARN of the associated service.
  final pulumi.Input<String> serviceArn;
  /// ID of the associated service.
  final pulumi.Input<String> serviceId;
  /// Name of the associated service.
  final pulumi.Input<String> serviceName;
  /// ARN of the service network the service is associated with.
  final pulumi.Input<String> serviceNetworkArn;
  /// ID of the service network the service is associated with.
  final pulumi.Input<String> serviceNetworkId;
  /// Name of the service network the service is associated with.
  final pulumi.Input<String> serviceNetworkName;
  /// Status of the association. One of `CREATE_IN_PROGRESS`, `ACTIVE`, `DELETE_IN_PROGRESS`, `CREATE_FAILED`, or `DELETE_FAILED`.
  final pulumi.Input<String> status;

  /// Creates a new [GetServiceNetworkServiceAssociationsItem].
  /// [arn] ARN of the association.
  /// [createdAt] Date and time the association was created, in RFC 3339 format.
  /// [createdBy] Account that created the association.
  /// [customDomainName] Custom domain name of the service.
  /// [dnsEntries] List of objects with DNS names.
  /// [id] ID of the association.
  /// [serviceArn] ARN of the associated service.
  /// [serviceId] ID of the associated service.
  /// [serviceName] Name of the associated service.
  /// [serviceNetworkArn] ARN of the service network the service is associated with.
  /// [serviceNetworkId] ID of the service network the service is associated with.
  /// [serviceNetworkName] Name of the service network the service is associated with.
  /// [status] Status of the association. One of `CREATE_IN_PROGRESS`, `ACTIVE`, `DELETE_IN_PROGRESS`, `CREATE_FAILED`, or `DELETE_FAILED`.
  const GetServiceNetworkServiceAssociationsItem({
    required this.arn,
    required this.createdAt,
    required this.createdBy,
    required this.customDomainName,
    required this.dnsEntries,
    required this.id,
    required this.serviceArn,
    required this.serviceId,
    required this.serviceName,
    required this.serviceNetworkArn,
    required this.serviceNetworkId,
    required this.serviceNetworkName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'customDomainName': customDomainName,
      'dnsEntries': pulumi.Input.mapInputValue<List<GetServiceNetworkServiceAssociationsItemDnsEntry>, List<Map<String, dynamic>>>(dnsEntries, (value) => pulumi.Input.encodeList<GetServiceNetworkServiceAssociationsItemDnsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'serviceArn': serviceArn,
      'serviceId': serviceId,
      'serviceName': serviceName,
      'serviceNetworkArn': serviceNetworkArn,
      'serviceNetworkId': serviceNetworkId,
      'serviceNetworkName': serviceNetworkName,
      'status': status,
    };
  }

  factory GetServiceNetworkServiceAssociationsItem.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkServiceAssociationsItem(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      customDomainName: pulumi.Input.fromValue(map['customDomainName'] as String),
      dnsEntries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceNetworkServiceAssociationsItemDnsEntry>(map['dnsEntries']!, (value) => GetServiceNetworkServiceAssociationsItemDnsEntry.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      serviceArn: pulumi.Input.fromValue(map['serviceArn'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      serviceNetworkArn: pulumi.Input.fromValue(map['serviceNetworkArn'] as String),
      serviceNetworkId: pulumi.Input.fromValue(map['serviceNetworkId'] as String),
      serviceNetworkName: pulumi.Input.fromValue(map['serviceNetworkName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
