// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_env_var_cloudfunctions_v2.dart';
import 'secret_volume_cloudfunctions_v2.dart';
import 'service_config_ingress_settings.dart';
import 'service_config_security_level.dart';
import 'service_config_vpc_connector_egress_settings.dart';

/// Describes the Service being deployed. Currently Supported : Cloud Run (fully managed).
class ServiceConfig {
  /// Whether 100% of traffic is routed to the latest revision. On CreateFunction and UpdateFunction, when set to true, the revision being deployed will serve 100% of traffic, ignoring any traffic split settings, if any. On GetFunction, true will be returned if the latest revision is serving 100% of traffic.
  final bool? allTrafficOnLatestRevision;

  /// [Preview] The number of CPUs used in a single container instance. Default value is calculated from available memory. Supports the same values as Cloud Run, see https://cloud.google.com/run/docs/reference/rest/v1/Container#resourcerequirements Example: "1" indicates 1 vCPU
  final String? availableCpu;

  /// The amount of memory available for a function. Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is supplied the value is interpreted as bytes. See https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go a full description.
  final String? availableMemory;

  /// Environment variables that shall be available during function execution.
  final Map<String, String>? environmentVariables;

  /// The ingress settings for the function, controlling what traffic can reach it.
  final ServiceConfigIngressSettings? ingressSettings;

  /// The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  final int? maxInstanceCount;

  /// [Preview] Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  final int? maxInstanceRequestConcurrency;

  /// The limit on the minimum number of function instances that may coexist at a given time. Function instances are kept in idle state for a short period after they finished executing the request to reduce cold start time for subsequent requests. Setting a minimum instance count will ensure that the given number of instances are kept running in idle state always. This can help with cold start times when jump in incoming request count occurs after the idle instance would have been stopped in the default case.
  final int? minInstanceCount;

  /// Secret environment variables configuration.
  final List<SecretEnvVarCloudfunctionsV2>? secretEnvironmentVariables;

  /// Secret volumes configuration.
  final List<SecretVolumeCloudfunctionsV2>? secretVolumes;

  /// Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
  final ServiceConfigSecurityLevel? securityLevel;

  /// The email of the service's service account. If empty, defaults to `{project_number}-compute@developer.gserviceaccount.com`.
  final String? serviceAccountEmail;

  /// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  final int? timeoutSeconds;

  /// The Serverless VPC Access connector that this cloud function can connect to. The format of this field is `projects/*/locations/*/connectors/*`.
  final String? vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final ServiceConfigVpcConnectorEgressSettings? vpcConnectorEgressSettings;

  /// Creates a new [ServiceConfig].
  /// [allTrafficOnLatestRevision] Whether 100% of traffic is routed to the latest revision. On CreateFunction and UpdateFunction, when set to true, the revision being deployed will serve 100% of traffic, ignoring any traffic split settings, if any. On GetFunction, true will be returned if the latest revision is serving 100% of traffic.
  /// [availableCpu] [Preview] The number of CPUs used in a single container instance. Default value is calculated from available memory. Supports the same values as Cloud Run, see https://cloud.google.com/run/docs/reference/rest/v1/Container#resourcerequirements Example: "1" indicates 1 vCPU
  /// [availableMemory] The amount of memory available for a function. Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is supplied the value is interpreted as bytes. See https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go a full description.
  /// [environmentVariables] Environment variables that shall be available during function execution.
  /// [ingressSettings] The ingress settings for the function, controlling what traffic can reach it.
  /// [maxInstanceCount] The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  /// [maxInstanceRequestConcurrency] [Preview] Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  /// [minInstanceCount] The limit on the minimum number of function instances that may coexist at a given time. Function instances are kept in idle state for a short period after they finished executing the request to reduce cold start time for subsequent requests. Setting a minimum instance count will ensure that the given number of instances are kept running in idle state always. This can help with cold start times when jump in incoming request count occurs after the idle instance would have been stopped in the default case.
  /// [secretEnvironmentVariables] Secret environment variables configuration.
  /// [secretVolumes] Secret volumes configuration.
  /// [securityLevel] Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
  /// [serviceAccountEmail] The email of the service's service account. If empty, defaults to `{project_number}-compute@developer.gserviceaccount.com`.
  /// [timeoutSeconds] The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  /// [vpcConnector] The Serverless VPC Access connector that this cloud function can connect to. The format of this field is `projects/*/locations/*/connectors/*`.
  /// [vpcConnectorEgressSettings] The egress settings for the connector, controlling what traffic is diverted through it.
  ServiceConfig({
    this.allTrafficOnLatestRevision,
    this.availableCpu,
    this.availableMemory,
    this.environmentVariables,
    this.ingressSettings,
    this.maxInstanceCount,
    this.maxInstanceRequestConcurrency,
    this.minInstanceCount,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.securityLevel,
    this.serviceAccountEmail,
    this.timeoutSeconds,
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
    final environmentVariablesValue = environmentVariables;
    if (environmentVariablesValue != null) {
      map['environmentVariables'] = environmentVariablesValue;
    }
    final ingressSettingsValue = ingressSettings;
    if (ingressSettingsValue != null) {
      map['ingressSettings'] = ingressSettingsValue.value;
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
              SecretEnvVarCloudfunctionsV2, Map<String, dynamic>>(
          secretEnvironmentVariablesValue, (value) => value.toMap());
    }
    final secretVolumesValue = secretVolumes;
    if (secretVolumesValue != null) {
      map['secretVolumes'] = pulumi.Input.encodeList<
          SecretVolumeCloudfunctionsV2,
          Map<String, dynamic>>(secretVolumesValue, (value) => value.toMap());
    }
    final securityLevelValue = securityLevel;
    if (securityLevelValue != null) {
      map['securityLevel'] = securityLevelValue.value;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final timeoutSecondsValue = timeoutSeconds;
    if (timeoutSecondsValue != null) {
      map['timeoutSeconds'] = timeoutSecondsValue;
    }
    final vpcConnectorValue = vpcConnector;
    if (vpcConnectorValue != null) {
      map['vpcConnector'] = vpcConnectorValue;
    }
    final vpcConnectorEgressSettingsValue = vpcConnectorEgressSettings;
    if (vpcConnectorEgressSettingsValue != null) {
      map['vpcConnectorEgressSettings'] = vpcConnectorEgressSettingsValue.value;
    }
    return map;
  }

  factory ServiceConfig.fromMap(Map<String, dynamic> map) {
    return ServiceConfig(
      allTrafficOnLatestRevision: map['allTrafficOnLatestRevision'] == null
          ? null
          : map['allTrafficOnLatestRevision'] as bool,
      availableCpu:
          map['availableCpu'] == null ? null : map['availableCpu'] as String,
      availableMemory: map['availableMemory'] == null
          ? null
          : map['availableMemory'] as String,
      environmentVariables: map['environmentVariables'] == null
          ? null
          : (map['environmentVariables'] as Map).cast<String, String>(),
      ingressSettings: map['ingressSettings'] == null
          ? null
          : ServiceConfigIngressSettings.fromValue(
              map['ingressSettings'] as String),
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
          : pulumi.Input.decodeList<SecretEnvVarCloudfunctionsV2>(
              map['secretEnvironmentVariables'],
              (value) => SecretEnvVarCloudfunctionsV2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      secretVolumes: map['secretVolumes'] == null
          ? null
          : pulumi.Input.decodeList<SecretVolumeCloudfunctionsV2>(
              map['secretVolumes'],
              (value) => SecretVolumeCloudfunctionsV2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      securityLevel: map['securityLevel'] == null
          ? null
          : ServiceConfigSecurityLevel.fromValue(
              map['securityLevel'] as String),
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      timeoutSeconds:
          map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
      vpcConnector:
          map['vpcConnector'] == null ? null : map['vpcConnector'] as String,
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] == null
          ? null
          : ServiceConfigVpcConnectorEgressSettings.fromValue(
              map['vpcConnectorEgressSettings'] as String),
    );
  }
}
