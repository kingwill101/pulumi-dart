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
  final pulumi.Input<dynamic>? conf;
  /// The type of the spark config.
  final pulumi.Input<String>? configurationType;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Number of core and memory to be used for driver allocated in the specified Spark pool for the session, which will be used for overriding 'driverCores' and 'driverMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? driverSize;
  /// Number of core and memory to be used for executors allocated in the specified Spark pool for the session, which will be used for overriding 'executorCores' and 'executorMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? executorSize;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Synapse notebook reference.
  final pulumi.Input<SynapseNotebookReference> notebook;
  /// Number of executors to launch for this session, which will override the 'numExecutors' of the notebook you provide. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? numExecutors;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Notebook parameters.
  final pulumi.Input<Map<String, NotebookParameter>>? parameters;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;
  /// Spark configuration property.
  final pulumi.Input<Map<String, dynamic>>? sparkConfig;
  /// The name of the big data pool which will be used to execute the notebook.
  final pulumi.Input<BigDataPoolParametrizationReference>? sparkPool;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// The spark configuration of the spark job.
  final pulumi.Input<SparkConfigurationParametrizationReference>? targetSparkConfiguration;
  /// Type of activity.
  /// Expected value is 'SynapseNotebook'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'driverSize': ?driverSize,
      'executorSize': ?executorSize,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'notebook': pulumi.Input.mapInputValue<SynapseNotebookReference, Map<String, dynamic>>(notebook, (value) => value.toMap()),
      'numExecutors': ?numExecutors,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, NotebookParameter>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<NotebookParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'sparkConfig': ?sparkConfig,
      'sparkPool': ?pulumi.Input.mapOptionalInputValue<BigDataPoolParametrizationReference, Map<String, dynamic>>(sparkPool, (value) => value.toMap()),
      'state': ?state,
      'targetSparkConfiguration': ?pulumi.Input.mapOptionalInputValue<SparkConfigurationParametrizationReference, Map<String, dynamic>>(targetSparkConfiguration, (value) => value.toMap()),
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SynapseNotebookActivity.fromMap(Map<String, dynamic> map) {
    return SynapseNotebookActivity(
      conf: map['conf'] == null ? null : (map['conf']!).input(),
      configurationType: map['configurationType'] == null ? null : (map['configurationType']! as String).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn']!, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      driverSize: map['driverSize'] == null ? null : (map['driverSize']!).input(),
      executorSize: map['executorSize'] == null ? null : (map['executorSize']!).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      notebook: (SynapseNotebookReference.fromMap((map['notebook'] as Map).cast<String, dynamic>())).input(),
      numExecutors: map['numExecutors'] == null ? null : (map['numExecutors']!).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<NotebookParameter>(map['parameters']!, (value) => NotebookParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      sparkConfig: map['sparkConfig'] == null ? null : ((map['sparkConfig']! as Map).cast<String, dynamic>()).input(),
      sparkPool: map['sparkPool'] == null ? null : (BigDataPoolParametrizationReference.fromMap((map['sparkPool']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      targetSparkConfiguration: map['targetSparkConfiguration'] == null ? null : (SparkConfigurationParametrizationReference.fromMap((map['targetSparkConfiguration']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties']!, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

