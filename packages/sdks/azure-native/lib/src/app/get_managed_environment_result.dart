// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_insights_configuration_response.dart';
import 'app_logs_configuration_response.dart';
import 'custom_domain_configuration_response.dart';
import 'dapr_configuration_response.dart';
import 'disk_encryption_configuration_response.dart';
import 'ingress_configuration_response.dart';
import 'keda_configuration_response.dart';
import 'managed_environment_response_peer_authentication.dart';
import 'managed_environment_response_peer_traffic_configuration.dart';
import 'managed_service_identity_response.dart';
import 'open_telemetry_configuration_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';
import 'vnet_configuration_response.dart';
import 'workload_profile_response.dart';

/// Result data returned by getManagedEnvironment.
class GetManagedEnvironmentResult {
  /// Environment level Application Insights configuration
  final AppInsightsConfigurationResponse? appInsightsConfiguration;
  /// Cluster configuration which enables the log daemon to export app logs to configured destination
  final AppLogsConfigurationResponse? appLogsConfiguration;
  /// The list of availability zones to use for managed environment
  final List<String>? availabilityZones;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Custom domain configuration for the environment
  final CustomDomainConfigurationResponse? customDomainConfiguration;
  /// Application Insights connection string used by Dapr to export Service to Service communication telemetry
  final String? daprAIConnectionString;
  /// Azure Monitor instrumentation key used by Dapr to export Service to Service communication telemetry
  final String? daprAIInstrumentationKey;
  /// The configuration of Dapr component.
  final DaprConfigurationResponse? daprConfiguration;
  /// Default Domain Name for the cluster
  final String defaultDomain;
  /// Any errors that occurred during deployment or deployment validation
  final String deploymentErrors;
  /// Disk encryption configuration for the Managed Environment.
  final DiskEncryptionConfigurationResponse? diskEncryptionConfiguration;
  /// The endpoint of the eventstream of the Environment.
  final String eventStreamEndpoint;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed identities for the Managed Environment to interact with other Azure services without maintaining any secrets or credentials in code.
  final ManagedServiceIdentityResponse? identity;
  /// Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. If a subnet ID is provided, this resource group will be created in the same subscription as the subnet.
  final String? infrastructureResourceGroup;
  /// Ingress configuration for the Managed Environment.
  final IngressConfigurationResponse? ingressConfiguration;
  /// The configuration of Keda component.
  final KedaConfigurationResponse? kedaConfiguration;
  /// Kind of the Environment.
  final String? kind;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Environment Open Telemetry configuration
  final OpenTelemetryConfigurationResponse? openTelemetryConfiguration;
  /// Peer authentication settings for the Managed Environment
  final ManagedEnvironmentResponsePeerAuthentication? peerAuthentication;
  /// Peer traffic settings for the Managed Environment
  final ManagedEnvironmentResponsePeerTrafficConfiguration? peerTrafficConfiguration;
  /// Private endpoint connections to the resource.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Private Link Default Domain Name for the environment
  final String privateLinkDefaultDomain;
  /// Provisioning state of the Environment.
  final String provisioningState;
  /// Property to allow or block all public traffic. Allowed Values: 'Enabled', 'Disabled'.
  final String? publicNetworkAccess;
  /// Static IP of the Environment
  final String staticIp;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Vnet configuration for the environment
  final VnetConfigurationResponse? vnetConfiguration;
  /// Workload profiles configured for the Managed Environment.
  final List<WorkloadProfileResponse>? workloadProfiles;
  /// Whether or not this Managed Environment is zone-redundant.
  final bool? zoneRedundant;

  /// Creates a new [GetManagedEnvironmentResult].
  /// [appInsightsConfiguration] Environment level Application Insights configuration
  /// [appLogsConfiguration] Cluster configuration which enables the log daemon to export app logs to configured destination
  /// [availabilityZones] The list of availability zones to use for managed environment
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customDomainConfiguration] Custom domain configuration for the environment
  /// [daprAIConnectionString] Application Insights connection string used by Dapr to export Service to Service communication telemetry
  /// [daprAIInstrumentationKey] Azure Monitor instrumentation key used by Dapr to export Service to Service communication telemetry
  /// [daprConfiguration] The configuration of Dapr component.
  /// [defaultDomain] Default Domain Name for the cluster
  /// [deploymentErrors] Any errors that occurred during deployment or deployment validation
  /// [diskEncryptionConfiguration] Disk encryption configuration for the Managed Environment.
  /// [eventStreamEndpoint] The endpoint of the eventstream of the Environment.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed identities for the Managed Environment to interact with other Azure services without maintaining any secrets or credentials in code.
  /// [infrastructureResourceGroup] Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. If a subnet ID is provided, this resource group will be created in the same subscription as the subnet.
  /// [ingressConfiguration] Ingress configuration for the Managed Environment.
  /// [kedaConfiguration] The configuration of Keda component.
  /// [kind] Kind of the Environment.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [openTelemetryConfiguration] Environment Open Telemetry configuration
  /// [peerAuthentication] Peer authentication settings for the Managed Environment
  /// [peerTrafficConfiguration] Peer traffic settings for the Managed Environment
  /// [privateEndpointConnections] Private endpoint connections to the resource.
  /// [privateLinkDefaultDomain] Private Link Default Domain Name for the environment
  /// [provisioningState] Provisioning state of the Environment.
  /// [publicNetworkAccess] Property to allow or block all public traffic. Allowed Values: 'Enabled', 'Disabled'.
  /// [staticIp] Static IP of the Environment
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vnetConfiguration] Vnet configuration for the environment
  /// [workloadProfiles] Workload profiles configured for the Managed Environment.
  /// [zoneRedundant] Whether or not this Managed Environment is zone-redundant.
  const GetManagedEnvironmentResult({
    this.appInsightsConfiguration,
    this.appLogsConfiguration,
    this.availabilityZones,
    required this.azureApiVersion,
    this.customDomainConfiguration,
    this.daprAIConnectionString,
    this.daprAIInstrumentationKey,
    this.daprConfiguration,
    required this.defaultDomain,
    required this.deploymentErrors,
    this.diskEncryptionConfiguration,
    required this.eventStreamEndpoint,
    required this.id,
    this.identity,
    this.infrastructureResourceGroup,
    this.ingressConfiguration,
    this.kedaConfiguration,
    this.kind,
    required this.location,
    required this.name,
    this.openTelemetryConfiguration,
    this.peerAuthentication,
    this.peerTrafficConfiguration,
    required this.privateEndpointConnections,
    required this.privateLinkDefaultDomain,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.staticIp,
    required this.systemData,
    this.tags,
    required this.type,
    this.vnetConfiguration,
    this.workloadProfiles,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsConfiguration': ?appInsightsConfiguration?.toMap(),
      'appLogsConfiguration': ?appLogsConfiguration?.toMap(),
      'availabilityZones': ?availabilityZones,
      'azureApiVersion': azureApiVersion,
      'customDomainConfiguration': ?customDomainConfiguration?.toMap(),
      'daprAIConnectionString': ?daprAIConnectionString,
      'daprAIInstrumentationKey': ?daprAIInstrumentationKey,
      'daprConfiguration': ?daprConfiguration?.toMap(),
      'defaultDomain': defaultDomain,
      'deploymentErrors': deploymentErrors,
      'diskEncryptionConfiguration': ?diskEncryptionConfiguration?.toMap(),
      'eventStreamEndpoint': eventStreamEndpoint,
      'id': id,
      'identity': ?identity?.toMap(),
      'infrastructureResourceGroup': ?infrastructureResourceGroup,
      'ingressConfiguration': ?ingressConfiguration?.toMap(),
      'kedaConfiguration': ?kedaConfiguration?.toMap(),
      'kind': ?kind,
      'location': location,
      'name': name,
      'openTelemetryConfiguration': ?openTelemetryConfiguration?.toMap(),
      'peerAuthentication': ?peerAuthentication?.toMap(),
      'peerTrafficConfiguration': ?peerTrafficConfiguration?.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'privateLinkDefaultDomain': privateLinkDefaultDomain,
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'staticIp': staticIp,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vnetConfiguration': ?vnetConfiguration?.toMap(),
      'workloadProfiles': ?(() { final guardedValue = workloadProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeList<WorkloadProfileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetManagedEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetManagedEnvironmentResult(
      appInsightsConfiguration: (() { final guardedValue = map['appInsightsConfiguration']; if (guardedValue == null) return null; return AppInsightsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      appLogsConfiguration: (() { final guardedValue = map['appLogsConfiguration']; if (guardedValue == null) return null; return AppLogsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      customDomainConfiguration: (() { final guardedValue = map['customDomainConfiguration']; if (guardedValue == null) return null; return CustomDomainConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      daprAIConnectionString: (() { final guardedValue = map['daprAIConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      daprAIInstrumentationKey: (() { final guardedValue = map['daprAIInstrumentationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      daprConfiguration: (() { final guardedValue = map['daprConfiguration']; if (guardedValue == null) return null; return DaprConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultDomain: map['defaultDomain'] as String,
      deploymentErrors: map['deploymentErrors'] as String,
      diskEncryptionConfiguration: (() { final guardedValue = map['diskEncryptionConfiguration']; if (guardedValue == null) return null; return DiskEncryptionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      eventStreamEndpoint: map['eventStreamEndpoint'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      infrastructureResourceGroup: (() { final guardedValue = map['infrastructureResourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingressConfiguration: (() { final guardedValue = map['ingressConfiguration']; if (guardedValue == null) return null; return IngressConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kedaConfiguration: (() { final guardedValue = map['kedaConfiguration']; if (guardedValue == null) return null; return KedaConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      openTelemetryConfiguration: (() { final guardedValue = map['openTelemetryConfiguration']; if (guardedValue == null) return null; return OpenTelemetryConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      peerAuthentication: (() { final guardedValue = map['peerAuthentication']; if (guardedValue == null) return null; return ManagedEnvironmentResponsePeerAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      peerTrafficConfiguration: (() { final guardedValue = map['peerTrafficConfiguration']; if (guardedValue == null) return null; return ManagedEnvironmentResponsePeerTrafficConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkDefaultDomain: map['privateLinkDefaultDomain'] as String,
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      staticIp: map['staticIp'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      vnetConfiguration: (() { final guardedValue = map['vnetConfiguration']; if (guardedValue == null) return null; return VnetConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workloadProfiles: (() { final guardedValue = map['workloadProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkloadProfileResponse>(guardedValue, (value) => WorkloadProfileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
