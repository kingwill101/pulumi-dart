import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_args.dart';
import 'classification_job_s3_job_definition.dart';
import 'classification_job_schedule_frequency.dart';
import 'classification_job_state.dart';

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
///     jobType: "ONE_TIME",
///     name: "NAME OF THE CLASSIFICATION JOB",
///     s3JobDefinition: {
///         bucketDefinitions: [{
///             accountId: "ACCOUNT ID",
///             buckets: ["S3 BUCKET NAME"],
///         }],
///     },
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
///     job_type="ONE_TIME",
///     name="NAME OF THE CLASSIFICATION JOB",
///     s3_job_definition={
///         "bucket_definitions": [{
///             "account_id": "ACCOUNT ID",
///             "buckets": ["S3 BUCKET NAME"],
///         }],
///     },
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
///         JobType = "ONE_TIME",
///         Name = "NAME OF THE CLASSIFICATION JOB",
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
/// 			JobType: pulumi.String("ONE_TIME"),
/// 			Name:    pulumi.String("NAME OF THE CLASSIFICATION JOB"),
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
///   job_type   = "ONE_TIME"
///   name       = "NAME OF THE CLASSIFICATION JOB"
///   s3_job_definition = {
///     bucket_definitions = [{
///       "accountId" = "ACCOUNT ID"
///       "buckets"   = ["S3 BUCKET NAME"]
///     }]
///   }
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
///             .jobType("ONE_TIME")
///             .name("NAME OF THE CLASSIFICATION JOB")
///             .s3JobDefinition(ClassificationJobS3JobDefinitionArgs.builder()
///                 .bucketDefinitions(ClassificationJobS3JobDefinitionBucketDefinitionArgs.builder()
///                     .accountId("ACCOUNT ID")
///                     .buckets("S3 BUCKET NAME")
///                     .build())
///                 .build())
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
///       jobType: ONE_TIME
///       name: NAME OF THE CLASSIFICATION JOB
///       s3JobDefinition:
///         bucketDefinitions:
///           - accountId: ACCOUNT ID
///             buckets:
///               - S3 BUCKET NAME
///     options:
///       dependsOn:
///         - ${test}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.ClassificationJob` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/classificationJob:ClassificationJob example abcd1
/// ```
class ClassificationJob extends pulumi.CustomResource {
  /// The date and time, in UTC and extended RFC 3339 format, when the job was created.
  late final pulumi.Output<String> createdAt;
  /// The custom data identifiers to use for data analysis and classification.
  late final pulumi.Output<List<String>> customDataIdentifierIds;
  /// A custom description of the job. The description can contain as many as 200 characters.
  late final pulumi.Output<String> description;
  /// Specifies whether to analyze all existing, eligible objects immediately after the job is created.
  late final pulumi.Output<bool?> initialRun;
  late final pulumi.Output<String> jobArn;
  late final pulumi.Output<String> jobId;
  /// The status for the job. Valid values are: `CANCELLED`, `RUNNING` and `USER_PAUSED`
  late final pulumi.Output<String> jobStatus;
  /// The schedule for running the job. Valid values are: `ONE_TIME` - Run the job only once. If you specify this value, don't specify a value for the `scheduleFrequency` property. `SCHEDULED` - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the `scheduleFrequency` property to define the recurrence pattern for the job.
  late final pulumi.Output<String> jobType;
  /// A custom name for the job. The name can contain as many as 500 characters. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)
  late final pulumi.Output<ClassificationJobS3JobDefinition> s3JobDefinition;
  /// The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  late final pulumi.Output<int> samplingPercentage;
  /// The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the `jobType` property to `ONE_TIME`. (documented below)
  late final pulumi.Output<ClassificationJobScheduleFrequency> scheduleFrequency;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// If the current status of the job is `USER_PAUSED`, specifies when the job was paused and when the job or job run will expire and be canceled if it isn't resumed. This value is present only if the value for `job-status` is `USER_PAUSED`.
  late final pulumi.Output<List<Map<String, dynamic>>> userPausedDetails;

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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    customDataIdentifierIds = registerOutput<List<String>>('customDataIdentifierIds');
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
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userPausedDetails = registerOutput<List<Map<String, dynamic>>>('userPausedDetails');
  }

  /// Gets an existing [ClassificationJob] resource's state with the given [name] and [id].
  static ClassificationJob get(
    String name,
    pulumi.Input<String> id, {
    ClassificationJobState? state,
  }) {
    return ClassificationJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    customDataIdentifierIds = registerOutput<List<String>>('customDataIdentifierIds');
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
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userPausedDetails = registerOutput<List<Map<String, dynamic>>>('userPausedDetails');
  }
}
