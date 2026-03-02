// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_insights_configuration.dart';
import 'app_logs_configuration.dart';
import 'custom_domain_configuration.dart';
import 'disk_encryption_configuration.dart';
import 'ingress_configuration.dart';
import 'managed_environment_peer_authentication.dart';
import 'managed_environment_peer_traffic_configuration.dart';
import 'managed_service_identity.dart';
import 'open_telemetry_configuration.dart';
import 'vnet_configuration.dart';
import 'workload_profile.dart';

/// {@template pulumi_app_managed_environment_args_doc}
/// The set of arguments for ManagedEnvironment.
/// {@endtemplate}
/// {@macro pulumi_app_managed_environment_args_doc}
class ManagedEnvironmentArgs {
  /// Environment level Application Insights configuration
  final pulumi.Input<AppInsightsConfiguration>? appInsightsConfiguration;
  /// Cluster configuration which enables the log daemon to export app logs to configured destination
  final pulumi.Input<AppLogsConfiguration>? appLogsConfiguration;
  /// The list of availability zones to use for managed environment
  final pulumi.Input<List<String>>? availabilityZones;
  /// Custom domain configuration for the environment
  final pulumi.Input<CustomDomainConfiguration>? customDomainConfiguration;
  /// Application Insights connection string used by Dapr to export Service to Service communication telemetry
  final pulumi.Input<String>? daprAIConnectionString;
  /// Azure Monitor instrumentation key used by Dapr to export Service to Service communication telemetry
  final pulumi.Input<String>? daprAIInstrumentationKey;
  /// Disk encryption configuration for the Managed Environment.
  final pulumi.Input<DiskEncryptionConfiguration>? diskEncryptionConfiguration;
  /// Name of the Environment.
  final pulumi.Input<String>? environmentName;
  /// Managed identities for the Managed Environment to interact with other Azure services without maintaining any secrets or credentials in code.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. If a subnet ID is provided, this resource group will be created in the same subscription as the subnet.
  final pulumi.Input<String>? infrastructureResourceGroup;
  /// Ingress configuration for the Managed Environment.
  final pulumi.Input<IngressConfiguration>? ingressConfiguration;
  /// Kind of the Environment.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Environment Open Telemetry configuration
  final pulumi.Input<OpenTelemetryConfiguration>? openTelemetryConfiguration;
  /// Peer authentication settings for the Managed Environment
  final pulumi.Input<ManagedEnvironmentPeerAuthentication>? peerAuthentication;
  /// Peer traffic settings for the Managed Environment
  final pulumi.Input<ManagedEnvironmentPeerTrafficConfiguration>? peerTrafficConfiguration;
  /// Property to allow or block all public traffic. Allowed Values: 'Enabled', 'Disabled'.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Vnet configuration for the environment
  final pulumi.Input<VnetConfiguration>? vnetConfiguration;
  /// Workload profiles configured for the Managed Environment.
  final pulumi.Input<List<WorkloadProfile>>? workloadProfiles;
  /// Whether or not this Managed Environment is zone-redundant.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [ManagedEnvironmentArgs].
  /// [appInsightsConfiguration] Environment level Application Insights configuration
  /// [appLogsConfiguration] Cluster configuration which enables the log daemon to export app logs to configured destination
  /// [availabilityZones] The list of availability zones to use for managed environment
  /// [customDomainConfiguration] Custom domain configuration for the environment
  /// [daprAIConnectionString] Application Insights connection string used by Dapr to export Service to Service communication telemetry
  /// [daprAIInstrumentationKey] Azure Monitor instrumentation key used by Dapr to export Service to Service communication telemetry
  /// [diskEncryptionConfiguration] Disk encryption configuration for the Managed Environment.
  /// [environmentName] Name of the Environment.
  /// [identity] Managed identities for the Managed Environment to interact with other Azure services without maintaining any secrets or credentials in code.
  /// [infrastructureResourceGroup] Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. If a subnet ID is provided, this resource group will be created in the same subscription as the subnet.
  /// [ingressConfiguration] Ingress configuration for the Managed Environment.
  /// [kind] Kind of the Environment.
  /// [location] The geo-location where the resource lives
  /// [openTelemetryConfiguration] Environment Open Telemetry configuration
  /// [peerAuthentication] Peer authentication settings for the Managed Environment
  /// [peerTrafficConfiguration] Peer traffic settings for the Managed Environment
  /// [publicNetworkAccess] Property to allow or block all public traffic. Allowed Values: 'Enabled', 'Disabled'.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [vnetConfiguration] Vnet configuration for the environment
  /// [workloadProfiles] Workload profiles configured for the Managed Environment.
  /// [zoneRedundant] Whether or not this Managed Environment is zone-redundant.
  ManagedEnvironmentArgs({
    this.appInsightsConfiguration,
    this.appLogsConfiguration,
    this.availabilityZones,
    this.customDomainConfiguration,
    this.daprAIConnectionString,
    this.daprAIInstrumentationKey,
    this.diskEncryptionConfiguration,
    this.environmentName,
    this.identity,
    this.infrastructureResourceGroup,
    this.ingressConfiguration,
    this.kind,
    this.location,
    this.openTelemetryConfiguration,
    this.peerAuthentication,
    this.peerTrafficConfiguration,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.tags,
    this.vnetConfiguration,
    this.workloadProfiles,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInsightsConfiguration': ?pulumi.Input.mapOptionalInputValue<AppInsightsConfiguration, Map<String, dynamic>>(appInsightsConfiguration, (value) => value.toMap()),
      'appLogsConfiguration': ?pulumi.Input.mapOptionalInputValue<AppLogsConfiguration, Map<String, dynamic>>(appLogsConfiguration, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'customDomainConfiguration': ?pulumi.Input.mapOptionalInputValue<CustomDomainConfiguration, Map<String, dynamic>>(customDomainConfiguration, (value) => value.toMap()),
      'daprAIConnectionString': ?daprAIConnectionString,
      'daprAIInstrumentationKey': ?daprAIInstrumentationKey,
      'diskEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionConfiguration, Map<String, dynamic>>(diskEncryptionConfiguration, (value) => value.toMap()),
      'environmentName': ?environmentName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'infrastructureResourceGroup': ?infrastructureResourceGroup,
      'ingressConfiguration': ?pulumi.Input.mapOptionalInputValue<IngressConfiguration, Map<String, dynamic>>(ingressConfiguration, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'openTelemetryConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenTelemetryConfiguration, Map<String, dynamic>>(openTelemetryConfiguration, (value) => value.toMap()),
      'peerAuthentication': ?pulumi.Input.mapOptionalInputValue<ManagedEnvironmentPeerAuthentication, Map<String, dynamic>>(peerAuthentication, (value) => value.toMap()),
      'peerTrafficConfiguration': ?pulumi.Input.mapOptionalInputValue<ManagedEnvironmentPeerTrafficConfiguration, Map<String, dynamic>>(peerTrafficConfiguration, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vnetConfiguration': ?pulumi.Input.mapOptionalInputValue<VnetConfiguration, Map<String, dynamic>>(vnetConfiguration, (value) => value.toMap()),
      'workloadProfiles': ?pulumi.Input.mapOptionalInputValue<List<WorkloadProfile>, List<Map<String, dynamic>>>(workloadProfiles, (value) => pulumi.Input.encodeList<WorkloadProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ManagedEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentArgs(
      appInsightsConfiguration: map['appInsightsConfiguration'] == null ? null : (AppInsightsConfiguration.fromMap((map['appInsightsConfiguration']! as Map).cast<String, dynamic>())).input(),
      appLogsConfiguration: map['appLogsConfiguration'] == null ? null : (AppLogsConfiguration.fromMap((map['appLogsConfiguration']! as Map).cast<String, dynamic>())).input(),
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones']! as List).cast<String>()).input(),
      customDomainConfiguration: map['customDomainConfiguration'] == null ? null : (CustomDomainConfiguration.fromMap((map['customDomainConfiguration']! as Map).cast<String, dynamic>())).input(),
      daprAIConnectionString: map['daprAIConnectionString'] == null ? null : (map['daprAIConnectionString']! as String).input(),
      daprAIInstrumentationKey: map['daprAIInstrumentationKey'] == null ? null : (map['daprAIInstrumentationKey']! as String).input(),
      diskEncryptionConfiguration: map['diskEncryptionConfiguration'] == null ? null : (DiskEncryptionConfiguration.fromMap((map['diskEncryptionConfiguration']! as Map).cast<String, dynamic>())).input(),
      environmentName: map['environmentName'] == null ? null : (map['environmentName']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      infrastructureResourceGroup: map['infrastructureResourceGroup'] == null ? null : (map['infrastructureResourceGroup']! as String).input(),
      ingressConfiguration: map['ingressConfiguration'] == null ? null : (IngressConfiguration.fromMap((map['ingressConfiguration']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      openTelemetryConfiguration: map['openTelemetryConfiguration'] == null ? null : (OpenTelemetryConfiguration.fromMap((map['openTelemetryConfiguration']! as Map).cast<String, dynamic>())).input(),
      peerAuthentication: map['peerAuthentication'] == null ? null : (ManagedEnvironmentPeerAuthentication.fromMap((map['peerAuthentication']! as Map).cast<String, dynamic>())).input(),
      peerTrafficConfiguration: map['peerTrafficConfiguration'] == null ? null : (ManagedEnvironmentPeerTrafficConfiguration.fromMap((map['peerTrafficConfiguration']! as Map).cast<String, dynamic>())).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vnetConfiguration: map['vnetConfiguration'] == null ? null : (VnetConfiguration.fromMap((map['vnetConfiguration']! as Map).cast<String, dynamic>())).input(),
      workloadProfiles: map['workloadProfiles'] == null ? null : (pulumi.Input.decodeList<WorkloadProfile>(map['workloadProfiles']!, (value) => WorkloadProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant']! as bool).input(),
    );
  }
}

