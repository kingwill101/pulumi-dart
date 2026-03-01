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
    pulumi.Output<String>? airflowId,
    pulumi.Output<String>? airflowName,
    pulumi.Output<String>? appSpec,
    pulumi.Output<String>? dagsDir,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ossBucketName,
    pulumi.Output<String>? ossPath,
    pulumi.Output<String>? pluginsDir,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? requirementFile,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? startupFile,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<int>? workerServerlessReplicas,
    pulumi.Output<String>? workspaceId,
    pulumi.Output<String>? zoneId,
  }) :
      airflowId = pulumi.Input.asOptionalInput<String>(airflowId),
      airflowName = pulumi.Input.asOptionalInput<String>(airflowName),
      appSpec = pulumi.Input.asOptionalInput<String>(appSpec),
      dagsDir = pulumi.Input.asOptionalInput<String>(dagsDir),
      description = pulumi.Input.asOptionalInput<String>(description),
      ossBucketName = pulumi.Input.asOptionalInput<String>(ossBucketName),
      ossPath = pulumi.Input.asOptionalInput<String>(ossPath),
      pluginsDir = pulumi.Input.asOptionalInput<String>(pluginsDir),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      requirementFile = pulumi.Input.asOptionalInput<String>(requirementFile),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      startupFile = pulumi.Input.asOptionalInput<String>(startupFile),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      workerServerlessReplicas = pulumi.Input.asOptionalInput<int>(workerServerlessReplicas),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      airflowId: map['airflowId'] == null ? null : pulumi.Output.create<String>(map['airflowId'] as String),
      airflowName: map['airflowName'] == null ? null : pulumi.Output.create<String>(map['airflowName'] as String),
      appSpec: map['appSpec'] == null ? null : pulumi.Output.create<String>(map['appSpec'] as String),
      dagsDir: map['dagsDir'] == null ? null : pulumi.Output.create<String>(map['dagsDir'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ossBucketName: map['ossBucketName'] == null ? null : pulumi.Output.create<String>(map['ossBucketName'] as String),
      ossPath: map['ossPath'] == null ? null : pulumi.Output.create<String>(map['ossPath'] as String),
      pluginsDir: map['pluginsDir'] == null ? null : pulumi.Output.create<String>(map['pluginsDir'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      requirementFile: map['requirementFile'] == null ? null : pulumi.Output.create<String>(map['requirementFile'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      startupFile: map['startupFile'] == null ? null : pulumi.Output.create<String>(map['startupFile'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      workerServerlessReplicas: map['workerServerlessReplicas'] == null ? null : pulumi.Output.create<int>(map['workerServerlessReplicas'] as int),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

