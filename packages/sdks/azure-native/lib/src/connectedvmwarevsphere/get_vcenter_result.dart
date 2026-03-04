// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'resource_status_response.dart';
import 'system_data_response.dart';
import 'vicredential_response.dart';

/// Result data returned by getVCenter.
class GetVCenterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Gets or sets the connection status to the vCenter.
  final String connectionStatus;

  /// Username / Password Credentials to connect to vcenter.
  final VICredentialResponse? credentials;

  /// Gets the name of the corresponding resource in Kubernetes.
  final String customResourceName;

  /// Gets or sets the extended location.
  final ExtendedLocationResponse? extendedLocation;

  /// Gets or sets the FQDN/IPAddress of the vCenter.
  final String fqdn;

  /// Gets or sets the Id.
  final String id;

  /// Gets or sets the instance UUID of the vCenter.
  final String instanceUuid;

  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;

  /// Gets or sets the location.
  final String location;

  /// Gets or sets the name.
  final String name;

  /// Gets or sets the port of the vCenter.
  final int? port;

  /// Gets the provisioning state.
  final String provisioningState;

  /// The resource status information.
  final List<ResourceStatusResponse> statuses;

  /// The system data.
  final SystemDataResponse systemData;

  /// Gets or sets the Resource tags.
  final Map<String, String>? tags;

  /// Gets or sets the type of the resource.
  final String type;

  /// Gets or sets a unique identifier for this resource.
  final String uuid;

  /// Gets or sets the version of the vCenter.
  final String version;

  /// Creates a new [GetVCenterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionStatus] Gets or sets the connection status to the vCenter.
  /// [credentials] Username / Password Credentials to connect to vcenter.
  /// [customResourceName] Gets the name of the corresponding resource in Kubernetes.
  /// [extendedLocation] Gets or sets the extended location.
  /// [fqdn] Gets or sets the FQDN/IPAddress of the vCenter.
  /// [id] Gets or sets the Id.
  /// [instanceUuid] Gets or sets the instance UUID of the vCenter.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] Gets or sets the location.
  /// [name] Gets or sets the name.
  /// [port] Gets or sets the port of the vCenter.
  /// [provisioningState] Gets the provisioning state.
  /// [statuses] The resource status information.
  /// [systemData] The system data.
  /// [tags] Gets or sets the Resource tags.
  /// [type] Gets or sets the type of the resource.
  /// [uuid] Gets or sets a unique identifier for this resource.
  /// [version] Gets or sets the version of the vCenter.
  GetVCenterResult({
    required this.azureApiVersion,
    required this.connectionStatus,
    this.credentials,
    required this.customResourceName,
    this.extendedLocation,
    required this.fqdn,
    required this.id,
    required this.instanceUuid,
    this.kind,
    required this.location,
    required this.name,
    this.port,
    required this.provisioningState,
    required this.statuses,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uuid,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectionStatus': connectionStatus,
      'credentials': ?credentials?.toMap(),
      'customResourceName': customResourceName,
      'extendedLocation': ?extendedLocation?.toMap(),
      'fqdn': fqdn,
      'id': id,
      'instanceUuid': instanceUuid,
      'kind': ?kind,
      'location': location,
      'name': name,
      'port': ?port,
      'provisioningState': provisioningState,
      'statuses':
          pulumi.Input.encodeList<ResourceStatusResponse, Map<String, dynamic>>(
            statuses,
            (value) => value.toMap(),
          ),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': uuid,
      'version': version,
    };
  }

  factory GetVCenterResult.fromMap(Map<String, dynamic> map) {
    return GetVCenterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectionStatus: map['connectionStatus'] as String,
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return VICredentialResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      customResourceName: map['customResourceName'] as String,
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      instanceUuid: map['instanceUuid'] as String,
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      provisioningState: map['provisioningState'] as String,
      statuses: pulumi.Input.decodeList<ResourceStatusResponse>(
        map['statuses']!,
        (value) => ResourceStatusResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      uuid: map['uuid'] as String,
      version: map['version'] as String,
    );
  }
}
