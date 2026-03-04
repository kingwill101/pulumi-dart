// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';
import 'shared_private_link_resource_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAFDOrigin.
class GetAFDOriginResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource reference to the Azure origin resource.
  final ResourceReferenceResponse? azureOrigin;
  final String deploymentStatus;

  /// Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
  final String? enabledState;

  /// Whether to enable certificate name check at origin level
  final bool? enforceCertificateNameCheck;

  /// The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  final String? hostName;

  /// The value of the HTTP port. Must be between 1 and 65535.
  final int? httpPort;

  /// The value of the HTTPS port. Must be between 1 and 65535.
  final int? httpsPort;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// The name of the origin group which contains this origin.
  final String originGroupName;

  /// The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure Front Door origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  final String? originHostHeader;

  /// Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  final int? priority;

  /// Provisioning status
  final String provisioningState;

  /// The properties of the private link resource for private origin.
  final SharedPrivateLinkResourcePropertiesResponse? sharedPrivateLinkResource;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  final int? weight;

  /// Creates a new [GetAFDOriginResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureOrigin] Resource reference to the Azure origin resource.
  /// [deploymentStatus] Required.
  /// [enabledState] Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool.
  /// [enforceCertificateNameCheck] Whether to enable certificate name check at origin level
  /// [hostName] The address of the origin. Domain names, IPv4 addresses, and IPv6 addresses are supported.This should be unique across all origins in an endpoint.
  /// [httpPort] The value of the HTTP port. Must be between 1 and 65535.
  /// [httpsPort] The value of the HTTPS port. Must be between 1 and 65535.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [originGroupName] The name of the origin group which contains this origin.
  /// [originHostHeader] The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure Front Door origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. This overrides the host header defined at Endpoint
  /// [priority] Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy.Must be between 1 and 5
  /// [provisioningState] Provisioning status
  /// [sharedPrivateLinkResource] The properties of the private link resource for private origin.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [weight] Weight of the origin in given origin group for load balancing. Must be between 1 and 1000
  GetAFDOriginResult({
    required this.azureApiVersion,
    this.azureOrigin,
    required this.deploymentStatus,
    this.enabledState,
    this.enforceCertificateNameCheck,
    this.hostName,
    this.httpPort,
    this.httpsPort,
    required this.id,
    required this.name,
    required this.originGroupName,
    this.originHostHeader,
    this.priority,
    required this.provisioningState,
    this.sharedPrivateLinkResource,
    required this.systemData,
    required this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureOrigin': ?azureOrigin?.toMap(),
      'deploymentStatus': deploymentStatus,
      'enabledState': ?enabledState,
      'enforceCertificateNameCheck': ?enforceCertificateNameCheck,
      'hostName': ?hostName,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'id': id,
      'name': name,
      'originGroupName': originGroupName,
      'originHostHeader': ?originHostHeader,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'sharedPrivateLinkResource': ?sharedPrivateLinkResource?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'weight': ?weight,
    };
  }

  factory GetAFDOriginResult.fromMap(Map<String, dynamic> map) {
    return GetAFDOriginResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureOrigin: (() {
        final guardedValue = map['azureOrigin'];
        if (guardedValue == null) return null;
        return ResourceReferenceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      deploymentStatus: map['deploymentStatus'] as String,
      enabledState: (() {
        final guardedValue = map['enabledState'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enforceCertificateNameCheck: (() {
        final guardedValue = map['enforceCertificateNameCheck'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      httpPort: (() {
        final guardedValue = map['httpPort'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      httpsPort: (() {
        final guardedValue = map['httpsPort'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      originGroupName: map['originGroupName'] as String,
      originHostHeader: (() {
        final guardedValue = map['originHostHeader'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      provisioningState: map['provisioningState'] as String,
      sharedPrivateLinkResource: (() {
        final guardedValue = map['sharedPrivateLinkResource'];
        if (guardedValue == null) return null;
        return SharedPrivateLinkResourcePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
    );
  }
}
