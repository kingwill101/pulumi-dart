import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_args.dart';
import 'transfer_job_event_stream.dart';
import 'transfer_job_logging_config.dart';
import 'transfer_job_notification_config.dart';
import 'transfer_job_replication_spec.dart';
import 'transfer_job_schedule.dart';
import 'transfer_job_transfer_spec.dart';

/// Creates a new Transfer Job in Google Cloud Storage Transfer.
///
/// To get more information about Google Cloud Storage Transfer, see:
///
/// * [Overview](https://cloud.google.com/storage-transfer/docs/overview)
/// * [API documentation](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/transferJobs)
/// * How-to Guides
/// * [Configuring Access to Data Sources and Sinks](https://cloud.google.com/storage-transfer/docs/configure-access)
///
/// ## Example Usage
///
/// Example creating a nightly Transfer Job from an AWS S3 Bucket to a GCS bucket.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.storage.getTransferProjectServiceAccount({
///     project: project,
/// });
/// const s3_backup_bucket = new gcp.storage.Bucket("s3-backup-bucket", {
///     name: `${awsS3Bucket}-backup`,
///     storageClass: "NEARLINE",
///     project: project,
///     location: "US",
/// });
/// const s3_backup_bucketBucketIAMMember = new gcp.storage.BucketIAMMember("s3-backup-bucket", {
///     bucket: s3_backup_bucket.name,
///     role: "roles/storage.admin",
///     member: _default.then(_default => `serviceAccount:${_default.email}`),
/// }, {
///     dependsOn: [s3_backup_bucket],
/// });
/// const topic = new gcp.pubsub.Topic("topic", {name: pubsubTopicName});
/// const notificationConfig = new gcp.pubsub.TopicIAMMember("notification_config", {
///     topic: topic.id,
///     role: "roles/pubsub.publisher",
///     member: _default.then(_default => `serviceAccount:${_default.email}`),
/// });
/// const s3_bucket_nightly_backup = new gcp.storage.TransferJob("s3-bucket-nightly-backup", {
///     description: "Nightly backup of S3 bucket",
///     project: project,
///     transferSpec: {
///         objectConditions: {
///             maxTimeElapsedSinceLastModification: "600s",
///             excludePrefixes: ["requests.gz"],
///         },
///         transferOptions: {
///             deleteObjectsUniqueInSink: false,
///         },
///         awsS3DataSource: {
///             bucketName: awsS3Bucket,
///             awsAccessKey: {
///                 accessKeyId: awsAccessKey,
///                 secretAccessKey: awsSecretKey,
///             },
///         },
///         gcsDataSink: {
///             bucketName: s3_backup_bucket.name,
///             path: "foo/bar/",
///         },
///     },
///     schedule: {
///         scheduleStartDate: {
///             year: 2018,
///             month: 10,
///             day: 1,
///         },
///         scheduleEndDate: {
///             year: 2019,
///             month: 1,
///             day: 15,
///         },
///         startTimeOfDay: {
///             hours: 23,
///             minutes: 30,
///             seconds: 0,
///             nanos: 0,
///         },
///         repeatInterval: "604800s",
///     },
///     notificationConfig: {
///         pubsubTopic: topic.id,
///         eventTypes: [
///             "TRANSFER_OPERATION_SUCCESS",
///             "TRANSFER_OPERATION_FAILED",
///         ],
///         payloadFormat: "JSON",
///     },
///     loggingConfig: {
///         logActions: [
///             "COPY",
///             "DELETE",
///         ],
///         logActionStates: [
///             "SUCCEEDED",
///             "FAILED",
///         ],
///     },
/// }, {
///     dependsOn: [
///         s3_backup_bucketBucketIAMMember,
///         notificationConfig,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.storage.get_transfer_project_service_account(project=project)
/// s3_backup_bucket = gcp.storage.Bucket("s3-backup-bucket",
///     name=f"{aws_s3_bucket}-backup",
///     storage_class="NEARLINE",
///     project=project,
///     location="US")
/// s3_backup_bucket_bucket_iam_member = gcp.storage.BucketIAMMember("s3-backup-bucket",
///     bucket=s3_backup_bucket.name,
///     role="roles/storage.admin",
///     member=f"serviceAccount:{default.email}",
///     opts = pulumi.ResourceOptions(depends_on=[s3_backup_bucket]))
/// topic = gcp.pubsub.Topic("topic", name=pubsub_topic_name)
/// notification_config = gcp.pubsub.TopicIAMMember("notification_config",
///     topic=topic.id,
///     role="roles/pubsub.publisher",
///     member=f"serviceAccount:{default.email}")
/// s3_bucket_nightly_backup = gcp.storage.TransferJob("s3-bucket-nightly-backup",
///     description="Nightly backup of S3 bucket",
///     project=project,
///     transfer_spec={
///         "object_conditions": {
///             "max_time_elapsed_since_last_modification": "600s",
///             "exclude_prefixes": ["requests.gz"],
///         },
///         "transfer_options": {
///             "delete_objects_unique_in_sink": False,
///         },
///         "aws_s3_data_source": {
///             "bucket_name": aws_s3_bucket,
///             "aws_access_key": {
///                 "access_key_id": aws_access_key,
///                 "secret_access_key": aws_secret_key,
///             },
///         },
///         "gcs_data_sink": {
///             "bucket_name": s3_backup_bucket.name,
///             "path": "foo/bar/",
///         },
///     },
///     schedule={
///         "schedule_start_date": {
///             "year": 2018,
///             "month": 10,
///             "day": 1,
///         },
///         "schedule_end_date": {
///             "year": 2019,
///             "month": 1,
///             "day": 15,
///         },
///         "start_time_of_day": {
///             "hours": 23,
///             "minutes": 30,
///             "seconds": 0,
///             "nanos": 0,
///         },
///         "repeat_interval": "604800s",
///     },
///     notification_config={
///         "pubsub_topic": topic.id,
///         "event_types": [
///             "TRANSFER_OPERATION_SUCCESS",
///             "TRANSFER_OPERATION_FAILED",
///         ],
///         "payload_format": "JSON",
///     },
///     logging_config={
///         "log_actions": [
///             "COPY",
///             "DELETE",
///         ],
///         "log_action_states": [
///             "SUCCEEDED",
///             "FAILED",
///         ],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             s3_backup_bucket_bucket_iam_member,
///             notification_config,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Storage.GetTransferProjectServiceAccount.Invoke(new()
///     {
///         Project = project,
///     });
///
///     var s3_backup_bucket = new Gcp.Storage.Bucket("s3-backup-bucket", new()
///     {
///         Name = $"{awsS3Bucket}-backup",
///         StorageClass = "NEARLINE",
///         Project = project,
///         Location = "US",
///     });
///
///     var s3_backup_bucketBucketIAMMember = new Gcp.Storage.BucketIAMMember("s3-backup-bucket", new()
///     {
///         Bucket = s3_backup_bucket.Name,
///         Role = "roles/storage.admin",
///         Member = @default.Apply(@default => $"serviceAccount:{@default.Apply(getTransferProjectServiceAccountResult => getTransferProjectServiceAccountResult.Email)}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             s3_backup_bucket,
///         },
///     });
///
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = pubsubTopicName,
///     });
///
///     var notificationConfig = new Gcp.PubSub.TopicIAMMember("notification_config", new()
///     {
///         Topic = topic.Id,
///         Role = "roles/pubsub.publisher",
///         Member = @default.Apply(@default => $"serviceAccount:{@default.Apply(getTransferProjectServiceAccountResult => getTransferProjectServiceAccountResult.Email)}"),
///     });
///
///     var s3_bucket_nightly_backup = new Gcp.Storage.TransferJob("s3-bucket-nightly-backup", new()
///     {
///         Description = "Nightly backup of S3 bucket",
///         Project = project,
///         TransferSpec = new Gcp.Storage.Inputs.TransferJobTransferSpecArgs
///         {
///             ObjectConditions = new Gcp.Storage.Inputs.TransferJobTransferSpecObjectConditionsArgs
///             {
///                 MaxTimeElapsedSinceLastModification = "600s",
///                 ExcludePrefixes = new[]
///                 {
///                     "requests.gz",
///                 },
///             },
///             TransferOptions = new Gcp.Storage.Inputs.TransferJobTransferSpecTransferOptionsArgs
///             {
///                 DeleteObjectsUniqueInSink = false,
///             },
///             AwsS3DataSource = new Gcp.Storage.Inputs.TransferJobTransferSpecAwsS3DataSourceArgs
///             {
///                 BucketName = awsS3Bucket,
///                 AwsAccessKey = new Gcp.Storage.Inputs.TransferJobTransferSpecAwsS3DataSourceAwsAccessKeyArgs
///                 {
///                     AccessKeyId = awsAccessKey,
///                     SecretAccessKey = awsSecretKey,
///                 },
///             },
///             GcsDataSink = new Gcp.Storage.Inputs.TransferJobTransferSpecGcsDataSinkArgs
///             {
///                 BucketName = s3_backup_bucket.Name,
///                 Path = "foo/bar/",
///             },
///         },
///         Schedule = new Gcp.Storage.Inputs.TransferJobScheduleArgs
///         {
///             ScheduleStartDate = new Gcp.Storage.Inputs.TransferJobScheduleScheduleStartDateArgs
///             {
///                 Year = 2018,
///                 Month = 10,
///                 Day = 1,
///             },
///             ScheduleEndDate = new Gcp.Storage.Inputs.TransferJobScheduleScheduleEndDateArgs
///             {
///                 Year = 2019,
///                 Month = 1,
///                 Day = 15,
///             },
///             StartTimeOfDay = new Gcp.Storage.Inputs.TransferJobScheduleStartTimeOfDayArgs
///             {
///                 Hours = 23,
///                 Minutes = 30,
///                 Seconds = 0,
///                 Nanos = 0,
///             },
///             RepeatInterval = "604800s",
///         },
///         NotificationConfig = new Gcp.Storage.Inputs.TransferJobNotificationConfigArgs
///         {
///             PubsubTopic = topic.Id,
///             EventTypes = new[]
///             {
///                 "TRANSFER_OPERATION_SUCCESS",
///                 "TRANSFER_OPERATION_FAILED",
///             },
///             PayloadFormat = "JSON",
///         },
///         LoggingConfig = new Gcp.Storage.Inputs.TransferJobLoggingConfigArgs
///         {
///             LogActions = new[]
///             {
///                 "COPY",
///                 "DELETE",
///             },
///             LogActionStates = new[]
///             {
///                 "SUCCEEDED",
///                 "FAILED",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             s3_backup_bucketBucketIAMMember,
///             notificationConfig,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := storage.GetTransferProjectServiceAccount(ctx, &storage.GetTransferProjectServiceAccountArgs{
/// 			Project: pulumi.StringRef(project),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		s3_backup_bucket, err := storage.NewBucket(ctx, "s3-backup-bucket", &storage.BucketArgs{
/// 			Name:         pulumi.Sprintf("%v-backup", awsS3Bucket),
/// 			StorageClass: pulumi.String("NEARLINE"),
/// 			Project:      pulumi.Any(project),
/// 			Location:     pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		s3_backup_bucketBucketIAMMember, err := storage.NewBucketIAMMember(ctx, "s3-backup-bucket", &storage.BucketIAMMemberArgs{
/// 			Bucket: s3_backup_bucket.Name,
/// 			Role:   pulumi.String("roles/storage.admin"),
/// 			Member: pulumi.Sprintf("serviceAccount:%v", _default.Email),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			s3_backup_bucket,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.Any(pubsubTopicName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		notificationConfig, err := pubsub.NewTopicIAMMember(ctx, "notification_config", &pubsub.TopicIAMMemberArgs{
/// 			Topic:  topic.ID(),
/// 			Role:   pulumi.String("roles/pubsub.publisher"),
/// 			Member: pulumi.Sprintf("serviceAccount:%v", _default.Email),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewTransferJob(ctx, "s3-bucket-nightly-backup", &storage.TransferJobArgs{
/// 			Description: pulumi.String("Nightly backup of S3 bucket"),
/// 			Project:     pulumi.Any(project),
/// 			TransferSpec: &storage.TransferJobTransferSpecArgs{
/// 				ObjectConditions: &storage.TransferJobTransferSpecObjectConditionsArgs{
/// 					MaxTimeElapsedSinceLastModification: pulumi.String("600s"),
/// 					ExcludePrefixes: pulumi.StringArray{
/// 						pulumi.String("requests.gz"),
/// 					},
/// 				},
/// 				TransferOptions: &storage.TransferJobTransferSpecTransferOptionsArgs{
/// 					DeleteObjectsUniqueInSink: pulumi.Bool(false),
/// 				},
/// 				AwsS3DataSource: &storage.TransferJobTransferSpecAwsS3DataSourceArgs{
/// 					BucketName: pulumi.Any(awsS3Bucket),
/// 					AwsAccessKey: &storage.TransferJobTransferSpecAwsS3DataSourceAwsAccessKeyArgs{
/// 						AccessKeyId:     pulumi.Any(awsAccessKey),
/// 						SecretAccessKey: pulumi.Any(awsSecretKey),
/// 					},
/// 				},
/// 				GcsDataSink: &storage.TransferJobTransferSpecGcsDataSinkArgs{
/// 					BucketName: s3_backup_bucket.Name,
/// 					Path:       pulumi.String("foo/bar/"),
/// 				},
/// 			},
/// 			Schedule: &storage.TransferJobScheduleArgs{
/// 				ScheduleStartDate: &storage.TransferJobScheduleScheduleStartDateArgs{
/// 					Year:  pulumi.Int(2018),
/// 					Month: pulumi.Int(10),
/// 					Day:   pulumi.Int(1),
/// 				},
/// 				ScheduleEndDate: &storage.TransferJobScheduleScheduleEndDateArgs{
/// 					Year:  pulumi.Int(2019),
/// 					Month: pulumi.Int(1),
/// 					Day:   pulumi.Int(15),
/// 				},
/// 				StartTimeOfDay: &storage.TransferJobScheduleStartTimeOfDayArgs{
/// 					Hours:   pulumi.Int(23),
/// 					Minutes: pulumi.Int(30),
/// 					Seconds: pulumi.Int(0),
/// 					Nanos:   pulumi.Int(0),
/// 				},
/// 				RepeatInterval: pulumi.String("604800s"),
/// 			},
/// 			NotificationConfig: &storage.TransferJobNotificationConfigArgs{
/// 				PubsubTopic: topic.ID(),
/// 				EventTypes: pulumi.StringArray{
/// 					pulumi.String("TRANSFER_OPERATION_SUCCESS"),
/// 					pulumi.String("TRANSFER_OPERATION_FAILED"),
/// 				},
/// 				PayloadFormat: pulumi.String("JSON"),
/// 			},
/// 			LoggingConfig: &storage.TransferJobLoggingConfigArgs{
/// 				LogActions: pulumi.StringArray{
/// 					pulumi.String("COPY"),
/// 					pulumi.String("DELETE"),
/// 				},
/// 				LogActionStates: pulumi.StringArray{
/// 					pulumi.String("SUCCEEDED"),
/// 					pulumi.String("FAILED"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			s3_backup_bucketBucketIAMMember,
/// 			notificationConfig,
/// 		}))
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
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetTransferProjectServiceAccountArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.TopicIAMMember;
/// import com.pulumi.gcp.pubsub.TopicIAMMemberArgs;
/// import com.pulumi.gcp.storage.TransferJob;
/// import com.pulumi.gcp.storage.TransferJobArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobTransferSpecArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobTransferSpecObjectConditionsArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobTransferSpecTransferOptionsArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobTransferSpecAwsS3DataSourceArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobTransferSpecAwsS3DataSourceAwsAccessKeyArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobTransferSpecGcsDataSinkArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobScheduleArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobScheduleScheduleStartDateArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobScheduleScheduleEndDateArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobScheduleStartTimeOfDayArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobNotificationConfigArgs;
/// import com.pulumi.gcp.storage.inputs.TransferJobLoggingConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var default = StorageFunctions.getTransferProjectServiceAccount(GetTransferProjectServiceAccountArgs.builder()
///             .project(project)
///             .build());
///
///         var s3_backup_bucket = new Bucket("s3-backup-bucket", BucketArgs.builder()
///             .name(String.format("%s-backup", awsS3Bucket))
///             .storageClass("NEARLINE")
///             .project(project)
///             .location("US")
///             .build());
///
///         var s3_backup_bucketBucketIAMMember = new BucketIAMMember("s3-backup-bucketBucketIAMMember", BucketIAMMemberArgs.builder()
///             .bucket(s3_backup_bucket.name())
///             .role("roles/storage.admin")
///             .member(String.format("serviceAccount:%s", default_.email()))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(s3_backup_bucket)
///                 .build());
///
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name(pubsubTopicName)
///             .build());
///
///         var notificationConfig = new TopicIAMMember("notificationConfig", TopicIAMMemberArgs.builder()
///             .topic(topic.id())
///             .role("roles/pubsub.publisher")
///             .member(String.format("serviceAccount:%s", default_.email()))
///             .build());
///
///         var s3_bucket_nightly_backup = new TransferJob("s3-bucket-nightly-backup", TransferJobArgs.builder()
///             .description("Nightly backup of S3 bucket")
///             .project(project)
///             .transferSpec(TransferJobTransferSpecArgs.builder()
///                 .objectConditions(TransferJobTransferSpecObjectConditionsArgs.builder()
///                     .maxTimeElapsedSinceLastModification("600s")
///                     .excludePrefixes("requests.gz")
///                     .build())
///                 .transferOptions(TransferJobTransferSpecTransferOptionsArgs.builder()
///                     .deleteObjectsUniqueInSink(false)
///                     .build())
///                 .awsS3DataSource(TransferJobTransferSpecAwsS3DataSourceArgs.builder()
///                     .bucketName(awsS3Bucket)
///                     .awsAccessKey(TransferJobTransferSpecAwsS3DataSourceAwsAccessKeyArgs.builder()
///                         .accessKeyId(awsAccessKey)
///                         .secretAccessKey(awsSecretKey)
///                         .build())
///                     .build())
///                 .gcsDataSink(TransferJobTransferSpecGcsDataSinkArgs.builder()
///                     .bucketName(s3_backup_bucket.name())
///                     .path("foo/bar/")
///                     .build())
///                 .build())
///             .schedule(TransferJobScheduleArgs.builder()
///                 .scheduleStartDate(TransferJobScheduleScheduleStartDateArgs.builder()
///                     .year(2018)
///                     .month(10)
///                     .day(1)
///                     .build())
///                 .scheduleEndDate(TransferJobScheduleScheduleEndDateArgs.builder()
///                     .year(2019)
///                     .month(1)
///                     .day(15)
///                     .build())
///                 .startTimeOfDay(TransferJobScheduleStartTimeOfDayArgs.builder()
///                     .hours(23)
///                     .minutes(30)
///                     .seconds(0)
///                     .nanos(0)
///                     .build())
///                 .repeatInterval("604800s")
///                 .build())
///             .notificationConfig(TransferJobNotificationConfigArgs.builder()
///                 .pubsubTopic(topic.id())
///                 .eventTypes(
///                     "TRANSFER_OPERATION_SUCCESS",
///                     "TRANSFER_OPERATION_FAILED")
///                 .payloadFormat("JSON")
///                 .build())
///             .loggingConfig(TransferJobLoggingConfigArgs.builder()
///                 .logActions(
///                     "COPY",
///                     "DELETE")
///                 .logActionStates(
///                     "SUCCEEDED",
///                     "FAILED")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     s3_backup_bucketBucketIAMMember,
///                     notificationConfig)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   s3-backup-bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: ${awsS3Bucket}-backup
///       storageClass: NEARLINE
///       project: ${project}
///       location: US
///   s3-backup-bucketBucketIAMMember:
///     type: gcp:storage:BucketIAMMember
///     name: s3-backup-bucket
///     properties:
///       bucket: ${["s3-backup-bucket"].name}
///       role: roles/storage.admin
///       member: serviceAccount:${default.email}
///     options:
///       dependsOn:
///         - ${["s3-backup-bucket"]}
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: ${pubsubTopicName}
///   notificationConfig:
///     type: gcp:pubsub:TopicIAMMember
///     name: notification_config
///     properties:
///       topic: ${topic.id}
///       role: roles/pubsub.publisher
///       member: serviceAccount:${default.email}
///   s3-bucket-nightly-backup:
///     type: gcp:storage:TransferJob
///     properties:
///       description: Nightly backup of S3 bucket
///       project: ${project}
///       transferSpec:
///         objectConditions:
///           maxTimeElapsedSinceLastModification: 600s
///           excludePrefixes:
///             - requests.gz
///         transferOptions:
///           deleteObjectsUniqueInSink: false
///         awsS3DataSource:
///           bucketName: ${awsS3Bucket}
///           awsAccessKey:
///             accessKeyId: ${awsAccessKey}
///             secretAccessKey: ${awsSecretKey}
///         gcsDataSink:
///           bucketName: ${["s3-backup-bucket"].name}
///           path: foo/bar/
///       schedule:
///         scheduleStartDate:
///           year: 2018
///           month: 10
///           day: 1
///         scheduleEndDate:
///           year: 2019
///           month: 1
///           day: 15
///         startTimeOfDay:
///           hours: 23
///           minutes: 30
///           seconds: 0
///           nanos: 0
///         repeatInterval: 604800s
///       notificationConfig:
///         pubsubTopic: ${topic.id}
///         eventTypes:
///           - TRANSFER_OPERATION_SUCCESS
///           - TRANSFER_OPERATION_FAILED
///         payloadFormat: JSON
///       loggingConfig:
///         logActions:
///           - COPY
///           - DELETE
///         logActionStates:
///           - SUCCEEDED
///           - FAILED
///     options:
///       dependsOn:
///         - ${["s3-backup-bucketBucketIAMMember"]}
///         - ${notificationConfig}
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:storage:getTransferProjectServiceAccount
///       arguments:
///         project: ${project}
/// ```
///
///
/// ## Import
///
/// Storage Transfer Jobs can be imported using the Transfer Job's `project` and `name` (without the `transferJob/` prefix), e.g.
///
/// * `{{project_id}}/{{name}}`, where `name` is a numeric value.
///
/// When using the `pulumi import` command, Storage Transfer Jobs can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/transferJob:TransferJob default {{project_id}}/123456789
/// ```
class TransferJob extends pulumi.CustomResource {
  /// When the Transfer Job was created.
  late final pulumi.Output<String> creationTime;

  /// When the Transfer Job was deleted.
  late final pulumi.Output<String> deletionTime;

  /// Unique description to identify the Transfer Job.
  late final pulumi.Output<String> description;

  /// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `event_stream` or `schedule` must be set.
  late final pulumi.Output<TransferJobEventStream?> eventStream;

  /// When the Transfer Job was last modified.
  late final pulumi.Output<String> lastModificationTime;

  /// Logging configuration. Structure documented below.
  late final pulumi.Output<TransferJobLoggingConfig?> loggingConfig;

  /// The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  late final pulumi.Output<String> name;

  /// Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  late final pulumi.Output<TransferJobNotificationConfig?> notificationConfig;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Replication specification. Structure documented below. User should not configure `schedule`, `event_stream` with this argument. One of `transfer_spec`, or `replication_spec` must be specified.
  ///
  /// - - -
  late final pulumi.Output<TransferJobReplicationSpec?> replicationSpec;

  /// Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `event_stream` must be set.
  late final pulumi.Output<TransferJobSchedule?> schedule;

  /// The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  late final pulumi.Output<String?> serviceAccount;

  /// Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  late final pulumi.Output<String?> status;

  /// Transfer specification. Structure documented below. One of `transfer_spec`, or `replication_spec` can be specified.
  late final pulumi.Output<TransferJobTransferSpec?> transferSpec;

  /// Creates a new [TransferJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransferJob]. {@macro pulumi_storage_transfer_job_transfer_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransferJob(
    String name, {
    TransferJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:storage/transferJob:TransferJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.creationTime = registerOutput<String>('creationTime');
    this.deletionTime = registerOutput<String>('deletionTime');
    this.description = registerOutput<String>('description');
    this.eventStream = registerOutput<TransferJobEventStream?>('eventStream');
    this.lastModificationTime = registerOutput<String>('lastModificationTime');
    this.loggingConfig = registerOutput<TransferJobLoggingConfig?>(
      'loggingConfig',
    );
    this.name = registerOutput<String>('name');
    this.notificationConfig = registerOutput<TransferJobNotificationConfig?>(
      'notificationConfig',
    );
    this.project = registerOutput<String>('project');
    this.replicationSpec = registerOutput<TransferJobReplicationSpec?>(
      'replicationSpec',
    );
    this.schedule = registerOutput<TransferJobSchedule?>('schedule');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.status = registerOutput<String?>('status');
    this.transferSpec = registerOutput<TransferJobTransferSpec?>(
      'transferSpec',
    );
  }
}
