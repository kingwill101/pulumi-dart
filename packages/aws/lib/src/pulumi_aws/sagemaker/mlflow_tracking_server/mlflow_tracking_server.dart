import 'package:pulumi/pulumi.dart' as pulumi;
import 'mlflow_tracking_server_args.dart';

/// Provides a SageMaker AI MLFlow Tracking Server resource.
///
/// ## Example Usage
///
/// ### Cognito Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI MLFlow Tracking Servers using the `workteam_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/mlflowTrackingServer:MlflowTrackingServer example example
/// ```
class MlflowTrackingServer extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this MLFlow Tracking Server.
  late final pulumi.Output<String> arn;

  /// The S3 URI for a general purpose bucket to use as the MLflow Tracking Server artifact store.
  late final pulumi.Output<String> artifactStoreUri;

  /// A list of Member Definitions that contains objects that identify the workers that make up the work team.
  late final pulumi.Output<bool?> automaticModelRegistration;

  /// The version of MLflow that the tracking server uses. To see which MLflow versions are available to use, see [How it works](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow.html#mlflow-create-tracking-server-how-it-works).
  late final pulumi.Output<String> mlflowVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) for an IAM role in your account that the MLflow Tracking Server uses to access the artifact store in Amazon S3. The role should have AmazonS3FullAccess permissions. For more information on IAM permissions for tracking server creation, see [Set up IAM permissions for MLflow](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server-iam.html).
  late final pulumi.Output<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// A unique string identifying the tracking server name. This string is part of the tracking server ARN.
  late final pulumi.Output<String> trackingServerName;

  /// The size of the tracking server you want to create. You can choose between "Small", "Medium", and "Large". The default MLflow Tracking Server configuration size is "Small". You can choose a size depending on the projected use of the tracking server such as the volume of data logged, number of users, and frequency of use.
  late final pulumi.Output<String?> trackingServerSize;

  /// The URL to connect to the MLflow user interface for the described tracking server.
  late final pulumi.Output<String> trackingServerUrl;

  /// The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: TUE:03:30.
  late final pulumi.Output<String> weeklyMaintenanceWindowStart;

  MlflowTrackingServer(
    String name, {
    MlflowTrackingServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/mlflowTrackingServer:MlflowTrackingServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.artifactStoreUri = registerOutput<String>('artifactStoreUri');
    this.automaticModelRegistration =
        registerOutput<bool?>('automaticModelRegistration');
    this.mlflowVersion = registerOutput<String>('mlflowVersion');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trackingServerName = registerOutput<String>('trackingServerName');
    this.trackingServerSize = registerOutput<String?>('trackingServerSize');
    this.trackingServerUrl = registerOutput<String>('trackingServerUrl');
    this.weeklyMaintenanceWindowStart =
        registerOutput<String>('weeklyMaintenanceWindowStart');
  }
}
