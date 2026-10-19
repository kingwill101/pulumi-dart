import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_args.dart';
import 'classification_job_s3_job_definition.dart';
import 'classification_job_schedule_frequency.dart';
import 'classification_job_state.dart';
import 'classification_job_user_paused_detail.dart';

/// Provides a resource to manage an [AWS Macie Classification Job](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.macie2.Account("test", {});
/// const testClassificationJob = new aws.macie2.ClassificationJob("test", {
///     s3JobDefinition: {
///         bucketDefinitions: [{
///             accountId: "ACCOUNT ID",
///             buckets: ["S3 BUCKET NAME"],
///         }],
///     },
///     jobType: "ONE_TIME",
///     name: "NAME OF THE CLASSIFICATION JOB",
/// }, {
///     dependsOn: [test],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.macie2.Account("test")
/// test_classification_job = aws.macie2.ClassificationJob("test",
///     s3_job_definition={
///         "bucket_definitions": [{
///             "account_id": "ACCOUNT ID",
///             "buckets": ["S3 BUCKET NAME"],
///         }],
///     },
///     job_type="ONE_TIME",
///     name="NAME OF THE CLASSIFICATION JOB",
///     opts = pulumi.ResourceOptions(depends_on=[test]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Macie2.Account("test");
///
///     var testClassificationJob = new Aws.Macie2.ClassificationJob("test", new()
///     {
///         S3JobDefinition = new Aws.Macie2.Inputs.ClassificationJobS3JobDefinitionArgs
///         {
///             BucketDefinitions = new[]
///             {
///                 new Aws.Macie2.Inputs.ClassificationJobS3JobDefinitionBucketDefinitionArgs
///                 {
///                     AccountId = "ACCOUNT ID",
///                     Buckets = new[]
///                     {
///                         "S3 BUCKET NAME",
///                     },
///                 },
///             },
///         },
///         JobType = "ONE_TIME",
///         Name = "NAME OF THE CLASSIFICATION JOB",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             test,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := macie2.NewAccount(ctx, "test", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = macie2.NewClassificationJob(ctx, "test", &macie2.ClassificationJobArgs{
/// 			S3JobDefinition: &macie2.ClassificationJobS3JobDefinitionArgs{
/// 				BucketDefinitions: macie2.ClassificationJobS3JobDefinitionBucketDefinitionArray{
/// 					&macie2.ClassificationJobS3JobDefinitionBucketDefinitionArgs{
/// 						AccountId: pulumi.String("ACCOUNT ID"),
/// 						Buckets: pulumi.StringArray{
/// 							pulumi.String("S3 BUCKET NAME"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			JobType: pulumi.String("ONE_TIME"),
/// 			Name:    pulumi.String("NAME OF THE CLASSIFICATION JOB"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			test,
/// 		}))
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
/// resource "aws_macie2_account" "test" {
/// }
/// resource "aws_macie2_classificationjob" "test" {
///   depends_on = [aws_macie2_account.test]
///   s3_job_definition = {
///     bucket_definitions = [{
///       "accountId" = "ACCOUNT ID"
///       "buckets"   = ["S3 BUCKET NAME"]
///     }]
///   }
///   job_type = "ONE_TIME"
///   name     = "NAME OF THE CLASSIFICATION JOB"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie2.ClassificationJob;
/// import com.pulumi.aws.macie2.ClassificationJobArgs;
/// import com.pulumi.aws.macie2.inputs.ClassificationJobS3JobDefinitionArgs;
/// import com.pulumi.aws.macie2.inputs.ClassificationJobS3JobDefinitionBucketDefinitionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var test = new Account("test");
///
///         var testClassificationJob = new ClassificationJob("testClassificationJob", ClassificationJobArgs.builder()
///             .s3JobDefinition(ClassificationJobS3JobDefinitionArgs.builder()
///                 .bucketDefinitions(ClassificationJobS3JobDefinitionBucketDefinitionArgs.builder()
///                     .accountId("ACCOUNT ID")
///                     .buckets("S3 BUCKET NAME")
///                     .build())
///                 .build())
///             .jobType("ONE_TIME")
///             .name("NAME OF THE CLASSIFICATION JOB")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(test)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:macie2:Account
///   testClassificationJob:
///     type: aws:macie2:ClassificationJob
///     name: test
///     properties:
///       s3JobDefinition:
///         bucketDefinitions:
///           - accountId: ACCOUNT ID
///             buckets:
///               - S3 BUCKET NAME
///       jobType: ONE_TIME
///       name: NAME OF THE CLASSIFICATION JOB
///     options:
///       dependsOn:
///         - ${test}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.ClassificationJob` using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/classificationJob:ClassificationJob example abcd1
/// ```
class ClassificationJob extends pulumi.CustomResource {
  /// Date and time, in UTC and extended RFC 3339 format, when the job was created.
  late final pulumi.Output<String> createdAt;
  /// Custom data identifiers to use for data analysis and classification.
  late final pulumi.Output<List<String>> customDataIdentifierIds;
  /// Custom description of the job. Can contain as many as 200 characters.
  late final pulumi.Output<String> description;
  /// Whether to analyze all existing, eligible objects immediately after the job is created.
  late final pulumi.Output<bool?> initialRun;
  /// ARN of the classification job.
  late final pulumi.Output<String> jobArn;
  /// Unique identifier (ID) of the classification job.
  late final pulumi.Output<String> jobId;
  /// Status for the job. Valid values are `CANCELLED`, `RUNNING` and `USER_PAUSED`.
  late final pulumi.Output<String> jobStatus;
  /// Schedule for running the job. Valid values are `ONE_TIME`, to run the job only once, and `SCHEDULED`, to run the job on a daily, weekly, or monthly basis. When set to `SCHEDULED`, use `scheduleFrequency` to define the recurrence pattern for the job.
  late final pulumi.Output<String> jobType;
  /// Custom name for the job. Can contain as many as 500 characters. If omitted, Terraform assigns a random, unique name. Conflicts with `namePrefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// S3 buckets that contain the objects to analyze, and the scope of that analysis. See `s3JobDefinition` Block for details.
  late final pulumi.Output<ClassificationJobS3JobDefinition> s3JobDefinition;
  /// Sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  late final pulumi.Output<int> samplingPercentage;
  /// Recurrence pattern for running the job. To run the job only once, omit this argument and set `jobType` to `ONE_TIME`. See `scheduleFrequency` Block for details.
  late final pulumi.Output<ClassificationJobScheduleFrequency> scheduleFrequency;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// If the current status of the job is `USER_PAUSED`, information about when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if `jobStatus` is `USER_PAUSED`. See `userPausedDetails` Block for details.
  late final pulumi.Output<List<ClassificationJobUserPausedDetail>> userPausedDetails;

  /// Creates a new [ClassificationJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClassificationJob]. {@macro pulumi_macie2_classification_job_classification_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClassificationJob(
    String name, {
    ClassificationJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/classificationJob:ClassificationJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    customDataIdentifierIds = registerOutput<List<String>>('customDataIdentifierIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String>('description');
    initialRun = registerOutput<bool?>('initialRun');
    jobArn = registerOutput<String>('jobArn');
    jobId = registerOutput<String>('jobId');
    jobStatus = registerOutput<String>('jobStatus');
    jobType = registerOutput<String>('jobType');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    s3JobDefinition = registerOutput<ClassificationJobS3JobDefinition>('s3JobDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClassificationJobS3JobDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samplingPercentage = registerOutput<int>('samplingPercentage');
    scheduleFrequency = registerOutput<ClassificationJobScheduleFrequency>('scheduleFrequency', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClassificationJobScheduleFrequency.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userPausedDetails = registerOutput<List<ClassificationJobUserPausedDetail>>('userPausedDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClassificationJobUserPausedDetail>(guardedValue, (value) => ClassificationJobUserPausedDetail.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ClassificationJob] resource's state with the given [name] and [id].
  static ClassificationJob get(
    String name,
    pulumi.Input<String> id, {
    ClassificationJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ClassificationJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ClassificationJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/classificationJob:ClassificationJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    customDataIdentifierIds = registerOutput<List<String>>('customDataIdentifierIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String>('description');
    initialRun = registerOutput<bool?>('initialRun');
    jobArn = registerOutput<String>('jobArn');
    jobId = registerOutput<String>('jobId');
    jobStatus = registerOutput<String>('jobStatus');
    jobType = registerOutput<String>('jobType');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    s3JobDefinition = registerOutput<ClassificationJobS3JobDefinition>('s3JobDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClassificationJobS3JobDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samplingPercentage = registerOutput<int>('samplingPercentage');
    scheduleFrequency = registerOutput<ClassificationJobScheduleFrequency>('scheduleFrequency', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClassificationJobScheduleFrequency.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userPausedDetails = registerOutput<List<ClassificationJobUserPausedDetail>>('userPausedDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClassificationJobUserPausedDetail>(guardedValue, (value) => ClassificationJobUserPausedDetail.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ClassificationJob] resource.
  ClassificationJob.reference(String urn)
    : super(
        'aws:macie2/classificationJob:ClassificationJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    customDataIdentifierIds = registerOutput<List<String>>('customDataIdentifierIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String>('description');
    initialRun = registerOutput<bool?>('initialRun');
    jobArn = registerOutput<String>('jobArn');
    jobId = registerOutput<String>('jobId');
    jobStatus = registerOutput<String>('jobStatus');
    jobType = registerOutput<String>('jobType');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    s3JobDefinition = registerOutput<ClassificationJobS3JobDefinition>('s3JobDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClassificationJobS3JobDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    samplingPercentage = registerOutput<int>('samplingPercentage');
    scheduleFrequency = registerOutput<ClassificationJobScheduleFrequency>('scheduleFrequency', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClassificationJobScheduleFrequency.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userPausedDetails = registerOutput<List<ClassificationJobUserPausedDetail>>('userPausedDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClassificationJobUserPausedDetail>(guardedValue, (value) => ClassificationJobUserPausedDetail.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
