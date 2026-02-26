// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_function_event_trigger/get_function_event_trigger.dart';
import '../get_function_on_deploy_update_policy/get_function_on_deploy_update_policy.dart';
import '../get_function_secret_environment_variable/get_function_secret_environment_variable.dart';
import '../get_function_secret_volume/get_function_secret_volume.dart';
import '../get_function_source_repository/get_function_source_repository.dart';

/// Result data returned by getFunction.
class GetFunctionResult {
  final List<Map<String, dynamic>> automaticUpdatePolicies;

  /// Available memory (in MB) to the function.
  final int availableMemoryMb;
  final Map<String, String> buildEnvironmentVariables;
  final String buildServiceAccount;
  final String buildWorkerPool;

  /// Description of the function.
  final String description;
  final String dockerRegistry;
  final String dockerRepository;
  final Map<String, String> effectiveLabels;

  /// Name of a JavaScript function that will be executed when the Google Cloud Function is triggered.
  final String entryPoint;
  final Map<String, String> environmentVariables;

  /// A source that fires events in response to a condition in another service. Structure is documented below.
  final List<GetFunctionEventTrigger> eventTriggers;
  final String httpsTriggerSecurityLevel;

  /// If function is triggered by HTTP, trigger URL is set here.
  final String httpsTriggerUrl;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Controls what traffic can reach the function.
  final String ingressSettings;
  final String kmsKeyName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final Map<String, String> labels;

  /// The limit on the maximum number of function instances that may coexist at a given time. If unset or set to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>, the API default will be used.
  final int maxInstances;
  final int minInstances;

  /// The name of the Cloud Function.
  final String name;
  final List<GetFunctionOnDeployUpdatePolicy> onDeployUpdatePolicies;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;

  /// The runtime in which the function is running.
  final String runtime;
  final List<GetFunctionSecretEnvironmentVariable> secretEnvironmentVariables;
  final List<GetFunctionSecretVolume> secretVolumes;

  /// The service account email to be assumed by the cloud function.
  final String serviceAccountEmail;

  /// The GCS bucket containing the zip archive which contains the function.
  final String sourceArchiveBucket;

  /// The source archive object (file) in archive bucket.
  final String sourceArchiveObject;

  /// The URL of the Cloud Source Repository that the function is deployed from. Structure is documented below.
  final List<GetFunctionSourceRepository> sourceRepositories;
  final String status;

  /// Function execution timeout (in seconds).
  final int timeout;

  /// If function is triggered by HTTP, this boolean is set.
  final bool triggerHttp;
  final String versionId;

  /// The VPC Network Connector that this cloud function can connect to.
  final String vpcConnector;

  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final String vpcConnectorEgressSettings;

  GetFunctionResult({
    required this.automaticUpdatePolicies,
    required this.availableMemoryMb,
    required this.buildEnvironmentVariables,
    required this.buildServiceAccount,
    required this.buildWorkerPool,
    required this.description,
    required this.dockerRegistry,
    required this.dockerRepository,
    required this.effectiveLabels,
    required this.entryPoint,
    required this.environmentVariables,
    required this.eventTriggers,
    required this.httpsTriggerSecurityLevel,
    required this.httpsTriggerUrl,
    required this.id,
    required this.ingressSettings,
    required this.kmsKeyName,
    required this.labels,
    required this.maxInstances,
    required this.minInstances,
    required this.name,
    required this.onDeployUpdatePolicies,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.runtime,
    required this.secretEnvironmentVariables,
    required this.secretVolumes,
    required this.serviceAccountEmail,
    required this.sourceArchiveBucket,
    required this.sourceArchiveObject,
    required this.sourceRepositories,
    required this.status,
    required this.timeout,
    required this.triggerHttp,
    required this.versionId,
    required this.vpcConnector,
    required this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['automaticUpdatePolicies'] = automaticUpdatePolicies;
    map['availableMemoryMb'] = availableMemoryMb;
    map['buildEnvironmentVariables'] = buildEnvironmentVariables;
    map['buildServiceAccount'] = buildServiceAccount;
    map['buildWorkerPool'] = buildWorkerPool;
    map['description'] = description;
    map['dockerRegistry'] = dockerRegistry;
    map['dockerRepository'] = dockerRepository;
    map['effectiveLabels'] = effectiveLabels;
    map['entryPoint'] = entryPoint;
    map['environmentVariables'] = environmentVariables;
    map['eventTriggers'] =
        Input.encodeList<GetFunctionEventTrigger, Map<String, dynamic>>(
            eventTriggers, (value) => value.toMap());
    map['httpsTriggerSecurityLevel'] = httpsTriggerSecurityLevel;
    map['httpsTriggerUrl'] = httpsTriggerUrl;
    map['id'] = id;
    map['ingressSettings'] = ingressSettings;
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    map['maxInstances'] = maxInstances;
    map['minInstances'] = minInstances;
    map['name'] = name;
    map['onDeployUpdatePolicies'] =
        Input.encodeList<GetFunctionOnDeployUpdatePolicy, Map<String, dynamic>>(
            onDeployUpdatePolicies, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['runtime'] = runtime;
    map['secretEnvironmentVariables'] = Input.encodeList<
            GetFunctionSecretEnvironmentVariable, Map<String, dynamic>>(
        secretEnvironmentVariables, (value) => value.toMap());
    map['secretVolumes'] =
        Input.encodeList<GetFunctionSecretVolume, Map<String, dynamic>>(
            secretVolumes, (value) => value.toMap());
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['sourceArchiveBucket'] = sourceArchiveBucket;
    map['sourceArchiveObject'] = sourceArchiveObject;
    map['sourceRepositories'] =
        Input.encodeList<GetFunctionSourceRepository, Map<String, dynamic>>(
            sourceRepositories, (value) => value.toMap());
    map['status'] = status;
    map['timeout'] = timeout;
    map['triggerHttp'] = triggerHttp;
    map['versionId'] = versionId;
    map['vpcConnector'] = vpcConnector;
    map['vpcConnectorEgressSettings'] = vpcConnectorEgressSettings;
    return map;
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      automaticUpdatePolicies:
          (map['automaticUpdatePolicies'] as List).cast<Map<String, dynamic>>(),
      availableMemoryMb: map['availableMemoryMb'] as int,
      buildEnvironmentVariables:
          (map['buildEnvironmentVariables'] as Map).cast<String, String>(),
      buildServiceAccount: map['buildServiceAccount'] as String,
      buildWorkerPool: map['buildWorkerPool'] as String,
      description: map['description'] as String,
      dockerRegistry: map['dockerRegistry'] as String,
      dockerRepository: map['dockerRepository'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      entryPoint: map['entryPoint'] as String,
      environmentVariables:
          (map['environmentVariables'] as Map).cast<String, String>(),
      eventTriggers: Input.decodeList<GetFunctionEventTrigger>(
          map['eventTriggers'],
          (value) => GetFunctionEventTrigger.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpsTriggerSecurityLevel: map['httpsTriggerSecurityLevel'] as String,
      httpsTriggerUrl: map['httpsTriggerUrl'] as String,
      id: map['id'] as String,
      ingressSettings: map['ingressSettings'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maxInstances: map['maxInstances'] as int,
      minInstances: map['minInstances'] as int,
      name: map['name'] as String,
      onDeployUpdatePolicies: Input.decodeList<GetFunctionOnDeployUpdatePolicy>(
          map['onDeployUpdatePolicies'],
          (value) => GetFunctionOnDeployUpdatePolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      runtime: map['runtime'] as String,
      secretEnvironmentVariables:
          Input.decodeList<GetFunctionSecretEnvironmentVariable>(
              map['secretEnvironmentVariables'],
              (value) => GetFunctionSecretEnvironmentVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      secretVolumes: Input.decodeList<GetFunctionSecretVolume>(
          map['secretVolumes'],
          (value) => GetFunctionSecretVolume.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      sourceArchiveBucket: map['sourceArchiveBucket'] as String,
      sourceArchiveObject: map['sourceArchiveObject'] as String,
      sourceRepositories: Input.decodeList<GetFunctionSourceRepository>(
          map['sourceRepositories'],
          (value) => GetFunctionSourceRepository.fromMap(
              (value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      timeout: map['timeout'] as int,
      triggerHttp: map['triggerHttp'] as bool,
      versionId: map['versionId'] as String,
      vpcConnector: map['vpcConnector'] as String,
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] as String,
    );
  }
}
