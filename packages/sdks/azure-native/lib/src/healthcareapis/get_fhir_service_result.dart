// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'fhir_service_acr_configuration_response.dart';
import 'fhir_service_authentication_configuration_response.dart';
import 'fhir_service_cors_configuration_response.dart';
import 'fhir_service_export_configuration_response.dart';
import 'fhir_service_import_configuration_response.dart';
import 'implementation_guides_configuration_response.dart';
import 'private_endpoint_connection_response.dart';
import 'resource_version_policy_configuration_response.dart';
import 'service_managed_identity_response_identity.dart';
import 'system_data_response.dart';

/// Result data returned by getFhirService.
class GetFhirServiceResult {
  /// Fhir Service Azure container registry configuration.
  final FhirServiceAcrConfigurationResponse? acrConfiguration;
  /// Fhir Service authentication configuration.
  final FhirServiceAuthenticationConfigurationResponse? authenticationConfiguration;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fhir Service Cors configuration.
  final FhirServiceCorsConfigurationResponse? corsConfiguration;
  /// The encryption settings of the FHIR service
  final EncryptionResponse? encryption;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;
  /// Fhir Service event support status.
  final String eventState;
  /// Fhir Service export configuration.
  final FhirServiceExportConfigurationResponse? exportConfiguration;
  /// The resource identifier.
  final String id;
  /// Setting indicating whether the service has a managed identity associated with it.
  final ServiceManagedIdentityResponseIdentity? identity;
  /// Implementation Guides configuration.
  final ImplementationGuidesConfigurationResponse? implementationGuidesConfiguration;
  /// Fhir Service import configuration.
  final FhirServiceImportConfigurationResponse? importConfiguration;
  /// The kind of the service.
  final String? kind;
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
  /// Determines tracking of history for resources.
  final ResourceVersionPolicyConfigurationResponse? resourceVersionPolicyConfiguration;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;

  /// Creates a new [GetFhirServiceResult].
  /// [acrConfiguration] Fhir Service Azure container registry configuration.
  /// [authenticationConfiguration] Fhir Service authentication configuration.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [corsConfiguration] Fhir Service Cors configuration.
  /// [encryption] The encryption settings of the FHIR service
  /// [etag] An etag associated with the resource, used for optimistic concurrency when editing it.
  /// [eventState] Fhir Service event support status.
  /// [exportConfiguration] Fhir Service export configuration.
  /// [id] The resource identifier.
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [implementationGuidesConfiguration] Implementation Guides configuration.
  /// [importConfiguration] Fhir Service import configuration.
  /// [kind] The kind of the service.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [privateEndpointConnections] The list of private endpoint connections that are set up for this resource.
  /// [provisioningState] The provisioning state.
  /// [publicNetworkAccess] Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  /// [resourceVersionPolicyConfiguration] Determines tracking of history for resources.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The resource type.
  GetFhirServiceResult({
    this.acrConfiguration,
    this.authenticationConfiguration,
    required this.azureApiVersion,
    this.corsConfiguration,
    this.encryption,
    this.etag,
    required this.eventState,
    this.exportConfiguration,
    required this.id,
    this.identity,
    this.implementationGuidesConfiguration,
    this.importConfiguration,
    this.kind,
    this.location,
    required this.name,
    required this.privateEndpointConnections,
    required this.provisioningState,
    required this.publicNetworkAccess,
    this.resourceVersionPolicyConfiguration,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrConfiguration': ?acrConfiguration?.toMap(),
      'authenticationConfiguration': ?authenticationConfiguration?.toMap(),
      'azureApiVersion': azureApiVersion,
      'corsConfiguration': ?corsConfiguration?.toMap(),
      'encryption': ?encryption?.toMap(),
      'etag': ?etag,
      'eventState': eventState,
      'exportConfiguration': ?exportConfiguration?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'implementationGuidesConfiguration': ?implementationGuidesConfiguration?.toMap(),
      'importConfiguration': ?importConfiguration?.toMap(),
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': publicNetworkAccess,
      'resourceVersionPolicyConfiguration': ?resourceVersionPolicyConfiguration?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetFhirServiceResult.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceResult(
      acrConfiguration: (() { final guardedValue = map['acrConfiguration']; if (guardedValue == null) return null; return FhirServiceAcrConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      authenticationConfiguration: (() { final guardedValue = map['authenticationConfiguration']; if (guardedValue == null) return null; return FhirServiceAuthenticationConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      corsConfiguration: (() { final guardedValue = map['corsConfiguration']; if (guardedValue == null) return null; return FhirServiceCorsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventState: map['eventState'] as String,
      exportConfiguration: (() { final guardedValue = map['exportConfiguration']; if (guardedValue == null) return null; return FhirServiceExportConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ServiceManagedIdentityResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      implementationGuidesConfiguration: (() { final guardedValue = map['implementationGuidesConfiguration']; if (guardedValue == null) return null; return ImplementationGuidesConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      importConfiguration: (() { final guardedValue = map['importConfiguration']; if (guardedValue == null) return null; return FhirServiceImportConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as String,
      resourceVersionPolicyConfiguration: (() { final guardedValue = map['resourceVersionPolicyConfiguration']; if (guardedValue == null) return null; return ResourceVersionPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

