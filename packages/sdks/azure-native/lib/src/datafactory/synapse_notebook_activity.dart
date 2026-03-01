// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'big_data_pool_parametrization_reference.dart';
import 'linked_service_reference.dart';
import 'notebook_parameter.dart';
import 'spark_configuration_parametrization_reference.dart';
import 'synapse_notebook_reference.dart';
import 'user_property.dart';

/// Execute Synapse notebook activity.
class SynapseNotebookActivity {
  /// Spark configuration properties, which will override the 'conf' of the notebook you provide.
  final dynamic conf;
  /// The type of the spark config.
  final String? configurationType;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Number of core and memory to be used for driver allocated in the specified Spark pool for the session, which will be used for overriding 'driverCores' and 'driverMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  final dynamic driverSize;
  /// Number of core and memory to be used for executors allocated in the specified Spark pool for the session, which will be used for overriding 'executorCores' and 'executorMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  final dynamic executorSize;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Activity name.
  final String name;
  /// Synapse notebook reference.
  final SynapseNotebookReference notebook;
  /// Number of executors to launch for this session, which will override the 'numExecutors' of the notebook you provide. Type: integer (or Expression with resultType integer).
  final dynamic numExecutors;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Notebook parameters.
  final Map<String, NotebookParameter>? parameters;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Spark configuration property.
  final Map<String, dynamic>? sparkConfig;
  /// The name of the big data pool which will be used to execute the notebook.
  final BigDataPoolParametrizationReference? sparkPool;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// The spark configuration of the spark job.
  final SparkConfigurationParametrizationReference? targetSparkConfiguration;
  /// Type of activity.
  /// Expected value is 'SynapseNotebook'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [SynapseNotebookActivity].
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
  SynapseNotebookActivity({
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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'driverSize': ?driverSize,
      'executorSize': ?executorSize,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'notebook': notebook.toMap(),
      'numExecutors': ?numExecutors,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<NotebookParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'policy': ?policy == null ? null : policy!.toMap(),
      'sparkConfig': ?sparkConfig,
      'sparkPool': ?sparkPool == null ? null : sparkPool!.toMap(),
      'state': ?state,
      'targetSparkConfiguration': ?targetSparkConfiguration == null ? null : targetSparkConfiguration!.toMap(),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory SynapseNotebookActivity.fromMap(Map<String, dynamic> map) {
    return SynapseNotebookActivity(
      conf: map['conf'] == null ? null : map['conf'],
      configurationType: map['configurationType'] == null ? null : map['configurationType'] as String,
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      driverSize: map['driverSize'] == null ? null : map['driverSize'],
      executorSize: map['executorSize'] == null ? null : map['executorSize'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      notebook: SynapseNotebookReference.fromMap((map['notebook'] as Map).cast<String, dynamic>()),
      numExecutors: map['numExecutors'] == null ? null : map['numExecutors'],
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<NotebookParameter>(map['parameters'], (value) => NotebookParameter.fromMap((value as Map).cast<String, dynamic>())),
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      sparkConfig: map['sparkConfig'] == null ? null : (map['sparkConfig'] as Map).cast<String, dynamic>(),
      sparkPool: map['sparkPool'] == null ? null : BigDataPoolParametrizationReference.fromMap((map['sparkPool'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      targetSparkConfiguration: map['targetSparkConfiguration'] == null ? null : SparkConfigurationParametrizationReference.fromMap((map['targetSparkConfiguration'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

