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
  final pulumi.Input<ManagedEnvironmentPeerTrafficConfiguration>?
  peerTrafficConfiguration;

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
      'appInsightsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AppInsightsConfiguration,
            Map<String, dynamic>
          >(appInsightsConfiguration, (value) => value.toMap()),
      'appLogsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AppLogsConfiguration,
            Map<String, dynamic>
          >(appLogsConfiguration, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'customDomainConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            CustomDomainConfiguration,
            Map<String, dynamic>
          >(customDomainConfiguration, (value) => value.toMap()),
      'daprAIConnectionString': ?daprAIConnectionString,
      'daprAIInstrumentationKey': ?daprAIInstrumentationKey,
      'diskEncryptionConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            DiskEncryptionConfiguration,
            Map<String, dynamic>
          >(diskEncryptionConfiguration, (value) => value.toMap()),
      'environmentName': ?environmentName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'infrastructureResourceGroup': ?infrastructureResourceGroup,
      'ingressConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            IngressConfiguration,
            Map<String, dynamic>
          >(ingressConfiguration, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'openTelemetryConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            OpenTelemetryConfiguration,
            Map<String, dynamic>
          >(openTelemetryConfiguration, (value) => value.toMap()),
      'peerAuthentication':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedEnvironmentPeerAuthentication,
            Map<String, dynamic>
          >(peerAuthentication, (value) => value.toMap()),
      'peerTrafficConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedEnvironmentPeerTrafficConfiguration,
            Map<String, dynamic>
          >(peerTrafficConfiguration, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vnetConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            VnetConfiguration,
            Map<String, dynamic>
          >(vnetConfiguration, (value) => value.toMap()),
      'workloadProfiles':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkloadProfile>,
            List<Map<String, dynamic>>
          >(
            workloadProfiles,
            (value) =>
                pulumi.Input.encodeList<WorkloadProfile, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ManagedEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentArgs(
      appInsightsConfiguration: (() {
        final guardedValue = map['appInsightsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppInsightsConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      appLogsConfiguration: (() {
        final guardedValue = map['appLogsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppLogsConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      availabilityZones: (() {
        final guardedValue = map['availabilityZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      customDomainConfiguration: (() {
        final guardedValue = map['customDomainConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomDomainConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      daprAIConnectionString: (() {
        final guardedValue = map['daprAIConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      daprAIInstrumentationKey: (() {
        final guardedValue = map['daprAIInstrumentationKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskEncryptionConfiguration: (() {
        final guardedValue = map['diskEncryptionConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiskEncryptionConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      environmentName: (() {
        final guardedValue = map['environmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      infrastructureResourceGroup: (() {
        final guardedValue = map['infrastructureResourceGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ingressConfiguration: (() {
        final guardedValue = map['ingressConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IngressConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      openTelemetryConfiguration: (() {
        final guardedValue = map['openTelemetryConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OpenTelemetryConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      peerAuthentication: (() {
        final guardedValue = map['peerAuthentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedEnvironmentPeerAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      peerTrafficConfiguration: (() {
        final guardedValue = map['peerTrafficConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedEnvironmentPeerTrafficConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vnetConfiguration: (() {
        final guardedValue = map['vnetConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VnetConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      workloadProfiles: (() {
        final guardedValue = map['workloadProfiles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkloadProfile>(
            guardedValue,
            (value) =>
                WorkloadProfile.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      zoneRedundant: (() {
        final guardedValue = map['zoneRedundant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
