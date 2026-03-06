// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_account_response.dart';
import 'system_data_response.dart';

/// Result data returned by getOuContainer.
class GetOuContainerResult {
  /// The list of container accounts
  final List<ContainerAccountResponse>? accounts;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The OuContainer name
  final String containerId;
  /// The Deployment id
  final String deploymentId;
  /// Distinguished Name of OuContainer instance
  final String distinguishedName;
  /// The domain name of Domain Services.
  final String domainName;
  /// Resource etag
  final String? etag;
  /// Resource Id
  final String id;
  /// Resource location
  final String? location;
  /// Resource name
  final String name;
  /// The current deployment or provisioning state, which only appears in the response.
  final String provisioningState;
  /// Status of OuContainer instance
  final String serviceStatus;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure Active Directory tenant id
  final String tenantId;
  /// Resource type
  final String type;

  /// Creates a new [GetOuContainerResult].
  /// [accounts] The list of container accounts
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerId] The OuContainer name
  /// [deploymentId] The Deployment id
  /// [distinguishedName] Distinguished Name of OuContainer instance
  /// [domainName] The domain name of Domain Services.
  /// [etag] Resource etag
  /// [id] Resource Id
  /// [location] Resource location
  /// [name] Resource name
  /// [provisioningState] The current deployment or provisioning state, which only appears in the response.
  /// [serviceStatus] Status of OuContainer instance
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags
  /// [tenantId] Azure Active Directory tenant id
  /// [type] Resource type
  const GetOuContainerResult({
    this.accounts,
    required this.azureApiVersion,
    required this.containerId,
    required this.deploymentId,
    required this.distinguishedName,
    required this.domainName,
    this.etag,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.serviceStatus,
    required this.systemData,
    this.tags,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?(() { final guardedValue = accounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<ContainerAccountResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'containerId': containerId,
      'deploymentId': deploymentId,
      'distinguishedName': distinguishedName,
      'domainName': domainName,
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'serviceStatus': serviceStatus,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetOuContainerResult.fromMap(Map<String, dynamic> map) {
    return GetOuContainerResult(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerAccountResponse>(guardedValue, (value) => ContainerAccountResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      containerId: map['containerId'] as String,
      deploymentId: map['deploymentId'] as String,
      distinguishedName: map['distinguishedName'] as String,
      domainName: map['domainName'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceStatus: map['serviceStatus'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

