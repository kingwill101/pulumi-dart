import 'package:pulumi/pulumi.dart' as pulumi;
import 'mlflow_app_args.dart';
import 'mlflow_app_state.dart';
import 'mlflow_app_timeouts.dart';

/// Provides a SageMaker AI MLflow App resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.MlflowApp("example", {
///     name: "example",
///     roleArn: exampleAwsIamRole.arn,
///     artifactStoreUri: `s3://${exampleAwsS3Bucket.bucket}/path`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.MlflowApp("example",
///     name="example",
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
///     var example = new Aws.Sagemaker.MlflowApp("example", new()
///     {
///         Name = "example",
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
/// 		_, err := sagemaker.NewMlflowApp(ctx, "example", &sagemaker.MlflowAppArgs{
/// 			Name:             pulumi.String("example"),
/// 			RoleArn:          pulumi.Any(exampleAwsIamRole.Arn),
/// 			ArtifactStoreUri: pulumi.Sprintf("s3://%v/path", exampleAwsS3Bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_sagemaker_mlflowapp" "example" {
///   name               = "example"
///   role_arn           = exampleAwsIamRole.arn
///   artifact_store_uri ="s3://${exampleAwsS3Bucket.bucket}/path"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.MlflowApp;
/// import com.pulumi.aws.sagemaker.MlflowAppArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new MlflowApp("example", MlflowAppArgs.builder()
///             .name("example")
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
///     type: aws:sagemaker:MlflowApp
///     properties:
///       name: example
///       roleArn: ${exampleAwsIamRole.arn}
///       artifactStoreUri: s3://${exampleAwsS3Bucket.bucket}/path
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the MLflow App.
///
///
/// Using `pulumi import`, import SageMaker AI MLflow Apps using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/mlflowApp:MlflowApp example arn:aws:sagemaker:us-east-1:123456789012:mlflow-app/app-ABCD1234
/// ```
class MlflowApp extends pulumi.CustomResource {
  /// Indicates whether this MLflow app is the default for the entire account. Valid values are `ENABLED` and `DISABLED`.
  late final pulumi.Output<String?> accountDefaultStatus;
  /// ARN of the MLflow App.
  late final pulumi.Output<String> arn;
  /// S3 URI for a general purpose bucket to use as the MLflow App artifact store.
  late final pulumi.Output<String> artifactStoreUri;
  /// List of SageMaker domain IDs for which this MLflow App is used as the default.
  late final pulumi.Output<List<String>?> defaultDomainIdLists;
  /// Whether to enable or disable automatic registration of new MLflow models to the SageMaker Model Registry. Valid values are `AutoModelRegistrationEnabled` and `AutoModelRegistrationDisabled`. Defaults to `AutoModelRegistrationDisabled`.
  late final pulumi.Output<String> modelRegistrationMode;
  /// MLflow app name.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN for an IAM role in your account that the MLflow App uses to access the artifact store in Amazon S3.
  late final pulumi.Output<String> roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<MlflowAppTimeouts?> timeouts;
  /// Day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: `SUN:03:00`.
  late final pulumi.Output<String> weeklyMaintenanceWindowStart;

  /// Creates a new [MlflowApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MlflowApp]. {@macro pulumi_sagemaker_mlflow_app_mlflow_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MlflowApp(
    String name, {
    MlflowAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/mlflowApp:MlflowApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountDefaultStatus = registerOutput<String?>('accountDefaultStatus');
    arn = registerOutput<String>('arn');
    artifactStoreUri = registerOutput<String>('artifactStoreUri');
    defaultDomainIdLists = registerOutput<List<String>?>('defaultDomainIdLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    modelRegistrationMode = registerOutput<String>('modelRegistrationMode');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MlflowAppTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MlflowAppTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    weeklyMaintenanceWindowStart = registerOutput<String>('weeklyMaintenanceWindowStart');
  }

  /// Gets an existing [MlflowApp] resource's state with the given [name] and [id].
  static MlflowApp get(
    String name,
    pulumi.Input<String> id, {
    MlflowAppState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MlflowApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MlflowApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/mlflowApp:MlflowApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDefaultStatus = registerOutput<String?>('accountDefaultStatus');
    arn = registerOutput<String>('arn');
    artifactStoreUri = registerOutput<String>('artifactStoreUri');
    defaultDomainIdLists = registerOutput<List<String>?>('defaultDomainIdLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    modelRegistrationMode = registerOutput<String>('modelRegistrationMode');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MlflowAppTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MlflowAppTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    weeklyMaintenanceWindowStart = registerOutput<String>('weeklyMaintenanceWindowStart');
  }

  /// Creates a typed reference to an existing [MlflowApp] resource.
  MlflowApp.reference(String urn)
    : super(
        'aws:sagemaker/mlflowApp:MlflowApp',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountDefaultStatus = registerOutput<String?>('accountDefaultStatus');
    arn = registerOutput<String>('arn');
    artifactStoreUri = registerOutput<String>('artifactStoreUri');
    defaultDomainIdLists = registerOutput<List<String>?>('defaultDomainIdLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    modelRegistrationMode = registerOutput<String>('modelRegistrationMode');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MlflowAppTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MlflowAppTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    weeklyMaintenanceWindowStart = registerOutput<String>('weeklyMaintenanceWindowStart');
  }
}
