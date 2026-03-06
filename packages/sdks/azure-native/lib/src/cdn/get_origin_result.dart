// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getOrigin.
class GetOriginResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Origin is enabled for load balancing or not
  final bool? enabled;
  /// The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  final String hostName;
  /// The value of the HTTP port. Must be between 1 and 65535.
  final int? httpPort;
  /// The value of the HTTPS port. Must be between 1 and 65535.
  final int? httpsPort;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  final String? originHostHeader;
  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  final int? priority;
  /// The approval status for the connection to the Private Link
  final String privateEndpointStatus;
  /// The Alias of the Private Link resource. Populating this optional field indicates that this origin is 'Private'
  final String? privateLinkAlias;
  /// A custom message to be included in the approval request to connect to the Private Link.
  final String? privateLinkApprovalMessage;
  /// The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  final String? privateLinkLocation;
  /// The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  final String? privateLinkResourceId;
  /// Provisioning status of the origin.
  final String provisioningState;
  /// Resource status of the origin.
  final String resourceState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  final int? weight;

  /// Creates a new [GetOriginResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enabled] Origin is enabled for load balancing or not
  /// [hostName] The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  /// [httpPort] The value of the HTTP port. Must be between 1 and 65535.
  /// [httpsPort] The value of the HTTPS port. Must be between 1 and 65535.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [originHostHeader] The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  /// [priority] Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  /// [privateEndpointStatus] The approval status for the connection to the Private Link
  /// [privateLinkAlias] The Alias of the Private Link resource. Populating this optional field indicates that this origin is 'Private'
  /// [privateLinkApprovalMessage] A custom message to be included in the approval request to connect to the Private Link.
  /// [privateLinkLocation] The location of the Private Link resource. Required only if 'privateLinkResourceId' is populated
  /// [privateLinkResourceId] The Resource Id of the Private Link resource. Populating this optional field indicates that this backend is 'Private'
  /// [provisioningState] Provisioning status of the origin.
  /// [resourceState] Resource status of the origin.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [weight] Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  const GetOriginResult({
    required this.azureApiVersion,
    this.enabled,
    required this.hostName,
    this.httpPort,
    this.httpsPort,
    required this.id,
    required this.name,
    this.originHostHeader,
    this.priority,
    required this.privateEndpointStatus,
    this.privateLinkAlias,
    this.privateLinkApprovalMessage,
    this.privateLinkLocation,
    this.privateLinkResourceId,
    required this.provisioningState,
    required this.resourceState,
    required this.systemData,
    required this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'enabled': ?enabled,
      'hostName': hostName,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'id': id,
      'name': name,
      'originHostHeader': ?originHostHeader,
      'priority': ?priority,
      'privateEndpointStatus': privateEndpointStatus,
      'privateLinkAlias': ?privateLinkAlias,
      'privateLinkApprovalMessage': ?privateLinkApprovalMessage,
      'privateLinkLocation': ?privateLinkLocation,
      'privateLinkResourceId': ?privateLinkResourceId,
      'provisioningState': provisioningState,
      'resourceState': resourceState,
      'systemData': systemData.toMap(),
      'type': type,
      'weight': ?weight,
    };
  }

  factory GetOriginResult.fromMap(Map<String, dynamic> map) {
    return GetOriginResult(
      azureApiVersion: map['azureApiVersion'] as String,
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostName: map['hostName'] as String,
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return guardedValue as int; })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return guardedValue as int; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      originHostHeader: (() { final guardedValue = map['originHostHeader']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as int; })(),
      privateEndpointStatus: map['privateEndpointStatus'] as String,
      privateLinkAlias: (() { final guardedValue = map['privateLinkAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkApprovalMessage: (() { final guardedValue = map['privateLinkApprovalMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkLocation: (() { final guardedValue = map['privateLinkLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      resourceState: map['resourceState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

