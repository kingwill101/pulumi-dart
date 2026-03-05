import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';
import 'fhir_service_acr_configuration_response.dart';
import 'fhir_service_args.dart';
import 'fhir_service_authentication_configuration_response.dart';
import 'fhir_service_cors_configuration_response.dart';
import 'fhir_service_export_configuration_response.dart';
import 'fhir_service_import_configuration_response.dart';
import 'implementation_guides_configuration_response.dart';
import 'resource_version_policy_configuration_response.dart';
import 'service_managed_identity_response_identity.dart';
import 'system_data_response.dart';

/// The description of Fhir Service
///
/// Uses Azure REST API version 2024-03-31. In version 2.x of the Azure Native provider, it used API version 2023-02-28.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01, 2023-02-28, 2023-09-06, 2023-11-01, 2023-12-01, 2024-03-01, 2025-03-01-preview, 2025-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native healthcareapis [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:healthcareapis:FhirService fhirservice1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HealthcareApis/workspaces/{workspaceName}/fhirservices/{fhirServiceName}
/// ```
class FhirService extends pulumi.CustomResource {
  /// Fhir Service Azure container registry configuration.
  late final pulumi.Output<FhirServiceAcrConfigurationResponse?> acrConfiguration;
  /// Fhir Service authentication configuration.
  late final pulumi.Output<FhirServiceAuthenticationConfigurationResponse?> authenticationConfiguration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Fhir Service Cors configuration.
  late final pulumi.Output<FhirServiceCorsConfigurationResponse?> corsConfiguration;
  /// The encryption settings of the FHIR service
  late final pulumi.Output<EncryptionResponse?> encryption;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  late final pulumi.Output<String?> etag;
  /// Fhir Service event support status.
  late final pulumi.Output<String> eventState;
  /// Fhir Service export configuration.
  late final pulumi.Output<FhirServiceExportConfigurationResponse?> exportConfiguration;
  /// Setting indicating whether the service has a managed identity associated with it.
  late final pulumi.Output<ServiceManagedIdentityResponseIdentity?> identity;
  /// Implementation Guides configuration.
  late final pulumi.Output<ImplementationGuidesConfigurationResponse?> implementationGuidesConfiguration;
  /// Fhir Service import configuration.
  late final pulumi.Output<FhirServiceImportConfigurationResponse?> importConfiguration;
  /// The kind of the service.
  late final pulumi.Output<String?> kind;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The list of private endpoint connections that are set up for this resource.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// The provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  late final pulumi.Output<String> publicNetworkAccess;
  /// Determines tracking of history for resources.
  late final pulumi.Output<ResourceVersionPolicyConfigurationResponse?> resourceVersionPolicyConfiguration;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [FhirService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FhirService]. {@macro pulumi_healthcareapis_fhir_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FhirService(
    String name, {
    FhirServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:healthcareapis:FhirService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acrConfiguration = registerOutput<FhirServiceAcrConfigurationResponse?>('acrConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceAcrConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authenticationConfiguration = registerOutput<FhirServiceAuthenticationConfigurationResponse?>('authenticationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceAuthenticationConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    corsConfiguration = registerOutput<FhirServiceCorsConfigurationResponse?>('corsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceCorsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryption = registerOutput<EncryptionResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String?>('etag');
    eventState = registerOutput<String>('eventState');
    exportConfiguration = registerOutput<FhirServiceExportConfigurationResponse?>('exportConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceExportConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ServiceManagedIdentityResponseIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceManagedIdentityResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    implementationGuidesConfiguration = registerOutput<ImplementationGuidesConfigurationResponse?>('implementationGuidesConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImplementationGuidesConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    importConfiguration = registerOutput<FhirServiceImportConfigurationResponse?>('importConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FhirServiceImportConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String>('publicNetworkAccess');
    resourceVersionPolicyConfiguration = registerOutput<ResourceVersionPolicyConfigurationResponse?>('resourceVersionPolicyConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceVersionPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
