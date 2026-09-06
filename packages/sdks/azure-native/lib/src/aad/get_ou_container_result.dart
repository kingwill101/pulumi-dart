// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_account_response.dart';
import 'system_data_response.dart';

/// Result data returned by getOuContainer.
class GetOuContainerResult {
  /// The list of container accounts
  final List<ContainerAccountResponse>? accounts;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The OuContainer name
  final String? containerId;
  /// The Deployment id
  final String? deploymentId;
  /// Distinguished Name of OuContainer instance
  final String? distinguishedName;
  /// The domain name of Domain Services.
  final String? domainName;
  /// Resource etag
  final String? etag;
  /// Resource Id
  final String? id;
  /// Resource location
  final String? location;
  /// Resource name
  final String? name;
  /// The current deployment or provisioning state, which only appears in the response.
  final String? provisioningState;
  /// Status of OuContainer instance
  final String? serviceStatus;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure Active Directory tenant id
  final String? tenantId;
  /// Resource type
  final String? type;

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
    this.azureApiVersion,
    this.containerId,
    this.deploymentId,
    this.distinguishedName,
    this.domainName,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.serviceStatus,
    this.systemData,
    this.tags,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?(() { final guardedValue = accounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<ContainerAccountResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'containerId': ?containerId,
      'deploymentId': ?deploymentId,
      'distinguishedName': ?distinguishedName,
      'domainName': ?domainName,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'serviceStatus': ?serviceStatus,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetOuContainerResult.fromMap(Map<String, dynamic> map) {
    return GetOuContainerResult(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerAccountResponse>(guardedValue, (value) => ContainerAccountResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerId: (() { final guardedValue = map['containerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distinguishedName: (() { final guardedValue = map['distinguishedName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceStatus: (() { final guardedValue = map['serviceStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
