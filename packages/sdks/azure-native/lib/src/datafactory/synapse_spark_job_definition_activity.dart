// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'big_data_pool_parametrization_reference.dart';
import 'linked_service_reference.dart';
import 'spark_configuration_parametrization_reference.dart';
import 'synapse_spark_job_reference.dart';
import 'user_property.dart';

/// Execute spark job activity.
class SynapseSparkJobDefinitionActivity {
  /// User specified arguments to SynapseSparkJobDefinitionActivity.
  final pulumi.Input<List<dynamic>>? arguments;

  /// The fully-qualified identifier or the main class that is in the main definition file, which will override the 'className' of the spark job definition you provide. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? className;

  /// Spark configuration properties, which will override the 'conf' of the spark job definition you provide.
  final pulumi.Input<dynamic>? conf;

  /// The type of the spark config.
  final pulumi.Input<String>? configurationType;

  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;

  /// Activity description.
  final pulumi.Input<String>? description;

  /// Number of core and memory to be used for driver allocated in the specified Spark pool for the job, which will be used for overriding 'driverCores' and 'driverMemory' of the spark job definition you provide. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? driverSize;

  /// Number of core and memory to be used for executors allocated in the specified Spark pool for the job, which will be used for overriding 'executorCores' and 'executorMemory' of the spark job definition you provide. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? executorSize;

  /// The main file used for the job, which will override the 'file' of the spark job definition you provide. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? file;

  /// (Deprecated. Please use pythonCodeReference and filesV2) Additional files used for reference in the main definition file, which will override the 'files' of the spark job definition you provide.
  final pulumi.Input<List<dynamic>>? files;

  /// Additional files used for reference in the main definition file, which will override the 'jars' and 'files' of the spark job definition you provide.
  final pulumi.Input<List<dynamic>>? filesV2;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;

  /// Activity name.
  final pulumi.Input<String> name;

  /// Number of executors to launch for this job, which will override the 'numExecutors' of the spark job definition you provide. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? numExecutors;

  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;

  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;

  /// Additional python code files used for reference in the main definition file, which will override the 'pyFiles' of the spark job definition you provide.
  final pulumi.Input<List<dynamic>>? pythonCodeReference;

  /// Scanning subfolders from the root folder of the main definition file, these files will be added as reference files. The folders named 'jars', 'pyFiles', 'files' or 'archives' will be scanned, and the folders name are case sensitive. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? scanFolder;

  /// Spark configuration property.
  final pulumi.Input<Map<String, dynamic>>? sparkConfig;

  /// Synapse spark job reference.
  final pulumi.Input<SynapseSparkJobReference> sparkJob;

  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;

  /// The name of the big data pool which will be used to execute the spark batch job, which will override the 'targetBigDataPool' of the spark job definition you provide.
  final pulumi.Input<BigDataPoolParametrizationReference>? targetBigDataPool;

  /// The spark configuration of the spark job.
  final pulumi.Input<SparkConfigurationParametrizationReference>?
  targetSparkConfiguration;

  /// Type of activity.
  /// Expected value is 'SparkJob'.
  final pulumi.Input<String> type;

  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [SynapseSparkJobDefinitionActivity].
  /// [arguments] User specified arguments to SynapseSparkJobDefinitionActivity.
  /// [className] The fully-qualified identifier or the main class that is in the main definition file, which will override the 'className' of the spark job definition you provide. Type: string (or Expression with resultType string).
  /// [conf] Spark configuration properties, which will override the 'conf' of the spark job definition you provide.
  /// [configurationType] The type of the spark config.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [driverSize] Number of core and memory to be used for driver allocated in the specified Spark pool for the job, which will be used for overriding 'driverCores' and 'driverMemory' of the spark job definition you provide. Type: string (or Expression with resultType string).
  /// [executorSize] Number of core and memory to be used for executors allocated in the specified Spark pool for the job, which will be used for overriding 'executorCores' and 'executorMemory' of the spark job definition you provide. Type: string (or Expression with resultType string).
  /// [file] The main file used for the job, which will override the 'file' of the spark job definition you provide. Type: string (or Expression with resultType string).
  /// [files] (Deprecated. Please use pythonCodeReference and filesV2) Additional files used for reference in the main definition file, which will override the 'files' of the spark job definition you provide.
  /// [filesV2] Additional files used for reference in the main definition file, which will override the 'jars' and 'files' of the spark job definition you provide.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [numExecutors] Number of executors to launch for this job, which will override the 'numExecutors' of the spark job definition you provide. Type: integer (or Expression with resultType integer).
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [pythonCodeReference] Additional python code files used for reference in the main definition file, which will override the 'pyFiles' of the spark job definition you provide.
  /// [scanFolder] Scanning subfolders from the root folder of the main definition file, these files will be added as reference files. The folders named 'jars', 'pyFiles', 'files' or 'archives' will be scanned, and the folders name are case sensitive. Type: boolean (or Expression with resultType boolean).
  /// [sparkConfig] Spark configuration property.
  /// [sparkJob] Synapse spark job reference.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [targetBigDataPool] The name of the big data pool which will be used to execute the spark batch job, which will override the 'targetBigDataPool' of the spark job definition you provide.
  /// [targetSparkConfiguration] The spark configuration of the spark job.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  SynapseSparkJobDefinitionActivity({
    this.arguments,
    this.className,
    this.conf,
    this.configurationType,
    this.dependsOn,
    this.description,
    this.driverSize,
    this.executorSize,
    this.file,
    this.files,
    this.filesV2,
    this.linkedServiceName,
    required this.name,
    this.numExecutors,
    this.onInactiveMarkAs,
    this.policy,
    this.pythonCodeReference,
    this.scanFolder,
    this.sparkConfig,
    required this.sparkJob,
    this.state,
    this.targetBigDataPool,
    this.targetSparkConfiguration,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'className': ?className,
      'conf': ?conf,
      'configurationType': ?configurationType,
      'dependsOn':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActivityDependency>,
            List<Map<String, dynamic>>
          >(
            dependsOn,
            (value) =>
                pulumi.Input.encodeList<
                  ActivityDependency,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'driverSize': ?driverSize,
      'executorSize': ?executorSize,
      'file': ?file,
      'files': ?files,
      'filesV2': ?filesV2,
      'linkedServiceName':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReference,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'numExecutors': ?numExecutors,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityPolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'pythonCodeReference': ?pythonCodeReference,
      'scanFolder': ?scanFolder,
      'sparkConfig': ?sparkConfig,
      'sparkJob':
          pulumi.Input.mapInputValue<
            SynapseSparkJobReference,
            Map<String, dynamic>
          >(sparkJob, (value) => value.toMap()),
      'state': ?state,
      'targetBigDataPool':
          ?pulumi.Input.mapOptionalInputValue<
            BigDataPoolParametrizationReference,
            Map<String, dynamic>
          >(targetBigDataPool, (value) => value.toMap()),
      'targetSparkConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            SparkConfigurationParametrizationReference,
            Map<String, dynamic>
          >(targetSparkConfiguration, (value) => value.toMap()),
      'type': type,
      'userProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserProperty>,
            List<Map<String, dynamic>>
          >(
            userProperties,
            (value) =>
                pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory SynapseSparkJobDefinitionActivity.fromMap(Map<String, dynamic> map) {
    return SynapseSparkJobDefinitionActivity(
      arguments: (() {
        final guardedValue = map['arguments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      className: (() {
        final guardedValue = map['className'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      conf: (() {
        final guardedValue = map['conf'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      configurationType: (() {
        final guardedValue = map['configurationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActivityDependency>(
            guardedValue,
            (value) => ActivityDependency.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      driverSize: (() {
        final guardedValue = map['driverSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      executorSize: (() {
        final guardedValue = map['executorSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      file: (() {
        final guardedValue = map['file'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      files: (() {
        final guardedValue = map['files'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      filesV2: (() {
        final guardedValue = map['filesV2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      linkedServiceName: (() {
        final guardedValue = map['linkedServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      numExecutors: (() {
        final guardedValue = map['numExecutors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      onInactiveMarkAs: (() {
        final guardedValue = map['onInactiveMarkAs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      pythonCodeReference: (() {
        final guardedValue = map['pythonCodeReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      scanFolder: (() {
        final guardedValue = map['scanFolder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sparkConfig: (() {
        final guardedValue = map['sparkConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      sparkJob: pulumi.Input.fromValue(
        SynapseSparkJobReference.fromMap(
          (map['sparkJob']! as Map).cast<String, dynamic>(),
        ),
      ),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetBigDataPool: (() {
        final guardedValue = map['targetBigDataPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BigDataPoolParametrizationReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetSparkConfiguration: (() {
        final guardedValue = map['targetSparkConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SparkConfigurationParametrizationReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() {
        final guardedValue = map['userProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserProperty>(
            guardedValue,
            (value) =>
                UserProperty.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
