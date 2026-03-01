// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'big_data_pool_parametrization_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'notebook_parameter_response.dart';
import 'spark_configuration_parametrization_reference_response.dart';
import 'synapse_notebook_reference_response.dart';
import 'user_property_response.dart';

/// Execute Synapse notebook activity.
class SynapseNotebookActivityResponse {
  /// Spark configuration properties, which will override the 'conf' of the notebook you provide.
  final dynamic conf;
  /// The type of the spark config.
  final String? configurationType;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Number of core and memory to be used for driver allocated in the specified Spark pool for the session, which will be used for overriding 'driverCores' and 'driverMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  final dynamic driverSize;
  /// Number of core and memory to be used for executors allocated in the specified Spark pool for the session, which will be used for overriding 'executorCores' and 'executorMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  final dynamic executorSize;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// Activity name.
  final String name;
  /// Synapse notebook reference.
  final SynapseNotebookReferenceResponse notebook;
  /// Number of executors to launch for this session, which will override the 'numExecutors' of the notebook you provide. Type: integer (or Expression with resultType integer).
  final dynamic numExecutors;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Notebook parameters.
  final Map<String, NotebookParameterResponse>? parameters;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// Spark configuration property.
  final Map<String, dynamic>? sparkConfig;
  /// The name of the big data pool which will be used to execute the notebook.
  final BigDataPoolParametrizationReferenceResponse? sparkPool;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// The spark configuration of the spark job.
  final SparkConfigurationParametrizationReferenceResponse? targetSparkConfiguration;
  /// Type of activity.
  /// Expected value is 'SynapseNotebook'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

  /// Creates a new [SynapseNotebookActivityResponse].
  /// [conf] Spark configuration properties, which will override the 'conf' of the notebook you provide.
  /// [configurationType] The type of the spark config.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [driverSize] Number of core and memory to be used for driver allocated in the specified Spark pool for the session, which will be used for overriding 'driverCores' and 'driverMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  /// [executorSize] Number of core and memory to be used for executors allocated in the specified Spark pool for the session, which will be used for overriding 'executorCores' and 'executorMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [notebook] Synapse notebook reference.
  /// [numExecutors] Number of executors to launch for this session, which will override the 'numExecutors' of the notebook you provide. Type: integer (or Expression with resultType integer).
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [parameters] Notebook parameters.
  /// [policy] Activity policy.
  /// [sparkConfig] Spark configuration property.
  /// [sparkPool] The name of the big data pool which will be used to execute the notebook.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [targetSparkConfiguration] The spark configuration of the spark job.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  SynapseNotebookActivityResponse({
    this.conf,
    this.configurationType,
    this.dependsOn,
    this.description,
    this.driverSize,
    this.executorSize,
    this.linkedServiceName,
    required this.name,
    required this.notebook,
    this.numExecutors,
    this.onInactiveMarkAs,
    this.parameters,
    this.policy,
    this.sparkConfig,
    this.sparkPool,
    this.state,
    this.targetSparkConfiguration,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conf': ?conf,
      'configurationType': ?configurationType,
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'driverSize': ?driverSize,
      'executorSize': ?executorSize,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'notebook': notebook.toMap(),
      'numExecutors': ?numExecutors,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<NotebookParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'policy': ?policy == null ? null : policy!.toMap(),
      'sparkConfig': ?sparkConfig,
      'sparkPool': ?sparkPool == null ? null : sparkPool!.toMap(),
      'state': ?state,
      'targetSparkConfiguration': ?targetSparkConfiguration == null ? null : targetSparkConfiguration!.toMap(),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory SynapseNotebookActivityResponse.fromMap(Map<String, dynamic> map) {
    return SynapseNotebookActivityResponse(
      conf: map['conf'] == null ? null : map['conf'],
      configurationType: map['configurationType'] == null ? null : map['configurationType'] as String,
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      driverSize: map['driverSize'] == null ? null : map['driverSize'],
      executorSize: map['executorSize'] == null ? null : map['executorSize'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      notebook: SynapseNotebookReferenceResponse.fromMap((map['notebook'] as Map).cast<String, dynamic>()),
      numExecutors: map['numExecutors'] == null ? null : map['numExecutors'],
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<NotebookParameterResponse>(map['parameters'], (value) => NotebookParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      sparkConfig: map['sparkConfig'] == null ? null : (map['sparkConfig'] as Map).cast<String, dynamic>(),
      sparkPool: map['sparkPool'] == null ? null : BigDataPoolParametrizationReferenceResponse.fromMap((map['sparkPool'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      targetSparkConfiguration: map['targetSparkConfiguration'] == null ? null : SparkConfigurationParametrizationReferenceResponse.fromMap((map['targetSparkConfiguration'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

