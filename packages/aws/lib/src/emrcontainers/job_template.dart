import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_args.dart';
import 'job_template_job_template_data.dart';

/// Manages an EMR Containers (EMR on EKS) Job Template.
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
/// const example = new aws.emrcontainers.JobTemplate("example", {
///     jobTemplateData: {
///         executionRoleArn: exampleAwsIamRole.arn,
///         releaseLabel: "emr-6.10.0-latest",
///         jobDriver: {
///             sparkSqlJobDriver: {
///                 entryPoint: "default",
///             },
///         },
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.emrcontainers.JobTemplate("example",
///     job_template_data={
///         "execution_role_arn": example_aws_iam_role["arn"],
///         "release_label": "emr-6.10.0-latest",
///         "job_driver": {
///             "spark_sql_job_driver": {
///                 "entry_point": "default",
///             },
///         },
///     },
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.EmrContainers.JobTemplate("example", new()
///     {
///         JobTemplateData = new Aws.EmrContainers.Inputs.JobTemplateJobTemplateDataArgs
///         {
///             ExecutionRoleArn = exampleAwsIamRole.Arn,
///             ReleaseLabel = "emr-6.10.0-latest",
///             JobDriver = new Aws.EmrContainers.Inputs.JobTemplateJobTemplateDataJobDriverArgs
///             {
///                 SparkSqlJobDriver = new Aws.EmrContainers.Inputs.JobTemplateJobTemplateDataJobDriverSparkSqlJobDriverArgs
///                 {
///                     EntryPoint = "default",
///                 },
///             },
///         },
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emrcontainers"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := emrcontainers.NewJobTemplate(ctx, "example", &emrcontainers.JobTemplateArgs{
/// 			JobTemplateData: &emrcontainers.JobTemplateJobTemplateDataArgs{
/// 				ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 				ReleaseLabel:     pulumi.String("emr-6.10.0-latest"),
/// 				JobDriver: &emrcontainers.JobTemplateJobTemplateDataJobDriverArgs{
/// 					SparkSqlJobDriver: &emrcontainers.JobTemplateJobTemplateDataJobDriverSparkSqlJobDriverArgs{
/// 						EntryPoint: pulumi.String("default"),
/// 					},
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
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
/// import com.pulumi.aws.emrcontainers.JobTemplate;
/// import com.pulumi.aws.emrcontainers.JobTemplateArgs;
/// import com.pulumi.aws.emrcontainers.inputs.JobTemplateJobTemplateDataArgs;
/// import com.pulumi.aws.emrcontainers.inputs.JobTemplateJobTemplateDataJobDriverArgs;
/// import com.pulumi.aws.emrcontainers.inputs.JobTemplateJobTemplateDataJobDriverSparkSqlJobDriverArgs;
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
///         var example = new JobTemplate("example", JobTemplateArgs.builder()
///             .jobTemplateData(JobTemplateJobTemplateDataArgs.builder()
///                 .executionRoleArn(exampleAwsIamRole.arn())
///                 .releaseLabel("emr-6.10.0-latest")
///                 .jobDriver(JobTemplateJobTemplateDataJobDriverArgs.builder()
///                     .sparkSqlJobDriver(JobTemplateJobTemplateDataJobDriverSparkSqlJobDriverArgs.builder()
///                         .entryPoint("default")
///                         .build())
///                     .build())
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:emrcontainers:JobTemplate
///     properties:
///       jobTemplateData:
///         executionRoleArn: ${exampleAwsIamRole.arn}
///         releaseLabel: emr-6.10.0-latest
///         jobDriver:
///           sparkSqlJobDriver:
///             entryPoint: default
///       name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS job templates using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emrcontainers/jobTemplate:JobTemplate example a1b2c3d4e5f6g7h8i9j10k11l
/// ```
class JobTemplate extends pulumi.CustomResource {
  /// ARN of the job template.
  late final pulumi.Output<String> arn;
  /// The job template data which holds values of StartJobRun API request.
  late final pulumi.Output<JobTemplateJobTemplateData> jobTemplateData;
  /// The KMS key ARN used to encrypt the job template.
  late final pulumi.Output<String?> kmsKeyArn;
  /// The specified name of the job template.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [JobTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobTemplate]. {@macro pulumi_emrcontainers_job_template_job_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobTemplate(
    String name, {
    JobTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emrcontainers/jobTemplate:JobTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.jobTemplateData = registerOutput<JobTemplateJobTemplateData>('jobTemplateData');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
