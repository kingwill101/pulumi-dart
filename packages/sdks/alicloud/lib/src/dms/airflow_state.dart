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
      airflowId: (() { final guardedValue = map['airflowId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      airflowName: (() { final guardedValue = map['airflowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSpec: (() { final guardedValue = map['appSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dagsDir: (() { final guardedValue = map['dagsDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossBucketName: (() { final guardedValue = map['ossBucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossPath: (() { final guardedValue = map['ossPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pluginsDir: (() { final guardedValue = map['pluginsDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirementFile: (() { final guardedValue = map['requirementFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startupFile: (() { final guardedValue = map['startupFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerServerlessReplicas: (() { final guardedValue = map['workerServerlessReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

