import 'package:pulumi/pulumi.dart';
import 'mlflow_tracking_server_args.dart';

/// Provides a SageMaker AI MLFlow Tracking Server resource.
///
/// ## Example Usage
///
/// ### Cognito Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.MlflowTrackingServer("example", {
/// trackingServerName: "example",
/// roleArn: exampleAwsIamRole.arn,
/// artifactStoreUri: `s3://${exampleAwsS3Bucket.bucket}/path`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.MlflowTrackingServer("example",
/// tracking_server_name="example",
/// role_arn=example_aws_iam_role["arn"],
/// artifact_store_uri=f"s3://{example_aws_s3_bucket['bucket']}/path")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.MlflowTrackingServer("example", new()
/// {
/// TrackingServerName = "example",
/// RoleArn = exampleAwsIamRole.Arn,
/// ArtifactStoreUri = $"s3://{exampleAwsS3Bucket.Bucket}/path",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewMlflowTrackingServer(ctx, "example", &sagemaker.MlflowTrackingServerArgs{
/// TrackingServerName: pulumi.String("example"),
/// RoleArn:            pulumi.Any(exampleAwsIamRole.Arn),
/// ArtifactStoreUri:   pulumi.Sprintf("s3://%v/path", exampleAwsS3Bucket.Bucket),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new MlflowTrackingServer("example", MlflowTrackingServerArgs.builder()
/// .trackingServerName("example")
/// .roleArn(exampleAwsIamRole.arn())
/// .artifactStoreUri(String.format("s3://%s/path", exampleAwsS3Bucket.bucket()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:MlflowTrackingServer
/// properties:
/// trackingServerName: example
/// roleArn: ${exampleAwsIamRole.arn}
/// artifactStoreUri: s3://${exampleAwsS3Bucket.bucket}/path
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI MLFlow Tracking Servers using the <span pulumi-lang-nodejs="`workteamName`" pulumi-lang-dotnet="`WorkteamName`" pulumi-lang-go="`workteamName`" pulumi-lang-python="`workteam_name`" pulumi-lang-yaml="`workteamName`" pulumi-lang-java="`workteamName`">`workteam_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/mlflowTrackingServer:MlflowTrackingServer example example
/// ```
class MlflowTrackingServer extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this MLFlow Tracking Server.
  late final Output<String> arn;

  /// The S3 URI for a general purpose bucket to use as the MLflow Tracking Server artifact store.
  late final Output<String> artifactStoreUri;

  /// A list of Member Definitions that contains objects that identify the workers that make up the work team.
  late final Output<bool?> automaticModelRegistration;

  /// The version of MLflow that the tracking server uses. To see which MLflow versions are available to use, see [How it works](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow.html#mlflow-create-tracking-server-how-it-works).
  late final Output<String> mlflowVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) for an IAM role in your account that the MLflow Tracking Server uses to access the artifact store in Amazon S3. The role should have AmazonS3FullAccess permissions. For more information on IAM permissions for tracking server creation, see [Set up IAM permissions for MLflow](https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server-iam.html).
  late final Output<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A unique string identifying the tracking server name. This string is part of the tracking server ARN.
  late final Output<String> trackingServerName;

  /// The size of the tracking server you want to create. You can choose between "Small", "Medium", and "Large". The default MLflow Tracking Server configuration size is "Small". You can choose a size depending on the projected use of the tracking server such as the volume of data logged, number of users, and frequency of use.
  late final Output<String?> trackingServerSize;

  /// The URL to connect to the MLflow user interface for the described tracking server.
  late final Output<String> trackingServerUrl;

  /// The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: TUE:03:30.
  late final Output<String> weeklyMaintenanceWindowStart;

  MlflowTrackingServer(
    String name, {
    MlflowTrackingServerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/mlflowTrackingServer:MlflowTrackingServer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
