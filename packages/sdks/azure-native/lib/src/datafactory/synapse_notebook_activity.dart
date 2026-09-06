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
  final pulumi.Input<dynamic>? configurationType;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// Number of core and memory to be used for driver allocated in the specified Spark pool for the session, which will be used for overriding 'driverCores' and 'driverMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? driverSize;
  /// Number of core and memory to be used for executors allocated in the specified Spark pool for the session, which will be used for overriding 'executorCores' and 'executorMemory' of the notebook you provide. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? executorSize;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference?>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Synapse notebook reference.
  final pulumi.Input<SynapseNotebookReference> notebook;
  /// Number of executors to launch for this session, which will override the 'numExecutors' of the notebook you provide. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? numExecutors;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<dynamic>? onInactiveMarkAs;
  /// Notebook parameters.
  final pulumi.Input<Map<String, NotebookParameter>?>? parameters;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy?>? policy;
  /// Spark configuration property.
  final pulumi.Input<dynamic>? sparkConfig;
  /// The name of the big data pool which will be used to execute the notebook.
  final pulumi.Input<BigDataPoolParametrizationReference?>? sparkPool;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<dynamic>? state;
  /// The spark configuration of the spark job.
  final pulumi.Input<SparkConfigurationParametrizationReference?>? targetSparkConfiguration;
  /// Type of activity.
  /// Expected value is 'SynapseNotebook'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>?>? userProperties;

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
  const SynapseNotebookActivity({
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
      conf: (() { final guardedValue = map['conf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      configurationType: (() { final guardedValue = map['configurationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependency>(guardedValue, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driverSize: (() { final guardedValue = map['driverSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      executorSize: (() { final guardedValue = map['executorSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      linkedServiceName: (() { final guardedValue = map['linkedServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      notebook: pulumi.Input.fromValue(SynapseNotebookReference.fromMap((map['notebook']! as Map).cast<String, dynamic>())),
      numExecutors: (() { final guardedValue = map['numExecutors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<NotebookParameter>(guardedValue, (value) => NotebookParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sparkConfig: (() { final guardedValue = map['sparkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sparkPool: (() { final guardedValue = map['sparkPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BigDataPoolParametrizationReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetSparkConfiguration: (() { final guardedValue = map['targetSparkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SparkConfigurationParametrizationReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProperty>(guardedValue, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
