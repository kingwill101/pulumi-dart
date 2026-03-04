import 'package:pulumi/pulumi.dart' as pulumi;
import 'mlflow_tracking_server_args.dart';
import 'mlflow_tracking_server_state.dart';

/// Provides a SageMaker AI MLFlow Tracking Server resource.
///
/// ## Example Usage
///
/// ### Cognito Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.MlflowTrackingServer("example", {
///     trackingServerName: "example",
///     roleArn: exampleAwsIamRole.arn,
///     artifactStoreUri: `s3://${exampleAwsS3Bucket.bucket}/path`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.MlflowTrackingServer("example",
///     tracking_server_name="example",
///     role_arn=example_aws_iam_role["arn"],
///     artifact_store_uri=f"s3://{example_aws_s3_bucket['bucket']}/path")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.MlflowTrackingServer("example", new()
///     {
///         TrackingServerName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///         ArtifactStoreUri = $"s3://{exampleAwsS3Bucket.Bucket}/path",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewMlflowTrackingServer(ctx, "example", &sagemaker.MlflowTrackingServerArgs{
/// 			TrackingServerName: pulumi.String("example"),
/// 			RoleArn:            pulumi.Any(exampleAwsIamRole.Arn),
/// 			ArtifactStoreUri:   pulumi.Sprintf("s3://%v/path", exampleAwsS3Bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.MlflowTrackingServer;
/// import com.pulumi.aws.sagemaker.MlflowTrackingServerArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new MlflowTrackingServer("example", MlflowTrackingServerArgs.builder()
///             .trackingServerName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .artifactStoreUri(String.format("s3://%s/path", exampleAwsS3Bucket.bucket()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:MlflowTrackingServer
///     properties:
///       trackingServerName: example
///       roleArn: ${exampleAwsIamRole.arn}
///       artifactStoreUri: s3://${exampleAwsS3Bucket.bucket}/path
/// ```
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

  /// Creates a new [MlflowTrackingServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MlflowTrackingServer]. {@macro pulumi_sagemaker_mlflow_tracking_server_mlflow_tracking_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    arn = registerOutput<String>('arn');
    artifactStoreUri = registerOutput<String>('artifactStoreUri');
    automaticModelRegistration = registerOutput<bool?>(
      'automaticModelRegistration',
    );
    mlflowVersion = registerOutput<String>('mlflowVersion');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trackingServerName = registerOutput<String>('trackingServerName');
    trackingServerSize = registerOutput<String?>('trackingServerSize');
    trackingServerUrl = registerOutput<String>('trackingServerUrl');
    weeklyMaintenanceWindowStart = registerOutput<String>(
      'weeklyMaintenanceWindowStart',
    );
  }

  /// Gets an existing [MlflowTrackingServer] resource's state with the given [name] and [id].
  static MlflowTrackingServer get(
    String name,
    pulumi.Input<String> id, {
    MlflowTrackingServerState? state,
  }) {
    return MlflowTrackingServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MlflowTrackingServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/mlflowTrackingServer:MlflowTrackingServer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    artifactStoreUri = registerOutput<String>('artifactStoreUri');
    automaticModelRegistration = registerOutput<bool?>(
      'automaticModelRegistration',
    );
    mlflowVersion = registerOutput<String>('mlflowVersion');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trackingServerName = registerOutput<String>('trackingServerName');
    trackingServerSize = registerOutput<String?>('trackingServerSize');
    trackingServerUrl = registerOutput<String>('trackingServerUrl');
    weeklyMaintenanceWindowStart = registerOutput<String>(
      'weeklyMaintenanceWindowStart',
    );
  }
}
