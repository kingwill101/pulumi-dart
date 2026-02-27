// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_service_config_direct_vpc_network_interface/function_service_config_direct_vpc_network_interface.dart';
import '../function_service_config_secret_environment_variable/function_service_config_secret_environment_variable.dart';
import '../function_service_config_secret_volume/function_service_config_secret_volume.dart';

class FunctionServiceConfig {
  /// Whether 100% of traffic is routed to the latest revision. Defaults to true.
  final bool? allTrafficOnLatestRevision;

  /// The number of CPUs used in a single container instance. Default value is calculated from available memory.
  final String? availableCpu;

  /// The amount of memory available for a function.
  /// Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is
  /// supplied the value is interpreted as bytes.
  final String? availableMemory;

  /// The binary authorization policy to be checked when deploying the Cloud Run service.
  final String? binaryAuthorizationPolicy;

  /// Egress settings for direct VPC. If not provided, it defaults to VPC_EGRESS_PRIVATE_RANGES_ONLY.
  /// Possible values are: `VPC_EGRESS_ALL_TRAFFIC`, `VPC_EGRESS_PRIVATE_RANGES_ONLY`.
  final String? directVpcEgress;

  /// The Direct VPC network interface for the Cloud Function. Currently only a single Direct VPC is supported.
  /// Structure is documented below.
  final List<FunctionServiceConfigDirectVpcNetworkInterface>?
      directVpcNetworkInterfaces;

  /// Environment variables that shall be available during function execution.
  final Map<String, String>? environmentVariables;

  /// (Output)
  /// URIs of the Service deployed
  final String? gcfUri;

  /// Available ingress settings. Defaults to "ALLOW_ALL" if unspecified.
  /// Default value is `ALLOW_ALL`.
  /// Possible values are: `ALLOW_ALL`, `ALLOW_INTERNAL_ONLY`, `ALLOW_INTERNAL_AND_GCLB`.
  final String? ingressSettings;

  /// The limit on the maximum number of function instances that may coexist at a
  /// given time.
  final int? maxInstanceCount;

  /// Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  final int? maxInstanceRequestConcurrency;

  /// The limit on the minimum number of function instances that may coexist at a
  /// given time.
  final int? minInstanceCount;

  /// Secret environment variables configuration.
  /// Structure is documented below.
  final List<FunctionServiceConfigSecretEnvironmentVariable>?
      secretEnvironmentVariables;

  /// Secret volumes configuration.
  /// Structure is documented below.
  final List<FunctionServiceConfigSecretVolume>? secretVolumes;

  /// (Output)
  /// Name of the service associated with a Function.
  final String? service;

  /// The email of the service account for this function.
  final String? serviceAccountEmail;

  /// The function execution timeout. Execution is considered failed and
  /// can be terminated if the function is not completed at the end of the
  /// timeout period. Defaults to 60 seconds.
  final int? timeoutSeconds;

  /// (Output)
  /// URI of the Service deployed.
  final String? uri;

  /// The Serverless VPC Access connector that this cloud function can connect to.
  final String? vpcConnector;

  /// Available egress settings.
  /// Possible values are: `VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED`, `PRIVATE_RANGES_ONLY`, `ALL_TRAFFIC`.
  final String? vpcConnectorEgressSettings;

  FunctionServiceConfig({
    this.allTrafficOnLatestRevision,
    this.availableCpu,
    this.availableMemory,
    this.binaryAuthorizationPolicy,
    this.directVpcEgress,
    this.directVpcNetworkInterfaces,
    this.environmentVariables,
    this.gcfUri,
    this.ingressSettings,
    this.maxInstanceCount,
    this.maxInstanceRequestConcurrency,
    this.minInstanceCount,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.service,
    this.serviceAccountEmail,
    this.timeoutSeconds,
    this.uri,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allTrafficOnLatestRevisionValue = allTrafficOnLatestRevision;
    if (allTrafficOnLatestRevisionValue != null) {
      map['allTrafficOnLatestRevision'] = allTrafficOnLatestRevisionValue;
    }
    final availableCpuValue = availableCpu;
    if (availableCpuValue != null) {
      map['availableCpu'] = availableCpuValue;
    }
    final availableMemoryValue = availableMemory;
    if (availableMemoryValue != null) {
      map['availableMemory'] = availableMemoryValue;
    }
    final binaryAuthorizationPolicyValue = binaryAuthorizationPolicy;
    if (binaryAuthorizationPolicyValue != null) {
      map['binaryAuthorizationPolicy'] = binaryAuthorizationPolicyValue;
    }
    final directVpcEgressValue = directVpcEgress;
    if (directVpcEgressValue != null) {
      map['directVpcEgress'] = directVpcEgressValue;
    }
    final directVpcNetworkInterfacesValue = directVpcNetworkInterfaces;
    if (directVpcNetworkInterfacesValue != null) {
      map['directVpcNetworkInterfaces'] = pulumi.Input.encodeList<
              FunctionServiceConfigDirectVpcNetworkInterface,
              Map<String, dynamic>>(
          directVpcNetworkInterfacesValue, (value) => value.toMap());
    }
    final environmentVariablesValue = environmentVariables;
    if (environmentVariablesValue != null) {
      map['environmentVariables'] = environmentVariablesValue;
    }
    final gcfUriValue = gcfUri;
    if (gcfUriValue != null) {
      map['gcfUri'] = gcfUriValue;
    }
    final ingressSettingsValue = ingressSettings;
    if (ingressSettingsValue != null) {
      map['ingressSettings'] = ingressSettingsValue;
    }
    final maxInstanceCountValue = maxInstanceCount;
    if (maxInstanceCountValue != null) {
      map['maxInstanceCount'] = maxInstanceCountValue;
    }
    final maxInstanceRequestConcurrencyValue = maxInstanceRequestConcurrency;
    if (maxInstanceRequestConcurrencyValue != null) {
      map['maxInstanceRequestConcurrency'] = maxInstanceRequestConcurrencyValue;
    }
    final minInstanceCountValue = minInstanceCount;
    if (minInstanceCountValue != null) {
      map['minInstanceCount'] = minInstanceCountValue;
    }
    final secretEnvironmentVariablesValue = secretEnvironmentVariables;
    if (secretEnvironmentVariablesValue != null) {
      map['secretEnvironmentVariables'] = pulumi.Input.encodeList<
              FunctionServiceConfigSecretEnvironmentVariable,
              Map<String, dynamic>>(
          secretEnvironmentVariablesValue, (value) => value.toMap());
    }
    final secretVolumesValue = secretVolumes;
    if (secretVolumesValue != null) {
      map['secretVolumes'] = pulumi.Input.encodeList<
          FunctionServiceConfigSecretVolume,
          Map<String, dynamic>>(secretVolumesValue, (value) => value.toMap());
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final timeoutSecondsValue = timeoutSeconds;
    if (timeoutSecondsValue != null) {
      map['timeoutSeconds'] = timeoutSecondsValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    final vpcConnectorValue = vpcConnector;
    if (vpcConnectorValue != null) {
      map['vpcConnector'] = vpcConnectorValue;
    }
    final vpcConnectorEgressSettingsValue = vpcConnectorEgressSettings;
    if (vpcConnectorEgressSettingsValue != null) {
      map['vpcConnectorEgressSettings'] = vpcConnectorEgressSettingsValue;
    }
    return map;
  }

  factory FunctionServiceConfig.fromMap(Map<String, dynamic> map) {
    return FunctionServiceConfig(
      allTrafficOnLatestRevision: map['allTrafficOnLatestRevision'] == null
          ? null
          : map['allTrafficOnLatestRevision'] as bool,
      availableCpu:
          map['availableCpu'] == null ? null : map['availableCpu'] as String,
      availableMemory: map['availableMemory'] == null
          ? null
          : map['availableMemory'] as String,
      binaryAuthorizationPolicy: map['binaryAuthorizationPolicy'] == null
          ? null
          : map['binaryAuthorizationPolicy'] as String,
      directVpcEgress: map['directVpcEgress'] == null
          ? null
          : map['directVpcEgress'] as String,
      directVpcNetworkInterfaces: map['directVpcNetworkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<
                  FunctionServiceConfigDirectVpcNetworkInterface>(
              map['directVpcNetworkInterfaces'],
              (value) => FunctionServiceConfigDirectVpcNetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
      environmentVariables: map['environmentVariables'] == null
          ? null
          : (map['environmentVariables'] as Map).cast<String, String>(),
      gcfUri: map['gcfUri'] == null ? null : map['gcfUri'] as String,
      ingressSettings: map['ingressSettings'] == null
          ? null
          : map['ingressSettings'] as String,
      maxInstanceCount: map['maxInstanceCount'] == null
          ? null
          : map['maxInstanceCount'] as int,
      maxInstanceRequestConcurrency:
          map['maxInstanceRequestConcurrency'] == null
              ? null
              : map['maxInstanceRequestConcurrency'] as int,
      minInstanceCount: map['minInstanceCount'] == null
          ? null
          : map['minInstanceCount'] as int,
      secretEnvironmentVariables: map['secretEnvironmentVariables'] == null
          ? null
          : pulumi.Input.decodeList<
                  FunctionServiceConfigSecretEnvironmentVariable>(
              map['secretEnvironmentVariables'],
              (value) => FunctionServiceConfigSecretEnvironmentVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      secretVolumes: map['secretVolumes'] == null
          ? null
          : pulumi.Input.decodeList<FunctionServiceConfigSecretVolume>(
              map['secretVolumes'],
              (value) => FunctionServiceConfigSecretVolume.fromMap(
                  (value as Map).cast<String, dynamic>())),
      service: map['service'] == null ? null : map['service'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      timeoutSeconds:
          map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
      uri: map['uri'] == null ? null : map['uri'] as String,
      vpcConnector:
          map['vpcConnector'] == null ? null : map['vpcConnector'] as String,
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] == null
          ? null
          : map['vpcConnectorEgressSettings'] as String,
    );
  }
}
