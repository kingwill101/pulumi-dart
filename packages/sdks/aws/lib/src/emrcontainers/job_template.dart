import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_args.dart';
import 'job_template_job_template_data.dart';
import 'job_template_state.dart';

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
///         jobDriver: {
///             sparkSqlJobDriver: {
///                 entryPoint: "default",
///             },
///         },
///         executionRoleArn: exampleAwsIamRole.arn,
///         releaseLabel: "emr-6.10.0-latest",
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
///         "job_driver": {
///             "spark_sql_job_driver": {
///                 "entry_point": "default",
///             },
///         },
///         "execution_role_arn": example_aws_iam_role["arn"],
///         "release_label": "emr-6.10.0-latest",
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
///             JobDriver = new Aws.EmrContainers.Inputs.JobTemplateJobTemplateDataJobDriverArgs
///             {
///                 SparkSqlJobDriver = new Aws.EmrContainers.Inputs.JobTemplateJobTemplateDataJobDriverSparkSqlJobDriverArgs
///                 {
///                     EntryPoint = "default",
///                 },
///             },
///             ExecutionRoleArn = exampleAwsIamRole.Arn,
///             ReleaseLabel = "emr-6.10.0-latest",
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
/// 				JobDriver: &emrcontainers.JobTemplateJobTemplateDataJobDriverArgs{
/// 					SparkSqlJobDriver: &emrcontainers.JobTemplateJobTemplateDataJobDriverSparkSqlJobDriverArgs{
/// 						EntryPoint: pulumi.String("default"),
/// 					},
/// 				},
/// 				ExecutionRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 				ReleaseLabel:     pulumi.String("emr-6.10.0-latest"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_emrcontainers_jobtemplate" "example" {
///   job_template_data = {
///     job_driver = {
///       spark_sql_job_driver = {
///         entry_point = "default"
///       }
///     }
///     execution_role_arn = exampleAwsIamRole.arn
///     release_label      = "emr-6.10.0-latest"
///   }
///   name = "example"
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
///         var example = new JobTemplate("example", JobTemplateArgs.builder()
///             .jobTemplateData(JobTemplateJobTemplateDataArgs.builder()
///                 .jobDriver(JobTemplateJobTemplateDataJobDriverArgs.builder()
///                     .sparkSqlJobDriver(JobTemplateJobTemplateDataJobDriverSparkSqlJobDriverArgs.builder()
///                         .entryPoint("default")
///                         .build())
///                     .build())
///                 .executionRoleArn(exampleAwsIamRole.arn())
///                 .releaseLabel("emr-6.10.0-latest")
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
///         jobDriver:
///           sparkSqlJobDriver:
///             entryPoint: default
///         executionRoleArn: ${exampleAwsIamRole.arn}
///         releaseLabel: emr-6.10.0-latest
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
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    jobTemplateData = registerOutput<JobTemplateJobTemplateData>('jobTemplateData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplateJobTemplateData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [JobTemplate] resource's state with the given [name] and [id].
  static JobTemplate get(
    String name,
    pulumi.Input<String> id, {
    JobTemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return JobTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  JobTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:emrcontainers/jobTemplate:JobTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    jobTemplateData = registerOutput<JobTemplateJobTemplateData>('jobTemplateData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplateJobTemplateData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [JobTemplate] resource.
  JobTemplate.reference(String urn)
    : super(
        'aws:emrcontainers/jobTemplate:JobTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    jobTemplateData = registerOutput<JobTemplateJobTemplateData>('jobTemplateData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobTemplateJobTemplateData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
