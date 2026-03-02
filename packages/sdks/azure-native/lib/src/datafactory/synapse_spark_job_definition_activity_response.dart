// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'big_data_pool_parametrization_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'spark_configuration_parametrization_reference_response.dart';
import 'synapse_spark_job_reference_response.dart';
import 'user_property_response.dart';

/// Execute spark job activity.
class SynapseSparkJobDefinitionActivityResponse {
  /// User specified arguments to SynapseSparkJobDefinitionActivity.
  final pulumi.Input<List<dynamic>>? arguments;
  /// The fully-qualified identifier or the main class that is in the main definition file, which will override the 'className' of the spark job definition you provide. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? className;
  /// Spark configuration properties, which will override the 'conf' of the spark job definition you provide.
  final pulumi.Input<dynamic>? conf;
  /// The type of the spark config.
  final pulumi.Input<String>? configurationType;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
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
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Number of executors to launch for this job, which will override the 'numExecutors' of the spark job definition you provide. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? numExecutors;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// Additional python code files used for reference in the main definition file, which will override the 'pyFiles' of the spark job definition you provide.
  final pulumi.Input<List<dynamic>>? pythonCodeReference;
  /// Scanning subfolders from the root folder of the main definition file, these files will be added as reference files. The folders named 'jars', 'pyFiles', 'files' or 'archives' will be scanned, and the folders name are case sensitive. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? scanFolder;
  /// Spark configuration property.
  final pulumi.Input<Map<String, dynamic>>? sparkConfig;
  /// Synapse spark job reference.
  final pulumi.Input<SynapseSparkJobReferenceResponse> sparkJob;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// The name of the big data pool which will be used to execute the spark batch job, which will override the 'targetBigDataPool' of the spark job definition you provide.
  final pulumi.Input<BigDataPoolParametrizationReferenceResponse>? targetBigDataPool;
  /// The spark configuration of the spark job.
  final pulumi.Input<SparkConfigurationParametrizationReferenceResponse>? targetSparkConfiguration;
  /// Type of activity.
  /// Expected value is 'SparkJob'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [SynapseSparkJobDefinitionActivityResponse].
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
  SynapseSparkJobDefinitionActivityResponse({
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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'driverSize': ?driverSize,
      'executorSize': ?executorSize,
      'file': ?file,
      'files': ?files,
      'filesV2': ?filesV2,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'numExecutors': ?numExecutors,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'pythonCodeReference': ?pythonCodeReference,
      'scanFolder': ?scanFolder,
      'sparkConfig': ?sparkConfig,
      'sparkJob': pulumi.Input.mapInputValue<SynapseSparkJobReferenceResponse, Map<String, dynamic>>(sparkJob, (value) => value.toMap()),
      'state': ?state,
      'targetBigDataPool': ?pulumi.Input.mapOptionalInputValue<BigDataPoolParametrizationReferenceResponse, Map<String, dynamic>>(targetBigDataPool, (value) => value.toMap()),
      'targetSparkConfiguration': ?pulumi.Input.mapOptionalInputValue<SparkConfigurationParametrizationReferenceResponse, Map<String, dynamic>>(targetSparkConfiguration, (value) => value.toMap()),
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SynapseSparkJobDefinitionActivityResponse.fromMap(Map<String, dynamic> map) {
    return SynapseSparkJobDefinitionActivityResponse(
      arguments: map['arguments'] == null ? null : ((map['arguments'] as List).cast<dynamic>()).input(),
      className: map['className'] == null ? null : (map['className']).input(),
      conf: map['conf'] == null ? null : (map['conf']).input(),
      configurationType: map['configurationType'] == null ? null : (map['configurationType'] as String).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      driverSize: map['driverSize'] == null ? null : (map['driverSize']).input(),
      executorSize: map['executorSize'] == null ? null : (map['executorSize']).input(),
      file: map['file'] == null ? null : (map['file']).input(),
      files: map['files'] == null ? null : ((map['files'] as List).cast<dynamic>()).input(),
      filesV2: map['filesV2'] == null ? null : ((map['filesV2'] as List).cast<dynamic>()).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      numExecutors: map['numExecutors'] == null ? null : (map['numExecutors']).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
      pythonCodeReference: map['pythonCodeReference'] == null ? null : ((map['pythonCodeReference'] as List).cast<dynamic>()).input(),
      scanFolder: map['scanFolder'] == null ? null : (map['scanFolder']).input(),
      sparkConfig: map['sparkConfig'] == null ? null : ((map['sparkConfig'] as Map).cast<String, dynamic>()).input(),
      sparkJob: (SynapseSparkJobReferenceResponse.fromMap((map['sparkJob'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      targetBigDataPool: map['targetBigDataPool'] == null ? null : (BigDataPoolParametrizationReferenceResponse.fromMap((map['targetBigDataPool'] as Map).cast<String, dynamic>())).input(),
      targetSparkConfiguration: map['targetSparkConfiguration'] == null ? null : (SparkConfigurationParametrizationReferenceResponse.fromMap((map['targetSparkConfiguration'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

