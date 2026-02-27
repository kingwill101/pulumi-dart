// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_function_service_config_direct_vpc_network_interface/get_function_service_config_direct_vpc_network_interface.dart';
import '../get_function_service_config_secret_environment_variable/get_function_service_config_secret_environment_variable.dart';
import '../get_function_service_config_secret_volume/get_function_service_config_secret_volume.dart';

class GetFunctionServiceConfig {
  /// Whether 100% of traffic is routed to the latest revision. Defaults to true.
  final bool allTrafficOnLatestRevision;

  /// The number of CPUs used in a single container instance. Default value is calculated from available memory.
  final String availableCpu;

  /// The amount of memory available for a function.
  /// Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is
  /// supplied the value is interpreted as bytes.
  final String availableMemory;

  /// The binary authorization policy to be checked when deploying the Cloud Run service.
  final String binaryAuthorizationPolicy;

  /// Egress settings for direct VPC. If not provided, it defaults to VPC_EGRESS_PRIVATE_RANGES_ONLY. Possible values: ["VPC_EGRESS_ALL_TRAFFIC", "VPC_EGRESS_PRIVATE_RANGES_ONLY"]
  final String directVpcEgress;

  /// The Direct VPC network interface for the Cloud Function. Currently only a single Direct VPC is supported.
  final List<GetFunctionServiceConfigDirectVpcNetworkInterface>
      directVpcNetworkInterfaces;

  /// Environment variables that shall be available during function execution.
  final Map<String, String> environmentVariables;

  /// URIs of the Service deployed
  final String gcfUri;

  /// Available ingress settings. Defaults to "ALLOW_ALL" if unspecified. Default value: "ALLOW_ALL" Possible values: ["ALLOW_ALL", "ALLOW_INTERNAL_ONLY", "ALLOW_INTERNAL_AND_GCLB"]
  final String ingressSettings;

  /// The limit on the maximum number of function instances that may coexist at a
  /// given time.
  final int maxInstanceCount;

  /// Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  final int maxInstanceRequestConcurrency;

  /// The limit on the minimum number of function instances that may coexist at a
  /// given time.
  final int minInstanceCount;

  /// Secret environment variables configuration.
  final List<GetFunctionServiceConfigSecretEnvironmentVariable>
      secretEnvironmentVariables;

  /// Secret volumes configuration.
  final List<GetFunctionServiceConfigSecretVolume> secretVolumes;

  /// Name of the service associated with a Function.
  final String service;

  /// The email of the service account for this function.
  final String serviceAccountEmail;

  /// The function execution timeout. Execution is considered failed and
  /// can be terminated if the function is not completed at the end of the
  /// timeout period. Defaults to 60 seconds.
  final int timeoutSeconds;

  /// URI of the Service deployed.
  final String uri;

  /// The Serverless VPC Access connector that this cloud function can connect to.
  final String vpcConnector;

  /// Available egress settings. Possible values: ["VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED", "PRIVATE_RANGES_ONLY", "ALL_TRAFFIC"]
  final String vpcConnectorEgressSettings;

  GetFunctionServiceConfig({
    required this.allTrafficOnLatestRevision,
    required this.availableCpu,
    required this.availableMemory,
    required this.binaryAuthorizationPolicy,
    required this.directVpcEgress,
    required this.directVpcNetworkInterfaces,
    required this.environmentVariables,
    required this.gcfUri,
    required this.ingressSettings,
    required this.maxInstanceCount,
    required this.maxInstanceRequestConcurrency,
    required this.minInstanceCount,
    required this.secretEnvironmentVariables,
    required this.secretVolumes,
    required this.service,
    required this.serviceAccountEmail,
    required this.timeoutSeconds,
    required this.uri,
    required this.vpcConnector,
    required this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allTrafficOnLatestRevision'] = allTrafficOnLatestRevision;
    map['availableCpu'] = availableCpu;
    map['availableMemory'] = availableMemory;
    map['binaryAuthorizationPolicy'] = binaryAuthorizationPolicy;
    map['directVpcEgress'] = directVpcEgress;
    map['directVpcNetworkInterfaces'] = pulumi.Input.encodeList<
            GetFunctionServiceConfigDirectVpcNetworkInterface,
            Map<String, dynamic>>(
        directVpcNetworkInterfaces, (value) => value.toMap());
    map['environmentVariables'] = environmentVariables;
    map['gcfUri'] = gcfUri;
    map['ingressSettings'] = ingressSettings;
    map['maxInstanceCount'] = maxInstanceCount;
    map['maxInstanceRequestConcurrency'] = maxInstanceRequestConcurrency;
    map['minInstanceCount'] = minInstanceCount;
    map['secretEnvironmentVariables'] = pulumi.Input.encodeList<
            GetFunctionServiceConfigSecretEnvironmentVariable,
            Map<String, dynamic>>(
        secretEnvironmentVariables, (value) => value.toMap());
    map['secretVolumes'] = pulumi.Input.encodeList<
        GetFunctionServiceConfigSecretVolume,
        Map<String, dynamic>>(secretVolumes, (value) => value.toMap());
    map['service'] = service;
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['timeoutSeconds'] = timeoutSeconds;
    map['uri'] = uri;
    map['vpcConnector'] = vpcConnector;
    map['vpcConnectorEgressSettings'] = vpcConnectorEgressSettings;
    return map;
  }

  factory GetFunctionServiceConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionServiceConfig(
      allTrafficOnLatestRevision: map['allTrafficOnLatestRevision'] as bool,
      availableCpu: map['availableCpu'] as String,
      availableMemory: map['availableMemory'] as String,
      binaryAuthorizationPolicy: map['binaryAuthorizationPolicy'] as String,
      directVpcEgress: map['directVpcEgress'] as String,
      directVpcNetworkInterfaces: pulumi.Input.decodeList<
              GetFunctionServiceConfigDirectVpcNetworkInterface>(
          map['directVpcNetworkInterfaces'],
          (value) => GetFunctionServiceConfigDirectVpcNetworkInterface.fromMap(
              (value as Map).cast<String, dynamic>())),
      environmentVariables:
          (map['environmentVariables'] as Map).cast<String, String>(),
      gcfUri: map['gcfUri'] as String,
      ingressSettings: map['ingressSettings'] as String,
      maxInstanceCount: map['maxInstanceCount'] as int,
      maxInstanceRequestConcurrency:
          map['maxInstanceRequestConcurrency'] as int,
      minInstanceCount: map['minInstanceCount'] as int,
      secretEnvironmentVariables: pulumi.Input.decodeList<
              GetFunctionServiceConfigSecretEnvironmentVariable>(
          map['secretEnvironmentVariables'],
          (value) => GetFunctionServiceConfigSecretEnvironmentVariable.fromMap(
              (value as Map).cast<String, dynamic>())),
      secretVolumes:
          pulumi.Input.decodeList<GetFunctionServiceConfigSecretVolume>(
              map['secretVolumes'],
              (value) => GetFunctionServiceConfigSecretVolume.fromMap(
                  (value as Map).cast<String, dynamic>())),
      service: map['service'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      timeoutSeconds: map['timeoutSeconds'] as int,
      uri: map['uri'] as String,
      vpcConnector: map['vpcConnector'] as String,
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] as String,
    );
  }
}
