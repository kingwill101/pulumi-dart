import 'package:pulumi/pulumi.dart';
import '../classification_job_s3_job_definition/classification_job_s3_job_definition.dart';
import '../classification_job_schedule_frequency/classification_job_schedule_frequency.dart';
import '../classification_job_user_paused_detail/classification_job_user_paused_detail.dart';
import 'classification_job_args.dart';

/// Provides a resource to manage an [AWS Macie Classification Job](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.macie2.Account("test", {});
/// const testClassificationJob = new aws.macie2.ClassificationJob("test", {
/// jobType: "ONE_TIME",
/// name: "NAME OF THE CLASSIFICATION JOB",
/// s3JobDefinition: {
/// bucketDefinitions: [{
/// accountId: "ACCOUNT ID",
/// buckets: ["S3 BUCKET NAME"],
/// }],
/// },
/// }, {
/// dependsOn: [test],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.macie2.Account("test")
/// test_classification_job = aws.macie2.ClassificationJob("test",
/// job_type="ONE_TIME",
/// name="NAME OF THE CLASSIFICATION JOB",
/// s3_job_definition={
/// "bucket_definitions": [{
/// "account_id": "ACCOUNT ID",
/// "buckets": ["S3 BUCKET NAME"],
/// }],
/// },
/// opts = pulumi.ResourceOptions(depends_on=[test]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Macie2.Account("test");
///
/// var testClassificationJob = new Aws.Macie2.ClassificationJob("test", new()
/// {
/// JobType = "ONE_TIME",
/// Name = "NAME OF THE CLASSIFICATION JOB",
/// S3JobDefinition = new Aws.Macie2.Inputs.ClassificationJobS3JobDefinitionArgs
/// {
/// BucketDefinitions = new[]
/// {
/// new Aws.Macie2.Inputs.ClassificationJobS3JobDefinitionBucketDefinitionArgs
/// {
/// AccountId = "ACCOUNT ID",
/// Buckets = new[]
/// {
/// "S3 BUCKET NAME",
/// },
/// },
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// test,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := macie2.NewAccount(ctx, "test", nil)
/// if err != nil {
/// return err
/// }
/// _, err = macie2.NewClassificationJob(ctx, "test", &macie2.ClassificationJobArgs{
/// JobType: pulumi.String("ONE_TIME"),
/// Name:    pulumi.String("NAME OF THE CLASSIFICATION JOB"),
/// S3JobDefinition: &macie2.ClassificationJobS3JobDefinitionArgs{
/// BucketDefinitions: macie2.ClassificationJobS3JobDefinitionBucketDefinitionArray{
/// &macie2.ClassificationJobS3JobDefinitionBucketDefinitionArgs{
/// AccountId: pulumi.String("ACCOUNT ID"),
/// Buckets: pulumi.StringArray{
/// pulumi.String("S3 BUCKET NAME"),
/// },
/// },
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// test,
/// }))
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
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie2.ClassificationJob;
/// import com.pulumi.aws.macie2.ClassificationJobArgs;
/// import com.pulumi.aws.macie2.inputs.ClassificationJobS3JobDefinitionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var test = new Account("test");
///
/// var testClassificationJob = new ClassificationJob("testClassificationJob", ClassificationJobArgs.builder()
/// .jobType("ONE_TIME")
/// .name("NAME OF THE CLASSIFICATION JOB")
/// .s3JobDefinition(ClassificationJobS3JobDefinitionArgs.builder()
/// .bucketDefinitions(ClassificationJobS3JobDefinitionBucketDefinitionArgs.builder()
/// .accountId("ACCOUNT ID")
/// .buckets("S3 BUCKET NAME")
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(test)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:macie2:Account
/// testClassificationJob:
/// type: aws:macie2:ClassificationJob
/// name: test
/// properties:
/// jobType: ONE_TIME
/// name: NAME OF THE CLASSIFICATION JOB
/// s3JobDefinition:
/// bucketDefinitions:
/// - accountId: ACCOUNT ID
/// buckets:
/// - S3 BUCKET NAME
/// options:
/// dependsOn:
/// - ${test}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.macie2.ClassificationJob`" pulumi-lang-dotnet="`aws.macie2.ClassificationJob`" pulumi-lang-go="`macie2.ClassificationJob`" pulumi-lang-python="`macie2.ClassificationJob`" pulumi-lang-yaml="`aws.macie2.ClassificationJob`" pulumi-lang-java="`aws.macie2.ClassificationJob`">`aws.macie2.ClassificationJob`</span> using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/classificationJob:ClassificationJob example abcd1
/// ```
class ClassificationJob extends CustomResource {
  /// The date and time, in UTC and extended RFC 3339 format, when the job was created.
  late final Output<String> createdAt;

  /// The custom data identifiers to use for data analysis and classification.
  late final Output<List<String>> customDataIdentifierIds;

  /// A custom description of the job. The description can contain as many as 200 characters.
  late final Output<String> description;

  /// Specifies whether to analyze all existing, eligible objects immediately after the job is created.
  late final Output<bool?> initialRun;
  late final Output<String> jobArn;
  late final Output<String> jobId;

  /// The status for the job. Valid values are: `CANCELLED`, `RUNNING` and `USER_PAUSED`
  late final Output<String> jobStatus;

  /// The schedule for running the job. Valid values are: `ONE_TIME` - Run the job only once. If you specify this value, don't specify a value for the <span pulumi-lang-nodejs="`scheduleFrequency`" pulumi-lang-dotnet="`ScheduleFrequency`" pulumi-lang-go="`scheduleFrequency`" pulumi-lang-python="`schedule_frequency`" pulumi-lang-yaml="`scheduleFrequency`" pulumi-lang-java="`scheduleFrequency`">`schedule_frequency`</span> property. `SCHEDULED` - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the <span pulumi-lang-nodejs="`scheduleFrequency`" pulumi-lang-dotnet="`ScheduleFrequency`" pulumi-lang-go="`scheduleFrequency`" pulumi-lang-python="`schedule_frequency`" pulumi-lang-yaml="`scheduleFrequency`" pulumi-lang-java="`scheduleFrequency`">`schedule_frequency`</span> property to define the recurrence pattern for the job.
  late final Output<String> jobType;

  /// A custom name for the job. The name can contain as many as 500 characters. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The S3 buckets that contain the objects to analyze, and the scope of that analysis. (documented below)
  late final Output<ClassificationJobS3JobDefinition> s3JobDefinition;

  /// The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.
  late final Output<int> samplingPercentage;

  /// The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the <span pulumi-lang-nodejs="`jobType`" pulumi-lang-dotnet="`JobType`" pulumi-lang-go="`jobType`" pulumi-lang-python="`job_type`" pulumi-lang-yaml="`jobType`" pulumi-lang-java="`jobType`">`job_type`</span> property to `ONE_TIME`. (documented below)
  late final Output<ClassificationJobScheduleFrequency> scheduleFrequency;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// If the current status of the job is `USER_PAUSED`, specifies when the job was paused and when the job or job run will expire and be canceled if it isn't resumed. This value is present only if the value for `job-status` is `USER_PAUSED`.
  late final Output<List<ClassificationJobUserPausedDetail>> userPausedDetails;

  ClassificationJob(
    String name, {
    ClassificationJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie2/classificationJob:ClassificationJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = Output.createUnknown<String>();
    this.customDataIdentifierIds = Output.createUnknown<List<String>>();
    this.description = Output.createUnknown<String>();
    this.initialRun = Output.createUnknown<bool?>();
    this.jobArn = Output.createUnknown<String>();
    this.jobId = Output.createUnknown<String>();
    this.jobStatus = Output.createUnknown<String>();
    this.jobType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.s3JobDefinition =
        Output.createUnknown<ClassificationJobS3JobDefinition>();
    this.samplingPercentage = Output.createUnknown<int>();
    this.scheduleFrequency =
        Output.createUnknown<ClassificationJobScheduleFrequency>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.userPausedDetails =
        Output.createUnknown<List<ClassificationJobUserPausedDetail>>();
  }
}
