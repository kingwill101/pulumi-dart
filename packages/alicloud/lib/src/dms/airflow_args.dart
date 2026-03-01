// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_airflow_airflow_args_doc}
/// The set of arguments for Airflow.
/// {@endtemplate}
/// {@macro pulumi_dms_airflow_airflow_args_doc}
class AirflowArgs {
  /// Name of the Airflow instance
  final pulumi.Input<String> airflowName;
  /// Airflow instance specifications
  final pulumi.Input<String> appSpec;
  /// Dag scan path
  final pulumi.Input<String>? dagsDir;
  /// Description of the airflow instance
  final pulumi.Input<String> description;
  /// OSS bucket name
  final pulumi.Input<String> ossBucketName;
  /// OSS path
  final pulumi.Input<String> ossPath;
  /// The path of the plugin scanned by the airflow instance.
  final pulumi.Input<String>? pluginsDir;
  /// Path to installable package
  final pulumi.Input<String>? requirementFile;
  /// Security group ID
  final pulumi.Input<String> securityGroupId;
  /// Launch script for the airflow container
  final pulumi.Input<String>? startupFile;
  /// Vpc id
  final pulumi.Input<String> vpcId;
  /// Switch ID
  final pulumi.Input<String> vswitchId;
  /// Worker Node extension
  final pulumi.Input<int> workerServerlessReplicas;
  /// DMS workspace ID
  final pulumi.Input<String> workspaceId;
  /// Zone ID in the region
  final pulumi.Input<String> zoneId;

  /// Creates a new [AirflowArgs].
  /// [airflowName] Name of the Airflow instance
  /// [appSpec] Airflow instance specifications
  /// [dagsDir] Dag scan path
  /// [description] Description of the airflow instance
  /// [ossBucketName] OSS bucket name
  /// [ossPath] OSS path
  /// [pluginsDir] The path of the plugin scanned by the airflow instance.
  /// [requirementFile] Path to installable package
  /// [securityGroupId] Security group ID
  /// [startupFile] Launch script for the airflow container
  /// [vpcId] Vpc id
  /// [vswitchId] Switch ID
  /// [workerServerlessReplicas] Worker Node extension
  /// [workspaceId] DMS workspace ID
  /// [zoneId] Zone ID in the region
  AirflowArgs({
    required String airflowName,
    required String appSpec,
    String? dagsDir,
    required String description,
    required String ossBucketName,
    required String ossPath,
    String? pluginsDir,
    String? requirementFile,
    required String securityGroupId,
    String? startupFile,
    required String vpcId,
    required String vswitchId,
    required int workerServerlessReplicas,
    required String workspaceId,
    required String zoneId,
  }) :
      airflowName = pulumi.Input.asInput<String>(airflowName),
      appSpec = pulumi.Input.asInput<String>(appSpec),
      dagsDir = pulumi.Input.asOptionalInput<String>(dagsDir),
      description = pulumi.Input.asInput<String>(description),
      ossBucketName = pulumi.Input.asInput<String>(ossBucketName),
      ossPath = pulumi.Input.asInput<String>(ossPath),
      pluginsDir = pulumi.Input.asOptionalInput<String>(pluginsDir),
      requirementFile = pulumi.Input.asOptionalInput<String>(requirementFile),
      securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
      startupFile = pulumi.Input.asOptionalInput<String>(startupFile),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      workerServerlessReplicas = pulumi.Input.asInput<int>(workerServerlessReplicas),
      workspaceId = pulumi.Input.asInput<String>(workspaceId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airflowName': airflowName,
      'appSpec': appSpec,
      'dagsDir': ?dagsDir,
      'description': description,
      'ossBucketName': ossBucketName,
      'ossPath': ossPath,
      'pluginsDir': ?pluginsDir,
      'requirementFile': ?requirementFile,
      'securityGroupId': securityGroupId,
      'startupFile': ?startupFile,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'workerServerlessReplicas': workerServerlessReplicas,
      'workspaceId': workspaceId,
      'zoneId': zoneId,
    };
  }

  factory AirflowArgs.fromMap(Map<String, dynamic> map) {
    return AirflowArgs(
      airflowName: map['airflowName'] as String,
      appSpec: map['appSpec'] as String,
      dagsDir: map['dagsDir'] == null ? null : map['dagsDir'] as String,
      description: map['description'] as String,
      ossBucketName: map['ossBucketName'] as String,
      ossPath: map['ossPath'] as String,
      pluginsDir: map['pluginsDir'] == null ? null : map['pluginsDir'] as String,
      requirementFile: map['requirementFile'] == null ? null : map['requirementFile'] as String,
      securityGroupId: map['securityGroupId'] as String,
      startupFile: map['startupFile'] == null ? null : map['startupFile'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      workerServerlessReplicas: map['workerServerlessReplicas'] as int,
      workspaceId: map['workspaceId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

