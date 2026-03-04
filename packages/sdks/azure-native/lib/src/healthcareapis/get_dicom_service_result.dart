// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_configuration_response.dart';
import 'dicom_service_authentication_configuration_response.dart';
import 'encryption_response.dart';
import 'private_endpoint_connection_response.dart';
import 'service_managed_identity_response_identity.dart';
import 'storage_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDicomService.
class GetDicomServiceResult {
  /// Dicom Service authentication configuration.
  final DicomServiceAuthenticationConfigurationResponse?
  authenticationConfiguration;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Dicom Service Cors configuration.
  final CorsConfigurationResponse? corsConfiguration;

  /// If data partitions is enabled or not.
  final bool? enableDataPartitions;

  /// The encryption settings of the DICOM service
  final EncryptionResponse? encryption;

  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;

  /// DICOM Service event support status.
  final String eventState;

  /// The resource identifier.
  final String id;

  /// Setting indicating whether the service has a managed identity associated with it.
  final ServiceManagedIdentityResponseIdentity? identity;

  /// The resource location.
  final String? location;

  /// The resource name.
  final String name;

  /// The list of private endpoint connections that are set up for this resource.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;

  /// The provisioning state.
  final String provisioningState;

  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  final String publicNetworkAccess;

  /// The url of the Dicom Services.
  final String serviceUrl;

  /// The configuration of external storage account
  final StorageConfigurationResponse? storageConfiguration;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The resource type.
  final String type;

  /// Creates a new [GetDicomServiceResult].
  /// [authenticationConfiguration] Dicom Service authentication configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [corsConfiguration] Dicom Service Cors configuration.
  /// [enableDataPartitions] If data partitions is enabled or not.
  /// [encryption] The encryption settings of the DICOM service
  /// [etag] An etag associated with the resource, used for optimistic concurrency when editing it.
  /// [eventState] DICOM Service event support status.
  /// [id] The resource identifier.
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [privateEndpointConnections] The list of private endpoint connections that are set up for this resource.
  /// [provisioningState] The provisioning state.
  /// [publicNetworkAccess] Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  /// [serviceUrl] The url of the Dicom Services.
  /// [storageConfiguration] The configuration of external storage account
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The resource type.
  GetDicomServiceResult({
    this.authenticationConfiguration,
    required this.azureApiVersion,
    this.corsConfiguration,
    this.enableDataPartitions,
    this.encryption,
    this.etag,
    required this.eventState,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.privateEndpointConnections,
    required this.provisioningState,
    required this.publicNetworkAccess,
    required this.serviceUrl,
    this.storageConfiguration,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationConfiguration': ?authenticationConfiguration?.toMap(),
      'azureApiVersion': azureApiVersion,
      'corsConfiguration': ?corsConfiguration?.toMap(),
      'enableDataPartitions': ?enableDataPartitions,
      'encryption': ?encryption?.toMap(),
      'etag': ?etag,
      'eventState': eventState,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'privateEndpointConnections':
          pulumi.Input.encodeList<
            PrivateEndpointConnectionResponse,
            Map<String, dynamic>
          >(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': publicNetworkAccess,
      'serviceUrl': serviceUrl,
      'storageConfiguration': ?storageConfiguration?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDicomServiceResult.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceResult(
      authenticationConfiguration: (() {
        final guardedValue = map['authenticationConfiguration'];
        if (guardedValue == null) return null;
        return DicomServiceAuthenticationConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      corsConfiguration: (() {
        final guardedValue = map['corsConfiguration'];
        if (guardedValue == null) return null;
        return CorsConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      enableDataPartitions: (() {
        final guardedValue = map['enableDataPartitions'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return EncryptionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      eventState: map['eventState'] as String,
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return ServiceManagedIdentityResponseIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      privateEndpointConnections:
          pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(
            map['privateEndpointConnections']!,
            (value) => PrivateEndpointConnectionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as String,
      serviceUrl: map['serviceUrl'] as String,
      storageConfiguration: (() {
        final guardedValue = map['storageConfiguration'];
        if (guardedValue == null) return null;
        return StorageConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
