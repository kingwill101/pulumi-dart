// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MlflowTrackingServer resources.
class MlflowTrackingServerState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this MLFlow Tracking Server.
  final pulumi.Input<String>? arn;
  /// The S3 URI for a general purpose bucket to use as the MLflow Tracking Server artifact store.
  final pulumi.Input<String>? artifactStoreUri;
  /// A list of Member Definitions that contains objects that identify the workers that make up the work team.
  final pulumi.Input<bool>? automaticModelRegistration;
  /// The version of MLflow that the tracking server uses. To see which MLflow versions are available to use, see [How it works](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow.html#mlflow-create-tracking-server-how-it-works).
  final pulumi.Input<String>? mlflowVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) for an IAM role in your account that the MLflow Tracking Server uses to access the artifact store in Amazon S3. The role should have AmazonS3FullAccess permissions. For more information on IAM permissions for tracking server creation, see [Set up IAM permissions for MLflow](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server-iam.html).
  final pulumi.Input<String>? roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A unique string identifying the tracking server name. This string is part of the tracking server ARN.
  final pulumi.Input<String>? trackingServerName;
  /// The size of the tracking server you want to create. You can choose between "Small", "Medium", and "Large". The default MLflow Tracking Server configuration size is "Small". You can choose a size depending on the projected use of the tracking server such as the volume of data logged, number of users, and frequency of use.
  final pulumi.Input<String>? trackingServerSize;
  /// The URL to connect to the MLflow user interface for the described tracking server.
  final pulumi.Input<String>? trackingServerUrl;
  /// The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: TUE:03:30.
  final pulumi.Input<String>? weeklyMaintenanceWindowStart;

  /// Creates a new [MlflowTrackingServerState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this MLFlow Tracking Server.
  /// [artifactStoreUri] The S3 URI for a general purpose bucket to use as the MLflow Tracking Server artifact store.
  /// [automaticModelRegistration] A list of Member Definitions that contains objects that identify the workers that make up the work team.
  /// [mlflowVersion] The version of MLflow that the tracking server uses. To see which MLflow versions are available to use, see [How it works](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow.html#mlflow-create-tracking-server-how-it-works).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) for an IAM role in your account that the MLflow Tracking Server uses to access the artifact store in Amazon S3. The role should have AmazonS3FullAccess permissions. For more information on IAM permissions for tracking server creation, see [Set up IAM permissions for MLflow](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server-iam.html).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [trackingServerName] A unique string identifying the tracking server name. This string is part of the tracking server ARN.
  /// [trackingServerSize] The size of the tracking server you want to create. You can choose between "Small", "Medium", and "Large". The default MLflow Tracking Server configuration size is "Small". You can choose a size depending on the projected use of the tracking server such as the volume of data logged, number of users, and frequency of use.
  /// [trackingServerUrl] The URL to connect to the MLflow user interface for the described tracking server.
  /// [weeklyMaintenanceWindowStart] The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: TUE:03:30.
  MlflowTrackingServerState({
    this.arn,
    this.artifactStoreUri,
    this.automaticModelRegistration,
    this.mlflowVersion,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.trackingServerName,
    this.trackingServerSize,
    this.trackingServerUrl,
    this.weeklyMaintenanceWindowStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'artifactStoreUri': ?artifactStoreUri,
      'automaticModelRegistration': ?automaticModelRegistration,
      'mlflowVersion': ?mlflowVersion,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trackingServerName': ?trackingServerName,
      'trackingServerSize': ?trackingServerSize,
      'trackingServerUrl': ?trackingServerUrl,
      'weeklyMaintenanceWindowStart': ?weeklyMaintenanceWindowStart,
    };
  }

  factory MlflowTrackingServerState.fromMap(Map<String, dynamic> map) {
    return MlflowTrackingServerState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      artifactStoreUri: map['artifactStoreUri'] == null ? null : (map['artifactStoreUri'] as String).input(),
      automaticModelRegistration: map['automaticModelRegistration'] == null ? null : (map['automaticModelRegistration'] as bool).input(),
      mlflowVersion: map['mlflowVersion'] == null ? null : (map['mlflowVersion'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      trackingServerName: map['trackingServerName'] == null ? null : (map['trackingServerName'] as String).input(),
      trackingServerSize: map['trackingServerSize'] == null ? null : (map['trackingServerSize'] as String).input(),
      trackingServerUrl: map['trackingServerUrl'] == null ? null : (map['trackingServerUrl'] as String).input(),
      weeklyMaintenanceWindowStart: map['weeklyMaintenanceWindowStart'] == null ? null : (map['weeklyMaintenanceWindowStart'] as String).input(),
    );
  }
}

