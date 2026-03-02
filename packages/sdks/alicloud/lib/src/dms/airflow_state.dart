// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Airflow resources.
class AirflowState {
  /// AirflowId
  final pulumi.Input<String>? airflowId;
  /// Name of the Airflow instance
  final pulumi.Input<String>? airflowName;
  /// Airflow instance specifications
  final pulumi.Input<String>? appSpec;
  /// Dag scan path
  final pulumi.Input<String>? dagsDir;
  /// Description of the airflow instance
  final pulumi.Input<String>? description;
  /// OSS bucket name
  final pulumi.Input<String>? ossBucketName;
  /// OSS path
  final pulumi.Input<String>? ossPath;
  /// The path of the plugin scanned by the airflow instance.
  final pulumi.Input<String>? pluginsDir;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// Path to installable package
  final pulumi.Input<String>? requirementFile;
  /// Security group ID
  final pulumi.Input<String>? securityGroupId;
  /// Launch script for the airflow container
  final pulumi.Input<String>? startupFile;
  /// Vpc id
  final pulumi.Input<String>? vpcId;
  /// Switch ID
  final pulumi.Input<String>? vswitchId;
  /// Worker Node extension
  final pulumi.Input<int>? workerServerlessReplicas;
  /// DMS workspace ID
  final pulumi.Input<String>? workspaceId;
  /// Zone ID in the region
  final pulumi.Input<String>? zoneId;

  /// Creates a new [AirflowState].
  /// [airflowId] AirflowId
  /// [airflowName] Name of the Airflow instance
  /// [appSpec] Airflow instance specifications
  /// [dagsDir] Dag scan path
  /// [description] Description of the airflow instance
  /// [ossBucketName] OSS bucket name
  /// [ossPath] OSS path
  /// [pluginsDir] The path of the plugin scanned by the airflow instance.
  /// [regionId] The region ID of the resource
  /// [requirementFile] Path to installable package
  /// [securityGroupId] Security group ID
  /// [startupFile] Launch script for the airflow container
  /// [vpcId] Vpc id
  /// [vswitchId] Switch ID
  /// [workerServerlessReplicas] Worker Node extension
  /// [workspaceId] DMS workspace ID
  /// [zoneId] Zone ID in the region
  AirflowState({
    this.airflowId,
    this.airflowName,
    this.appSpec,
    this.dagsDir,
    this.description,
    this.ossBucketName,
    this.ossPath,
    this.pluginsDir,
    this.regionId,
    this.requirementFile,
    this.securityGroupId,
    this.startupFile,
    this.vpcId,
    this.vswitchId,
    this.workerServerlessReplicas,
    this.workspaceId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airflowId': ?airflowId,
      'airflowName': ?airflowName,
      'appSpec': ?appSpec,
      'dagsDir': ?dagsDir,
      'description': ?description,
      'ossBucketName': ?ossBucketName,
      'ossPath': ?ossPath,
      'pluginsDir': ?pluginsDir,
      'regionId': ?regionId,
      'requirementFile': ?requirementFile,
      'securityGroupId': ?securityGroupId,
      'startupFile': ?startupFile,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'workerServerlessReplicas': ?workerServerlessReplicas,
      'workspaceId': ?workspaceId,
      'zoneId': ?zoneId,
    };
  }

  factory AirflowState.fromMap(Map<String, dynamic> map) {
    return AirflowState(
      airflowId: map['airflowId'] == null ? null : (map['airflowId']! as String).input(),
      airflowName: map['airflowName'] == null ? null : (map['airflowName']! as String).input(),
      appSpec: map['appSpec'] == null ? null : (map['appSpec']! as String).input(),
      dagsDir: map['dagsDir'] == null ? null : (map['dagsDir']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ossBucketName: map['ossBucketName'] == null ? null : (map['ossBucketName']! as String).input(),
      ossPath: map['ossPath'] == null ? null : (map['ossPath']! as String).input(),
      pluginsDir: map['pluginsDir'] == null ? null : (map['pluginsDir']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      requirementFile: map['requirementFile'] == null ? null : (map['requirementFile']! as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId']! as String).input(),
      startupFile: map['startupFile'] == null ? null : (map['startupFile']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      workerServerlessReplicas: map['workerServerlessReplicas'] == null ? null : (map['workerServerlessReplicas']! as int).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

