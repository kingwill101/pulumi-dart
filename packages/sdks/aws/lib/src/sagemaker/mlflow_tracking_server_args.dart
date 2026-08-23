// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_mlflow_tracking_server_mlflow_tracking_server_args_doc}
/// The set of arguments for MlflowTrackingServer.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_mlflow_tracking_server_mlflow_tracking_server_args_doc}
class MlflowTrackingServerArgs {
  /// The S3 URI for a general purpose bucket to use as the MLflow Tracking Server artifact store.
  final pulumi.Input<String> artifactStoreUri;
  /// Whether to enable or disable automatic registration of new MLflow models to the SageMaker Model Registry. Defaults to false.
  final pulumi.Input<bool>? automaticModelRegistration;
  /// The version of MLflow that the tracking server uses. To see which MLflow versions are available to use, see [How it works](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow.html#mlflow-create-tracking-server-how-it-works).
  final pulumi.Input<String>? mlflowVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) for an IAM role in your account that the MLflow Tracking Server uses to access the artifact store in Amazon S3. The role should have AmazonS3FullAccess permissions. For more information on IAM permissions for tracking server creation, see [Set up IAM permissions for MLflow](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server-iam.html).
  final pulumi.Input<String> roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A unique string identifying the tracking server name. This string is part of the tracking server ARN.
  final pulumi.Input<String> trackingServerName;
  /// The size of the tracking server you want to create. You can choose between "Small", "Medium", and "Large". The default MLflow Tracking Server configuration size is "Small". You can choose a size depending on the projected use of the tracking server such as the volume of data logged, number of users, and frequency of use.
  final pulumi.Input<String>? trackingServerSize;
  /// The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: TUE:03:30.
  final pulumi.Input<String>? weeklyMaintenanceWindowStart;

  /// Creates a new [MlflowTrackingServerArgs].
  /// [artifactStoreUri] The S3 URI for a general purpose bucket to use as the MLflow Tracking Server artifact store.
  /// [automaticModelRegistration] Whether to enable or disable automatic registration of new MLflow models to the SageMaker Model Registry. Defaults to false.
  /// [mlflowVersion] The version of MLflow that the tracking server uses. To see which MLflow versions are available to use, see [How it works](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow.html#mlflow-create-tracking-server-how-it-works).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) for an IAM role in your account that the MLflow Tracking Server uses to access the artifact store in Amazon S3. The role should have AmazonS3FullAccess permissions. For more information on IAM permissions for tracking server creation, see [Set up IAM permissions for MLflow](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server-iam.html).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trackingServerName] A unique string identifying the tracking server name. This string is part of the tracking server ARN.
  /// [trackingServerSize] The size of the tracking server you want to create. You can choose between "Small", "Medium", and "Large". The default MLflow Tracking Server configuration size is "Small". You can choose a size depending on the projected use of the tracking server such as the volume of data logged, number of users, and frequency of use.
  /// [weeklyMaintenanceWindowStart] The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: TUE:03:30.
  const MlflowTrackingServerArgs({
    required this.artifactStoreUri,
    this.automaticModelRegistration,
    this.mlflowVersion,
    this.region,
    required this.roleArn,
    this.tags,
    required this.trackingServerName,
    this.trackingServerSize,
    this.weeklyMaintenanceWindowStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStoreUri': artifactStoreUri,
      'automaticModelRegistration': ?automaticModelRegistration,
      'mlflowVersion': ?mlflowVersion,
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'trackingServerName': trackingServerName,
      'trackingServerSize': ?trackingServerSize,
      'weeklyMaintenanceWindowStart': ?weeklyMaintenanceWindowStart,
    };
  }

  factory MlflowTrackingServerArgs.fromMap(Map<String, dynamic> map) {
    return MlflowTrackingServerArgs(
      artifactStoreUri: pulumi.Input.fromValue(map['artifactStoreUri'] as String),
      automaticModelRegistration: (() { final guardedValue = map['automaticModelRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mlflowVersion: (() { final guardedValue = map['mlflowVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trackingServerName: pulumi.Input.fromValue(map['trackingServerName'] as String),
      trackingServerSize: (() { final guardedValue = map['trackingServerSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyMaintenanceWindowStart: (() { final guardedValue = map['weeklyMaintenanceWindowStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
