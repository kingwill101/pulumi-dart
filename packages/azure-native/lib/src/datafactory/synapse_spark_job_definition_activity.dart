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
  final List<dynamic>? arguments;
  /// The fully-qualified identifier or the main class that is in the main definition file, which will override the 'className' of the spark job definition you provide. Type: string (or Expression with resultType string).
  final dynamic className;
  /// Spark configuration properties, which will override the 'conf' of the spark job definition you provide.
  final dynamic conf;
  /// The type of the spark config.
  final String? configurationType;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Number of core and memory to be used for driver allocated in the specified Spark pool for the job, which will be used for overriding 'driverCores' and 'driverMemory' of the spark job definition you provide. Type: string (or Expression with resultType string).
  final dynamic driverSize;
  /// Number of core and memory to be used for executors allocated in the specified Spark pool for the job, which will be used for overriding 'executorCores' and 'executorMemory' of the spark job definition you provide. Type: string (or Expression with resultType string).
  final dynamic executorSize;
  /// The main file used for the job, which will override the 'file' of the spark job definition you provide. Type: string (or Expression with resultType string).
  final dynamic file;
  /// (Deprecated. Please use pythonCodeReference and filesV2) Additional files used for reference in the main definition file, which will override the 'files' of the spark job definition you provide.
  final List<dynamic>? files;
  /// Additional files used for reference in the main definition file, which will override the 'jars' and 'files' of the spark job definition you provide.
  final List<dynamic>? filesV2;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Activity name.
  final String name;
  /// Number of executors to launch for this job, which will override the 'numExecutors' of the spark job definition you provide. Type: integer (or Expression with resultType integer).
  final dynamic numExecutors;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Additional python code files used for reference in the main definition file, which will override the 'pyFiles' of the spark job definition you provide.
  final List<dynamic>? pythonCodeReference;
  /// Scanning subfolders from the root folder of the main definition file, these files will be added as reference files. The folders named 'jars', 'pyFiles', 'files' or 'archives' will be scanned, and the folders name are case sensitive. Type: boolean (or Expression with resultType boolean).
  final dynamic scanFolder;
  /// Spark configuration property.
  final Map<String, dynamic>? sparkConfig;
  /// Synapse spark job reference.
  final SynapseSparkJobReference sparkJob;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// The name of the big data pool which will be used to execute the spark batch job, which will override the 'targetBigDataPool' of the spark job definition you provide.
  final BigDataPoolParametrizationReference? targetBigDataPool;
  /// The spark configuration of the spark job.
  final SparkConfigurationParametrizationReference? targetSparkConfiguration;
  /// Type of activity.
  /// Expected value is 'SparkJob'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'driverSize': ?driverSize,
      'executorSize': ?executorSize,
      'file': ?file,
      'files': ?files,
      'filesV2': ?filesV2,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'numExecutors': ?numExecutors,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'pythonCodeReference': ?pythonCodeReference,
      'scanFolder': ?scanFolder,
      'sparkConfig': ?sparkConfig,
      'sparkJob': sparkJob.toMap(),
      'state': ?state,
      'targetBigDataPool': ?targetBigDataPool == null ? null : targetBigDataPool!.toMap(),
      'targetSparkConfiguration': ?targetSparkConfiguration == null ? null : targetSparkConfiguration!.toMap(),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory SynapseSparkJobDefinitionActivity.fromMap(Map<String, dynamic> map) {
    return SynapseSparkJobDefinitionActivity(
      arguments: map['arguments'] == null ? null : (map['arguments'] as List).cast<dynamic>(),
      className: map['className'] == null ? null : map['className'],
      conf: map['conf'] == null ? null : map['conf'],
      configurationType: map['configurationType'] == null ? null : map['configurationType'] as String,
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      driverSize: map['driverSize'] == null ? null : map['driverSize'],
      executorSize: map['executorSize'] == null ? null : map['executorSize'],
      file: map['file'] == null ? null : map['file'],
      files: map['files'] == null ? null : (map['files'] as List).cast<dynamic>(),
      filesV2: map['filesV2'] == null ? null : (map['filesV2'] as List).cast<dynamic>(),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      numExecutors: map['numExecutors'] == null ? null : map['numExecutors'],
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      pythonCodeReference: map['pythonCodeReference'] == null ? null : (map['pythonCodeReference'] as List).cast<dynamic>(),
      scanFolder: map['scanFolder'] == null ? null : map['scanFolder'],
      sparkConfig: map['sparkConfig'] == null ? null : (map['sparkConfig'] as Map).cast<String, dynamic>(),
      sparkJob: SynapseSparkJobReference.fromMap((map['sparkJob'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      targetBigDataPool: map['targetBigDataPool'] == null ? null : BigDataPoolParametrizationReference.fromMap((map['targetBigDataPool'] as Map).cast<String, dynamic>()),
      targetSparkConfiguration: map['targetSparkConfiguration'] == null ? null : SparkConfigurationParametrizationReference.fromMap((map['targetSparkConfiguration'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

