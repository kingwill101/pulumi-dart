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
    required pulumi.Output<String> airflowName,
    required pulumi.Output<String> appSpec,
    pulumi.Output<String>? dagsDir,
    required pulumi.Output<String> description,
    required pulumi.Output<String> ossBucketName,
    required pulumi.Output<String> ossPath,
    pulumi.Output<String>? pluginsDir,
    pulumi.Output<String>? requirementFile,
    required pulumi.Output<String> securityGroupId,
    pulumi.Output<String>? startupFile,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<String> vswitchId,
    required pulumi.Output<int> workerServerlessReplicas,
    required pulumi.Output<String> workspaceId,
    required pulumi.Output<String> zoneId,
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
      airflowName: pulumi.Output.create<String>(map['airflowName'] as String),
      appSpec: pulumi.Output.create<String>(map['appSpec'] as String),
      dagsDir: map['dagsDir'] == null ? null : pulumi.Output.create<String>(map['dagsDir'] as String),
      description: pulumi.Output.create<String>(map['description'] as String),
      ossBucketName: pulumi.Output.create<String>(map['ossBucketName'] as String),
      ossPath: pulumi.Output.create<String>(map['ossPath'] as String),
      pluginsDir: map['pluginsDir'] == null ? null : pulumi.Output.create<String>(map['pluginsDir'] as String),
      requirementFile: map['requirementFile'] == null ? null : pulumi.Output.create<String>(map['requirementFile'] as String),
      securityGroupId: pulumi.Output.create<String>(map['securityGroupId'] as String),
      startupFile: map['startupFile'] == null ? null : pulumi.Output.create<String>(map['startupFile'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
      workerServerlessReplicas: pulumi.Output.create<int>(map['workerServerlessReplicas'] as int),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

