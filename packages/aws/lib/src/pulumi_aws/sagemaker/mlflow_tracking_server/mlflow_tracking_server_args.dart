// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MlflowTrackingServer.
class MlflowTrackingServerArgs {
  /// The S3 URI for a general purpose bucket to use as the MLflow Tracking Server artifact store.
  final Input<String> artifactStoreUri;

  /// A list of Member Definitions that contains objects that identify the workers that make up the work team.
  final Input<bool>? automaticModelRegistration;

  /// The version of MLflow that the tracking server uses. To see which MLflow versions are available to use, see [How it works](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow.html#mlflow-create-tracking-server-how-it-works).
  final Input<String>? mlflowVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) for an IAM role in your account that the MLflow Tracking Server uses to access the artifact store in Amazon S3. The role should have AmazonS3FullAccess permissions. For more information on IAM permissions for tracking server creation, see [Set up IAM permissions for MLflow](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server-iam.html).
  final Input<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A unique string identifying the tracking server name. This string is part of the tracking server ARN.
  final Input<String> trackingServerName;

  /// The size of the tracking server you want to create. You can choose between "Small", "Medium", and "Large". The default MLflow Tracking Server configuration size is "Small". You can choose a size depending on the projected use of the tracking server such as the volume of data logged, number of users, and frequency of use.
  final Input<String>? trackingServerSize;

  /// The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: TUE:03:30.
  final Input<String>? weeklyMaintenanceWindowStart;

  MlflowTrackingServerArgs({
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
    final map = <String, dynamic>{};
    map['artifactStoreUri'] = artifactStoreUri;
    final automaticModelRegistrationValue = automaticModelRegistration;
    if (automaticModelRegistrationValue != null) {
      map['automaticModelRegistration'] = automaticModelRegistrationValue;
    }
    final mlflowVersionValue = mlflowVersion;
    if (mlflowVersionValue != null) {
      map['mlflowVersion'] = mlflowVersionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['trackingServerName'] = trackingServerName;
    final trackingServerSizeValue = trackingServerSize;
    if (trackingServerSizeValue != null) {
      map['trackingServerSize'] = trackingServerSizeValue;
    }
    final weeklyMaintenanceWindowStartValue = weeklyMaintenanceWindowStart;
    if (weeklyMaintenanceWindowStartValue != null) {
      map['weeklyMaintenanceWindowStart'] = weeklyMaintenanceWindowStartValue;
    }
    return map;
  }

  factory MlflowTrackingServerArgs.fromMap(Map<String, dynamic> map) {
    return MlflowTrackingServerArgs(
      artifactStoreUri: Input.asInput<String>(map['artifactStoreUri']),
      automaticModelRegistration:
          Input.asOptionalInput<bool>(map['automaticModelRegistration']),
      mlflowVersion: Input.asOptionalInput<String>(map['mlflowVersion']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      trackingServerName: Input.asInput<String>(map['trackingServerName']),
      trackingServerSize:
          Input.asOptionalInput<String>(map['trackingServerSize']),
      weeklyMaintenanceWindowStart:
          Input.asOptionalInput<String>(map['weeklyMaintenanceWindowStart']),
    );
  }
}
