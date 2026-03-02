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
    required this.airflowName,
    required this.appSpec,
    this.dagsDir,
    required this.description,
    required this.ossBucketName,
    required this.ossPath,
    this.pluginsDir,
    this.requirementFile,
    required this.securityGroupId,
    this.startupFile,
    required this.vpcId,
    required this.vswitchId,
    required this.workerServerlessReplicas,
    required this.workspaceId,
    required this.zoneId,
  });

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
      airflowName: (map['airflowName'] as String).input(),
      appSpec: (map['appSpec'] as String).input(),
      dagsDir: map['dagsDir'] == null ? null : (map['dagsDir']! as String).input(),
      description: (map['description'] as String).input(),
      ossBucketName: (map['ossBucketName'] as String).input(),
      ossPath: (map['ossPath'] as String).input(),
      pluginsDir: map['pluginsDir'] == null ? null : (map['pluginsDir']! as String).input(),
      requirementFile: map['requirementFile'] == null ? null : (map['requirementFile']! as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      startupFile: map['startupFile'] == null ? null : (map['startupFile']! as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      workerServerlessReplicas: (map['workerServerlessReplicas'] as int).input(),
      workspaceId: (map['workspaceId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

