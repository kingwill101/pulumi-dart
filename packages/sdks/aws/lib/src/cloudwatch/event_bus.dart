import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_bus_args.dart';
import 'event_bus_dead_letter_config.dart';
import 'event_bus_log_config.dart';
import 'event_bus_state.dart';

/// Provides an EventBridge event bus resource.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
/// ### Basic Usages
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const messenger = new aws.cloudwatch.EventBus("messenger", {name: "chat-messages"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// messenger = aws.cloudwatch.EventBus("messenger", name="chat-messages")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var messenger = new Aws.CloudWatch.EventBus("messenger", new()
///     {
///         Name = "chat-messages",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewEventBus(ctx, "messenger", &cloudwatch.EventBusArgs{
/// 			Name: pulumi.String("chat-messages"),
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
/// import com.pulumi.aws.cloudwatch.EventBus;
/// import com.pulumi.aws.cloudwatch.EventBusArgs;
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
///         var messenger = new EventBus("messenger", EventBusArgs.builder()
///             .name("chat-messages")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   messenger:
///     type: aws:cloudwatch:EventBus
///     properties:
///       name: chat-messages
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplepartner = aws.cloudwatch.getEventSource({
///     namePrefix: "aws.partner/examplepartner.com",
/// });
/// const examplepartnerEventBus = new aws.cloudwatch.EventBus("examplepartner", {
///     name: examplepartner.then(examplepartner => examplepartner.name),
///     description: "Event bus for example partner events",
///     eventSourceName: examplepartner.then(examplepartner => examplepartner.name),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplepartner = aws.cloudwatch.get_event_source(name_prefix="aws.partner/examplepartner.com")
/// examplepartner_event_bus = aws.cloudwatch.EventBus("examplepartner",
///     name=examplepartner.name,
///     description="Event bus for example partner events",
///     event_source_name=examplepartner.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplepartner = Aws.CloudWatch.GetEventSource.Invoke(new()
///     {
///         NamePrefix = "aws.partner/examplepartner.com",
///     });
///
///     var examplepartnerEventBus = new Aws.CloudWatch.EventBus("examplepartner", new()
///     {
///         Name = examplepartner.Apply(getEventSourceResult => getEventSourceResult.Name),
///         Description = "Event bus for example partner events",
///         EventSourceName = examplepartner.Apply(getEventSourceResult => getEventSourceResult.Name),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		examplepartner, err := cloudwatch.GetEventSource(ctx, &cloudwatch.GetEventSourceArgs{
/// 			NamePrefix: pulumi.StringRef("aws.partner/examplepartner.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventBus(ctx, "examplepartner", &cloudwatch.EventBusArgs{
/// 			Name:            pulumi.String(examplepartner.Name),
/// 			Description:     pulumi.String("Event bus for example partner events"),
/// 			EventSourceName: pulumi.String(examplepartner.Name),
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
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetEventSourceArgs;
/// import com.pulumi.aws.cloudwatch.EventBus;
/// import com.pulumi.aws.cloudwatch.EventBusArgs;
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
///         final var examplepartner = CloudwatchFunctions.getEventSource(GetEventSourceArgs.builder()
///             .namePrefix("aws.partner/examplepartner.com")
///             .build());
///
///         var examplepartnerEventBus = new EventBus("examplepartnerEventBus", EventBusArgs.builder()
///             .name(examplepartner.name())
///             .description("Event bus for example partner events")
///             .eventSourceName(examplepartner.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplepartnerEventBus:
///     type: aws:cloudwatch:EventBus
///     name: examplepartner
///     properties:
///       name: ${examplepartner.name}
///       description: Event bus for example partner events
///       eventSourceName: ${examplepartner.name}
/// variables:
///   examplepartner:
///     fn::invoke:
///       function: aws:cloudwatch:getEventSource
///       arguments:
///         namePrefix: aws.partner/examplepartner.com
/// ```
///
///
/// ### Logging to CloudWatch Logs, S3, and Data Firehose
///
/// See [Configuring logs for Amazon EventBridge event buses](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus-logs.html) for more details.
///
/// #### Required Resources
///
/// * EventBridge Event Bus with `log_config` configured
/// * Log destinations:
///
/// * CloudWatch Logs log group
/// * S3 bucket
/// * Data Firehose delivery stream
///
/// * Resource-based policy or tagging for the service-linked role:
///
/// * CloudWatch Logs log group - `aws.cloudwatch.LogResourcePolicy` to allow `delivery.logs.amazonaws.com` to put logs into the log group
/// * S3 bucket - `aws.s3.BucketPolicy` to allow `delivery.logs.amazonaws.com` to put logs into the bucket
/// * Data Firehose delivery stream - tagging the delivery stream with `LogDeliveryEnabled = "true"` to allow the service-linked role `AWSServiceRoleForLogDelivery` to deliver logs
///
/// * CloudWatch Logs Delivery:
///
/// * `aws.cloudwatch.LogDeliverySource` for each log type (INFO, ERROR, TRACE)
/// * `aws.cloudwatch.LogDeliveryDestination` for the log destination (S3 bucket, CloudWatch Logs log group, or Data Firehose delivery stream)
/// * `aws.cloudwatch.LogDelivery` to link each log type’s delivery source to the delivery destination
///
/// ### Example Usage
///
/// The following example demonstrates how to set up logging for an EventBridge event bus to all three destinations: CloudWatch Logs, S3, and Data Firehose.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.cloudwatch.EventBus("example", {
///     name: "example-event-bus",
///     logConfig: {
///         includeDetail: "FULL",
///         level: "TRACE",
///     },
/// });
/// // CloudWatch Log Delivery Sources for INFO, ERROR, and TRACE logs
/// const infoLogs = new aws.cloudwatch.LogDeliverySource("info_logs", {
///     name: pulumi.interpolate`EventBusSource-${example.name}-INFO_LOGS`,
///     logType: "INFO_LOGS",
///     resourceArn: example.arn,
/// });
/// const errorLogs = new aws.cloudwatch.LogDeliverySource("error_logs", {
///     name: pulumi.interpolate`EventBusSource-${example.name}-ERROR_LOGS`,
///     logType: "ERROR_LOGS",
///     resourceArn: example.arn,
/// });
/// const traceLogs = new aws.cloudwatch.LogDeliverySource("trace_logs", {
///     name: pulumi.interpolate`EventBusSource-${example.name}-TRACE_LOGS`,
///     logType: "TRACE_LOGS",
///     resourceArn: example.arn,
/// });
/// // Logging to S3 Bucket
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example-event-bus-logs"});
/// const bucket = pulumi.all([exampleBucket.arn, current, current, infoLogs.arn, errorLogs.arn, traceLogs.arn]).apply(([exampleBucketArn, current, current1, infoLogsArn, errorLogsArn, traceLogsArn]) => aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["delivery.logs.amazonaws.com"],
///         }],
///         actions: ["s3:PutObject"],
///         resources: [`${exampleBucketArn}/AWSLogs/${current.accountId}/EventBusLogs/*`],
///         conditions: [
///             {
///                 test: "StringEquals",
///                 variable: "s3:x-amz-acl",
///                 values: ["bucket-owner-full-control"],
///             },
///             {
///                 test: "StringEquals",
///                 variable: "aws:SourceAccount",
///                 values: [current1.accountId],
///             },
///             {
///                 test: "ArnLike",
///                 variable: "aws:SourceArn",
///                 values: [
///                     infoLogsArn,
///                     errorLogsArn,
///                     traceLogsArn,
///                 ],
///             },
///         ],
///     }],
/// }));
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
///     bucket: exampleBucket.bucket,
///     policy: bucket.apply(bucket => bucket.json),
/// });
/// const s3 = new aws.cloudwatch.LogDeliveryDestination("s3", {
///     name: pulumi.interpolate`EventsDeliveryDestination-${example.name}-S3`,
///     deliveryDestinationConfiguration: {
///         destinationResourceArn: exampleBucket.arn,
///     },
/// });
/// const s3InfoLogs = new aws.cloudwatch.LogDelivery("s3_info_logs", {
///     deliveryDestinationArn: s3.arn,
///     deliverySourceName: infoLogs.name,
/// });
/// const s3ErrorLogs = new aws.cloudwatch.LogDelivery("s3_error_logs", {
///     deliveryDestinationArn: s3.arn,
///     deliverySourceName: errorLogs.name,
/// }, {
///     dependsOn: [s3InfoLogs],
/// });
/// const s3TraceLogs = new aws.cloudwatch.LogDelivery("s3_trace_logs", {
///     deliveryDestinationArn: s3.arn,
///     deliverySourceName: traceLogs.name,
/// }, {
///     dependsOn: [s3ErrorLogs],
/// });
/// // Logging to CloudWatch Log Group
/// const eventBusLogs = new aws.cloudwatch.LogGroup("event_bus_logs", {name: pulumi.interpolate`/aws/vendedlogs/events/event-bus/${example.name}`});
/// const cwlogs = pulumi.all([eventBusLogs.arn, current, infoLogs.arn, errorLogs.arn, traceLogs.arn]).apply(([eventBusLogsArn, current, infoLogsArn, errorLogsArn, traceLogsArn]) => aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["delivery.logs.amazonaws.com"],
///         }],
///         actions: [
///             "logs:CreateLogStream",
///             "logs:PutLogEvents",
///         ],
///         resources: [`${eventBusLogsArn}:log-stream:*`],
///         conditions: [
///             {
///                 test: "StringEquals",
///                 variable: "aws:SourceAccount",
///                 values: [current.accountId],
///             },
///             {
///                 test: "ArnLike",
///                 variable: "aws:SourceArn",
///                 values: [
///                     infoLogsArn,
///                     errorLogsArn,
///                     traceLogsArn,
///                 ],
///             },
///         ],
///     }],
/// }));
/// const exampleLogResourcePolicy = new aws.cloudwatch.LogResourcePolicy("example", {
///     policyDocument: cwlogs.apply(cwlogs => cwlogs.json),
///     policyName: pulumi.interpolate`AWSLogDeliveryWrite-${example.name}`,
/// });
/// const cwlogsLogDeliveryDestination = new aws.cloudwatch.LogDeliveryDestination("cwlogs", {
///     name: pulumi.interpolate`EventsDeliveryDestination-${example.name}-CWLogs`,
///     deliveryDestinationConfiguration: {
///         destinationResourceArn: eventBusLogs.arn,
///     },
/// });
/// const cwlogsInfoLogs = new aws.cloudwatch.LogDelivery("cwlogs_info_logs", {
///     deliveryDestinationArn: cwlogsLogDeliveryDestination.arn,
///     deliverySourceName: infoLogs.name,
/// }, {
///     dependsOn: [s3InfoLogs],
/// });
/// const cwlogsErrorLogs = new aws.cloudwatch.LogDelivery("cwlogs_error_logs", {
///     deliveryDestinationArn: cwlogsLogDeliveryDestination.arn,
///     deliverySourceName: errorLogs.name,
/// }, {
///     dependsOn: [
///         s3ErrorLogs,
///         cwlogsInfoLogs,
///     ],
/// });
/// const cwlogsTraceLogs = new aws.cloudwatch.LogDelivery("cwlogs_trace_logs", {
///     deliveryDestinationArn: cwlogsLogDeliveryDestination.arn,
///     deliverySourceName: traceLogs.name,
/// }, {
///     dependsOn: [
///         s3TraceLogs,
///         cwlogsErrorLogs,
///     ],
/// });
/// // Logging to Data Firehose
/// const cloudfrontLogs = new aws.kinesis.FirehoseDeliveryStream("cloudfront_logs", {tags: {
///     LogDeliveryEnabled: "true",
/// }});
/// const firehose = new aws.cloudwatch.LogDeliveryDestination("firehose", {
///     name: pulumi.interpolate`EventsDeliveryDestination-${example.name}-Firehose`,
///     deliveryDestinationConfiguration: {
///         destinationResourceArn: cloudfrontLogs.arn,
///     },
/// });
/// const firehoseInfoLogs = new aws.cloudwatch.LogDelivery("firehose_info_logs", {
///     deliveryDestinationArn: firehose.arn,
///     deliverySourceName: infoLogs.name,
/// }, {
///     dependsOn: [cwlogsInfoLogs],
/// });
/// const firehoseErrorLogs = new aws.cloudwatch.LogDelivery("firehose_error_logs", {
///     deliveryDestinationArn: firehose.arn,
///     deliverySourceName: errorLogs.name,
/// }, {
///     dependsOn: [
///         cwlogsErrorLogs,
///         firehoseInfoLogs,
///     ],
/// });
/// const firehoseTraceLogs = new aws.cloudwatch.LogDelivery("firehose_trace_logs", {
///     deliveryDestinationArn: firehose.arn,
///     deliverySourceName: traceLogs.name,
/// }, {
///     dependsOn: [
///         cwlogsTraceLogs,
///         firehoseErrorLogs,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.cloudwatch.EventBus("example",
///     name="example-event-bus",
///     log_config={
///         "include_detail": "FULL",
///         "level": "TRACE",
///     })
/// # CloudWatch Log Delivery Sources for INFO, ERROR, and TRACE logs
/// info_logs = aws.cloudwatch.LogDeliverySource("info_logs",
///     name=example.name.apply(lambda name: f"EventBusSource-{name}-INFO_LOGS"),
///     log_type="INFO_LOGS",
///     resource_arn=example.arn)
/// error_logs = aws.cloudwatch.LogDeliverySource("error_logs",
///     name=example.name.apply(lambda name: f"EventBusSource-{name}-ERROR_LOGS"),
///     log_type="ERROR_LOGS",
///     resource_arn=example.arn)
/// trace_logs = aws.cloudwatch.LogDeliverySource("trace_logs",
///     name=example.name.apply(lambda name: f"EventBusSource-{name}-TRACE_LOGS"),
///     log_type="TRACE_LOGS",
///     resource_arn=example.arn)
/// # Logging to S3 Bucket
/// example_bucket = aws.s3.Bucket("example", bucket="example-event-bus-logs")
/// bucket = pulumi.Output.all(
///     exampleBucketArn=example_bucket.arn,
///     infoLogsArn=info_logs.arn,
///     errorLogsArn=error_logs.arn,
///     traceLogsArn=trace_logs.arn
/// ).apply(lambda resolved_outputs: aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["delivery.logs.amazonaws.com"],
///     }],
///     "actions": ["s3:PutObject"],
///     "resources": [f"{resolved_outputs['exampleBucketArn']}/AWSLogs/{current.account_id}/EventBusLogs/*"],
///     "conditions": [
///         {
///             "test": "StringEquals",
///             "variable": "s3:x-amz-acl",
///             "values": ["bucket-owner-full-control"],
///         },
///         {
///             "test": "StringEquals",
///             "variable": "aws:SourceAccount",
///             "values": [current.account_id],
///         },
///         {
///             "test": "ArnLike",
///             "variable": "aws:SourceArn",
///             "values": [
///                 resolved_outputs['infoLogsArn'],
///                 resolved_outputs['errorLogsArn'],
///                 resolved_outputs['traceLogsArn'],
///             ],
///         },
///     ],
/// }]))
///
/// example_bucket_policy = aws.s3.BucketPolicy("example",
///     bucket=example_bucket.bucket,
///     policy=bucket.json)
/// s3 = aws.cloudwatch.LogDeliveryDestination("s3",
///     name=example.name.apply(lambda name: f"EventsDeliveryDestination-{name}-S3"),
///     delivery_destination_configuration={
///         "destination_resource_arn": example_bucket.arn,
///     })
/// s3_info_logs = aws.cloudwatch.LogDelivery("s3_info_logs",
///     delivery_destination_arn=s3.arn,
///     delivery_source_name=info_logs.name)
/// s3_error_logs = aws.cloudwatch.LogDelivery("s3_error_logs",
///     delivery_destination_arn=s3.arn,
///     delivery_source_name=error_logs.name,
///     opts = pulumi.ResourceOptions(depends_on=[s3_info_logs]))
/// s3_trace_logs = aws.cloudwatch.LogDelivery("s3_trace_logs",
///     delivery_destination_arn=s3.arn,
///     delivery_source_name=trace_logs.name,
///     opts = pulumi.ResourceOptions(depends_on=[s3_error_logs]))
/// # Logging to CloudWatch Log Group
/// event_bus_logs = aws.cloudwatch.LogGroup("event_bus_logs", name=example.name.apply(lambda name: f"/aws/vendedlogs/events/event-bus/{name}"))
/// cwlogs = pulumi.Output.all(
///     eventBusLogsArn=event_bus_logs.arn,
///     infoLogsArn=info_logs.arn,
///     errorLogsArn=error_logs.arn,
///     traceLogsArn=trace_logs.arn
/// ).apply(lambda resolved_outputs: aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["delivery.logs.amazonaws.com"],
///     }],
///     "actions": [
///         "logs:CreateLogStream",
///         "logs:PutLogEvents",
///     ],
///     "resources": [f"{resolved_outputs['eventBusLogsArn']}:log-stream:*"],
///     "conditions": [
///         {
///             "test": "StringEquals",
///             "variable": "aws:SourceAccount",
///             "values": [current.account_id],
///         },
///         {
///             "test": "ArnLike",
///             "variable": "aws:SourceArn",
///             "values": [
///                 resolved_outputs['infoLogsArn'],
///                 resolved_outputs['errorLogsArn'],
///                 resolved_outputs['traceLogsArn'],
///             ],
///         },
///     ],
/// }]))
///
/// example_log_resource_policy = aws.cloudwatch.LogResourcePolicy("example",
///     policy_document=cwlogs.json,
///     policy_name=example.name.apply(lambda name: f"AWSLogDeliveryWrite-{name}"))
/// cwlogs_log_delivery_destination = aws.cloudwatch.LogDeliveryDestination("cwlogs",
///     name=example.name.apply(lambda name: f"EventsDeliveryDestination-{name}-CWLogs"),
///     delivery_destination_configuration={
///         "destination_resource_arn": event_bus_logs.arn,
///     })
/// cwlogs_info_logs = aws.cloudwatch.LogDelivery("cwlogs_info_logs",
///     delivery_destination_arn=cwlogs_log_delivery_destination.arn,
///     delivery_source_name=info_logs.name,
///     opts = pulumi.ResourceOptions(depends_on=[s3_info_logs]))
/// cwlogs_error_logs = aws.cloudwatch.LogDelivery("cwlogs_error_logs",
///     delivery_destination_arn=cwlogs_log_delivery_destination.arn,
///     delivery_source_name=error_logs.name,
///     opts = pulumi.ResourceOptions(depends_on=[
///             s3_error_logs,
///             cwlogs_info_logs,
///         ]))
/// cwlogs_trace_logs = aws.cloudwatch.LogDelivery("cwlogs_trace_logs",
///     delivery_destination_arn=cwlogs_log_delivery_destination.arn,
///     delivery_source_name=trace_logs.name,
///     opts = pulumi.ResourceOptions(depends_on=[
///             s3_trace_logs,
///             cwlogs_error_logs,
///         ]))
/// # Logging to Data Firehose
/// cloudfront_logs = aws.kinesis.FirehoseDeliveryStream("cloudfront_logs", tags={
///     "LogDeliveryEnabled": "true",
/// })
/// firehose = aws.cloudwatch.LogDeliveryDestination("firehose",
///     name=example.name.apply(lambda name: f"EventsDeliveryDestination-{name}-Firehose"),
///     delivery_destination_configuration={
///         "destination_resource_arn": cloudfront_logs.arn,
///     })
/// firehose_info_logs = aws.cloudwatch.LogDelivery("firehose_info_logs",
///     delivery_destination_arn=firehose.arn,
///     delivery_source_name=info_logs.name,
///     opts = pulumi.ResourceOptions(depends_on=[cwlogs_info_logs]))
/// firehose_error_logs = aws.cloudwatch.LogDelivery("firehose_error_logs",
///     delivery_destination_arn=firehose.arn,
///     delivery_source_name=error_logs.name,
///     opts = pulumi.ResourceOptions(depends_on=[
///             cwlogs_error_logs,
///             firehose_info_logs,
///         ]))
/// firehose_trace_logs = aws.cloudwatch.LogDelivery("firehose_trace_logs",
///     delivery_destination_arn=firehose.arn,
///     delivery_source_name=trace_logs.name,
///     opts = pulumi.ResourceOptions(depends_on=[
///             cwlogs_trace_logs,
///             firehose_error_logs,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.CloudWatch.EventBus("example", new()
///     {
///         Name = "example-event-bus",
///         LogConfig = new Aws.CloudWatch.Inputs.EventBusLogConfigArgs
///         {
///             IncludeDetail = "FULL",
///             Level = "TRACE",
///         },
///     });
///
///     // CloudWatch Log Delivery Sources for INFO, ERROR, and TRACE logs
///     var infoLogs = new Aws.CloudWatch.LogDeliverySource("info_logs", new()
///     {
///         Name = example.Name.Apply(name => $"EventBusSource-{name}-INFO_LOGS"),
///         LogType = "INFO_LOGS",
///         ResourceArn = example.Arn,
///     });
///
///     var errorLogs = new Aws.CloudWatch.LogDeliverySource("error_logs", new()
///     {
///         Name = example.Name.Apply(name => $"EventBusSource-{name}-ERROR_LOGS"),
///         LogType = "ERROR_LOGS",
///         ResourceArn = example.Arn,
///     });
///
///     var traceLogs = new Aws.CloudWatch.LogDeliverySource("trace_logs", new()
///     {
///         Name = example.Name.Apply(name => $"EventBusSource-{name}-TRACE_LOGS"),
///         LogType = "TRACE_LOGS",
///         ResourceArn = example.Arn,
///     });
///
///     // Logging to S3 Bucket
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-event-bus-logs",
///     });
///
///     var bucket = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "delivery.logs.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{exampleBucket.Arn}/AWSLogs/{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}/EventBusLogs/*",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "s3:x-amz-acl",
///                         Values = new[]
///                         {
///                             "bucket-owner-full-control",
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:SourceAccount",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
///                     {
///                         Test = "ArnLike",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             infoLogs.Arn,
///                             errorLogs.Arn,
///                             traceLogs.Arn,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
///     {
///         Bucket = exampleBucket.BucketName,
///         Policy = bucket.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var s3 = new Aws.CloudWatch.LogDeliveryDestination("s3", new()
///     {
///         Name = example.Name.Apply(name => $"EventsDeliveryDestination-{name}-S3"),
///         DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
///         {
///             DestinationResourceArn = exampleBucket.Arn,
///         },
///     });
///
///     var s3InfoLogs = new Aws.CloudWatch.LogDelivery("s3_info_logs", new()
///     {
///         DeliveryDestinationArn = s3.Arn,
///         DeliverySourceName = infoLogs.Name,
///     });
///
///     var s3ErrorLogs = new Aws.CloudWatch.LogDelivery("s3_error_logs", new()
///     {
///         DeliveryDestinationArn = s3.Arn,
///         DeliverySourceName = errorLogs.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             s3InfoLogs,
///         },
///     });
///
///     var s3TraceLogs = new Aws.CloudWatch.LogDelivery("s3_trace_logs", new()
///     {
///         DeliveryDestinationArn = s3.Arn,
///         DeliverySourceName = traceLogs.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             s3ErrorLogs,
///         },
///     });
///
///     // Logging to CloudWatch Log Group
///     var eventBusLogs = new Aws.CloudWatch.LogGroup("event_bus_logs", new()
///     {
///         Name = example.Name.Apply(name => $"/aws/vendedlogs/events/event-bus/{name}"),
///     });
///
///     var cwlogs = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "delivery.logs.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                 },
///                 Resources = new[]
///                 {
///                     $"{eventBusLogs.Arn}:log-stream:*",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "aws:SourceAccount",
///                         Values = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                     },
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
///                     {
///                         Test = "ArnLike",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             infoLogs.Arn,
///                             errorLogs.Arn,
///                             traceLogs.Arn,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleLogResourcePolicy = new Aws.CloudWatch.LogResourcePolicy("example", new()
///     {
///         PolicyDocument = cwlogs.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         PolicyName = example.Name.Apply(name => $"AWSLogDeliveryWrite-{name}"),
///     });
///
///     var cwlogsLogDeliveryDestination = new Aws.CloudWatch.LogDeliveryDestination("cwlogs", new()
///     {
///         Name = example.Name.Apply(name => $"EventsDeliveryDestination-{name}-CWLogs"),
///         DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
///         {
///             DestinationResourceArn = eventBusLogs.Arn,
///         },
///     });
///
///     var cwlogsInfoLogs = new Aws.CloudWatch.LogDelivery("cwlogs_info_logs", new()
///     {
///         DeliveryDestinationArn = cwlogsLogDeliveryDestination.Arn,
///         DeliverySourceName = infoLogs.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             s3InfoLogs,
///         },
///     });
///
///     var cwlogsErrorLogs = new Aws.CloudWatch.LogDelivery("cwlogs_error_logs", new()
///     {
///         DeliveryDestinationArn = cwlogsLogDeliveryDestination.Arn,
///         DeliverySourceName = errorLogs.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             s3ErrorLogs,
///             cwlogsInfoLogs,
///         },
///     });
///
///     var cwlogsTraceLogs = new Aws.CloudWatch.LogDelivery("cwlogs_trace_logs", new()
///     {
///         DeliveryDestinationArn = cwlogsLogDeliveryDestination.Arn,
///         DeliverySourceName = traceLogs.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             s3TraceLogs,
///             cwlogsErrorLogs,
///         },
///     });
///
///     // Logging to Data Firehose
///     var cloudfrontLogs = new Aws.Kinesis.FirehoseDeliveryStream("cloudfront_logs", new()
///     {
///         Tags =
///         {
///             { "LogDeliveryEnabled", "true" },
///         },
///     });
///
///     var firehose = new Aws.CloudWatch.LogDeliveryDestination("firehose", new()
///     {
///         Name = example.Name.Apply(name => $"EventsDeliveryDestination-{name}-Firehose"),
///         DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
///         {
///             DestinationResourceArn = cloudfrontLogs.Arn,
///         },
///     });
///
///     var firehoseInfoLogs = new Aws.CloudWatch.LogDelivery("firehose_info_logs", new()
///     {
///         DeliveryDestinationArn = firehose.Arn,
///         DeliverySourceName = infoLogs.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cwlogsInfoLogs,
///         },
///     });
///
///     var firehoseErrorLogs = new Aws.CloudWatch.LogDelivery("firehose_error_logs", new()
///     {
///         DeliveryDestinationArn = firehose.Arn,
///         DeliverySourceName = errorLogs.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cwlogsErrorLogs,
///             firehoseInfoLogs,
///         },
///     });
///
///     var firehoseTraceLogs = new Aws.CloudWatch.LogDelivery("firehose_trace_logs", new()
///     {
///         DeliveryDestinationArn = firehose.Arn,
///         DeliverySourceName = traceLogs.Name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cwlogsTraceLogs,
///             firehoseErrorLogs,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := cloudwatch.NewEventBus(ctx, "example", &cloudwatch.EventBusArgs{
/// Name: pulumi.String("example-event-bus"),
/// LogConfig: &cloudwatch.EventBusLogConfigArgs{
/// IncludeDetail: pulumi.String("FULL"),
/// Level: pulumi.String("TRACE"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // CloudWatch Log Delivery Sources for INFO, ERROR, and TRACE logs
/// infoLogs, err := cloudwatch.NewLogDeliverySource(ctx, "info_logs", &cloudwatch.LogDeliverySourceArgs{
/// Name: example.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("EventBusSource-%v-INFO_LOGS", name), nil
/// }).(pulumi.StringOutput),
/// LogType: pulumi.String("INFO_LOGS"),
/// ResourceArn: example.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// errorLogs, err := cloudwatch.NewLogDeliverySource(ctx, "error_logs", &cloudwatch.LogDeliverySourceArgs{
/// Name: example.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("EventBusSource-%v-ERROR_LOGS", name), nil
/// }).(pulumi.StringOutput),
/// LogType: pulumi.String("ERROR_LOGS"),
/// ResourceArn: example.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// traceLogs, err := cloudwatch.NewLogDeliverySource(ctx, "trace_logs", &cloudwatch.LogDeliverySourceArgs{
/// Name: example.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("EventBusSource-%v-TRACE_LOGS", name), nil
/// }).(pulumi.StringOutput),
/// LogType: pulumi.String("TRACE_LOGS"),
/// ResourceArn: example.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// // Logging to S3 Bucket
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example-event-bus-logs"),
/// })
/// if err != nil {
/// return err
/// }
/// bucket := pulumi.All(exampleBucket.Arn,infoLogs.Arn,errorLogs.Arn,traceLogs.Arn).ApplyT(func(_args []interface{}) (iam.GetPolicyDocumentResult, error) {
/// exampleBucketArn := _args[0].(string)
/// infoLogsArn := _args[1].(string)
/// errorLogsArn := _args[2].(string)
/// traceLogsArn := _args[3].(string)
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "delivery.logs.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "s3:PutObject",
/// },
/// Resources: []string{
/// fmt.Sprintf("%v/AWSLogs/%v/EventBusLogs/*", exampleBucketArn, current.AccountId),
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Variable: "s3:x-amz-acl",
/// Values: []string{
/// "bucket-owner-full-control",
/// },
/// },
/// {
/// Test: "StringEquals",
/// Variable: "aws:SourceAccount",
/// Values: interface{}{
/// current.AccountId,
/// },
/// },
/// {
/// Test: "ArnLike",
/// Variable: "aws:SourceArn",
/// Values: []string{
/// infoLogsArn,
/// errorLogsArn,
/// traceLogsArn,
/// },
/// },
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// Bucket: exampleBucket.Bucket,
/// Policy: pulumi.String(bucket.ApplyT(func(bucket iam.GetPolicyDocumentResult) (*string, error) {
/// return &bucket.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// s3, err := cloudwatch.NewLogDeliveryDestination(ctx, "s3", &cloudwatch.LogDeliveryDestinationArgs{
/// Name: example.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("EventsDeliveryDestination-%v-S3", name), nil
/// }).(pulumi.StringOutput),
/// DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// DestinationResourceArn: exampleBucket.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// s3InfoLogs, err := cloudwatch.NewLogDelivery(ctx, "s3_info_logs", &cloudwatch.LogDeliveryArgs{
/// DeliveryDestinationArn: s3.Arn,
/// DeliverySourceName: infoLogs.Name,
/// })
/// if err != nil {
/// return err
/// }
/// s3ErrorLogs, err := cloudwatch.NewLogDelivery(ctx, "s3_error_logs", &cloudwatch.LogDeliveryArgs{
/// DeliveryDestinationArn: s3.Arn,
/// DeliverySourceName: errorLogs.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// s3InfoLogs,
/// }))
/// if err != nil {
/// return err
/// }
/// s3TraceLogs, err := cloudwatch.NewLogDelivery(ctx, "s3_trace_logs", &cloudwatch.LogDeliveryArgs{
/// DeliveryDestinationArn: s3.Arn,
/// DeliverySourceName: traceLogs.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// s3ErrorLogs,
/// }))
/// if err != nil {
/// return err
/// }
/// // Logging to CloudWatch Log Group
/// eventBusLogs, err := cloudwatch.NewLogGroup(ctx, "event_bus_logs", &cloudwatch.LogGroupArgs{
/// Name: example.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("/aws/vendedlogs/events/event-bus/%v", name), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// cwlogs := pulumi.All(eventBusLogs.Arn,infoLogs.Arn,errorLogs.Arn,traceLogs.Arn).ApplyT(func(_args []interface{}) (iam.GetPolicyDocumentResult, error) {
/// eventBusLogsArn := _args[0].(string)
/// infoLogsArn := _args[1].(string)
/// errorLogsArn := _args[2].(string)
/// traceLogsArn := _args[3].(string)
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "delivery.logs.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "logs:CreateLogStream",
/// "logs:PutLogEvents",
/// },
/// Resources: []string{
/// fmt.Sprintf("%v:log-stream:*", eventBusLogsArn),
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Variable: "aws:SourceAccount",
/// Values: interface{}{
/// current.AccountId,
/// },
/// },
/// {
/// Test: "ArnLike",
/// Variable: "aws:SourceArn",
/// Values: []string{
/// infoLogsArn,
/// errorLogsArn,
/// traceLogsArn,
/// },
/// },
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = cloudwatch.NewLogResourcePolicy(ctx, "example", &cloudwatch.LogResourcePolicyArgs{
/// PolicyDocument: pulumi.String(cwlogs.ApplyT(func(cwlogs iam.GetPolicyDocumentResult) (*string, error) {
/// return &cwlogs.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// PolicyName: example.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("AWSLogDeliveryWrite-%v", name), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// cwlogsLogDeliveryDestination, err := cloudwatch.NewLogDeliveryDestination(ctx, "cwlogs", &cloudwatch.LogDeliveryDestinationArgs{
/// Name: example.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("EventsDeliveryDestination-%v-CWLogs", name), nil
/// }).(pulumi.StringOutput),
/// DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// DestinationResourceArn: eventBusLogs.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// cwlogsInfoLogs, err := cloudwatch.NewLogDelivery(ctx, "cwlogs_info_logs", &cloudwatch.LogDeliveryArgs{
/// DeliveryDestinationArn: cwlogsLogDeliveryDestination.Arn,
/// DeliverySourceName: infoLogs.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// s3InfoLogs,
/// }))
/// if err != nil {
/// return err
/// }
/// cwlogsErrorLogs, err := cloudwatch.NewLogDelivery(ctx, "cwlogs_error_logs", &cloudwatch.LogDeliveryArgs{
/// DeliveryDestinationArn: cwlogsLogDeliveryDestination.Arn,
/// DeliverySourceName: errorLogs.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// s3ErrorLogs,
/// cwlogsInfoLogs,
/// }))
/// if err != nil {
/// return err
/// }
/// cwlogsTraceLogs, err := cloudwatch.NewLogDelivery(ctx, "cwlogs_trace_logs", &cloudwatch.LogDeliveryArgs{
/// DeliveryDestinationArn: cwlogsLogDeliveryDestination.Arn,
/// DeliverySourceName: traceLogs.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// s3TraceLogs,
/// cwlogsErrorLogs,
/// }))
/// if err != nil {
/// return err
/// }
/// // Logging to Data Firehose
/// cloudfrontLogs, err := kinesis.NewFirehoseDeliveryStream(ctx, "cloudfront_logs", &kinesis.FirehoseDeliveryStreamArgs{
/// Tags: pulumi.StringMap{
/// "LogDeliveryEnabled": pulumi.String("true"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// firehose, err := cloudwatch.NewLogDeliveryDestination(ctx, "firehose", &cloudwatch.LogDeliveryDestinationArgs{
/// Name: example.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("EventsDeliveryDestination-%v-Firehose", name), nil
/// }).(pulumi.StringOutput),
/// DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// DestinationResourceArn: cloudfrontLogs.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// firehoseInfoLogs, err := cloudwatch.NewLogDelivery(ctx, "firehose_info_logs", &cloudwatch.LogDeliveryArgs{
/// DeliveryDestinationArn: firehose.Arn,
/// DeliverySourceName: infoLogs.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// cwlogsInfoLogs,
/// }))
/// if err != nil {
/// return err
/// }
/// firehoseErrorLogs, err := cloudwatch.NewLogDelivery(ctx, "firehose_error_logs", &cloudwatch.LogDeliveryArgs{
/// DeliveryDestinationArn: firehose.Arn,
/// DeliverySourceName: errorLogs.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// cwlogsErrorLogs,
/// firehoseInfoLogs,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewLogDelivery(ctx, "firehose_trace_logs", &cloudwatch.LogDeliveryArgs{
/// DeliveryDestinationArn: firehose.Arn,
/// DeliverySourceName: traceLogs.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// cwlogsTraceLogs,
/// firehoseErrorLogs,
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.cloudwatch.EventBus;
/// import com.pulumi.aws.cloudwatch.EventBusArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventBusLogConfigArgs;
/// import com.pulumi.aws.cloudwatch.LogDeliverySource;
/// import com.pulumi.aws.cloudwatch.LogDeliverySourceArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestination;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestinationArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs;
/// import com.pulumi.aws.cloudwatch.LogDelivery;
/// import com.pulumi.aws.cloudwatch.LogDeliveryArgs;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new EventBus("example", EventBusArgs.builder()
///             .name("example-event-bus")
///             .logConfig(EventBusLogConfigArgs.builder()
///                 .includeDetail("FULL")
///                 .level("TRACE")
///                 .build())
///             .build());
///
///         // CloudWatch Log Delivery Sources for INFO, ERROR, and TRACE logs
///         var infoLogs = new LogDeliverySource("infoLogs", LogDeliverySourceArgs.builder()
///             .name(example.name().applyValue(_name -> String.format("EventBusSource-%s-INFO_LOGS", _name)))
///             .logType("INFO_LOGS")
///             .resourceArn(example.arn())
///             .build());
///
///         var errorLogs = new LogDeliverySource("errorLogs", LogDeliverySourceArgs.builder()
///             .name(example.name().applyValue(_name -> String.format("EventBusSource-%s-ERROR_LOGS", _name)))
///             .logType("ERROR_LOGS")
///             .resourceArn(example.arn())
///             .build());
///
///         var traceLogs = new LogDeliverySource("traceLogs", LogDeliverySourceArgs.builder()
///             .name(example.name().applyValue(_name -> String.format("EventBusSource-%s-TRACE_LOGS", _name)))
///             .logType("TRACE_LOGS")
///             .resourceArn(example.arn())
///             .build());
///
///         // Logging to S3 Bucket
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example-event-bus-logs")
///             .build());
///
///         final var bucket = Output.tuple(exampleBucket.arn(), infoLogs.arn(), errorLogs.arn(), traceLogs.arn()).applyValue(values -> {
///             var exampleBucketArn = values.t1;
///             var infoLogsArn = values.t2;
///             var errorLogsArn = values.t3;
///             var traceLogsArn = values.t4;
///             return IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///                 .statements(GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("delivery.logs.amazonaws.com")
///                         .build())
///                     .actions("s3:PutObject")
///                     .resources(String.format("%s/AWSLogs/%s/EventBusLogs/*", exampleBucketArn,current.accountId()))
///                     .conditions(
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringEquals")
///                             .variable("s3:x-amz-acl")
///                             .values("bucket-owner-full-control")
///                             .build(),
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringEquals")
///                             .variable("aws:SourceAccount")
///                             .values(current.accountId())
///                             .build(),
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("ArnLike")
///                             .variable("aws:SourceArn")
///                             .values(
///                                 infoLogsArn,
///                                 errorLogsArn,
///                                 traceLogsArn)
///                             .build())
///                     .build())
///                 .build());
///         });
///
///         var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleBucket.bucket())
///             .policy(bucket.json())
///             .build());
///
///         var s3 = new LogDeliveryDestination("s3", LogDeliveryDestinationArgs.builder()
///             .name(example.name().applyValue(_name -> String.format("EventsDeliveryDestination-%s-S3", _name)))
///             .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
///                 .destinationResourceArn(exampleBucket.arn())
///                 .build())
///             .build());
///
///         var s3InfoLogs = new LogDelivery("s3InfoLogs", LogDeliveryArgs.builder()
///             .deliveryDestinationArn(s3.arn())
///             .deliverySourceName(infoLogs.name())
///             .build());
///
///         var s3ErrorLogs = new LogDelivery("s3ErrorLogs", LogDeliveryArgs.builder()
///             .deliveryDestinationArn(s3.arn())
///             .deliverySourceName(errorLogs.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(s3InfoLogs)
///                 .build());
///
///         var s3TraceLogs = new LogDelivery("s3TraceLogs", LogDeliveryArgs.builder()
///             .deliveryDestinationArn(s3.arn())
///             .deliverySourceName(traceLogs.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(s3ErrorLogs)
///                 .build());
///
///         // Logging to CloudWatch Log Group
///         var eventBusLogs = new LogGroup("eventBusLogs", LogGroupArgs.builder()
///             .name(example.name().applyValue(_name -> String.format("/aws/vendedlogs/events/event-bus/%s", _name)))
///             .build());
///
///         final var cwlogs = Output.tuple(eventBusLogs.arn(), infoLogs.arn(), errorLogs.arn(), traceLogs.arn()).applyValue(values -> {
///             var eventBusLogsArn = values.t1;
///             var infoLogsArn = values.t2;
///             var errorLogsArn = values.t3;
///             var traceLogsArn = values.t4;
///             return IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///                 .statements(GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("delivery.logs.amazonaws.com")
///                         .build())
///                     .actions(
///                         "logs:CreateLogStream",
///                         "logs:PutLogEvents")
///                     .resources(String.format("%s:log-stream:*", eventBusLogsArn))
///                     .conditions(
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringEquals")
///                             .variable("aws:SourceAccount")
///                             .values(current.accountId())
///                             .build(),
///                         GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("ArnLike")
///                             .variable("aws:SourceArn")
///                             .values(
///                                 infoLogsArn,
///                                 errorLogsArn,
///                                 traceLogsArn)
///                             .build())
///                     .build())
///                 .build());
///         });
///
///         var exampleLogResourcePolicy = new LogResourcePolicy("exampleLogResourcePolicy", LogResourcePolicyArgs.builder()
///             .policyDocument(cwlogs.json())
///             .policyName(example.name().applyValue(_name -> String.format("AWSLogDeliveryWrite-%s", _name)))
///             .build());
///
///         var cwlogsLogDeliveryDestination = new LogDeliveryDestination("cwlogsLogDeliveryDestination", LogDeliveryDestinationArgs.builder()
///             .name(example.name().applyValue(_name -> String.format("EventsDeliveryDestination-%s-CWLogs", _name)))
///             .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
///                 .destinationResourceArn(eventBusLogs.arn())
///                 .build())
///             .build());
///
///         var cwlogsInfoLogs = new LogDelivery("cwlogsInfoLogs", LogDeliveryArgs.builder()
///             .deliveryDestinationArn(cwlogsLogDeliveryDestination.arn())
///             .deliverySourceName(infoLogs.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(s3InfoLogs)
///                 .build());
///
///         var cwlogsErrorLogs = new LogDelivery("cwlogsErrorLogs", LogDeliveryArgs.builder()
///             .deliveryDestinationArn(cwlogsLogDeliveryDestination.arn())
///             .deliverySourceName(errorLogs.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     s3ErrorLogs,
///                     cwlogsInfoLogs)
///                 .build());
///
///         var cwlogsTraceLogs = new LogDelivery("cwlogsTraceLogs", LogDeliveryArgs.builder()
///             .deliveryDestinationArn(cwlogsLogDeliveryDestination.arn())
///             .deliverySourceName(traceLogs.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     s3TraceLogs,
///                     cwlogsErrorLogs)
///                 .build());
///
///         // Logging to Data Firehose
///         var cloudfrontLogs = new FirehoseDeliveryStream("cloudfrontLogs", FirehoseDeliveryStreamArgs.builder()
///             .tags(Map.of("LogDeliveryEnabled", "true"))
///             .build());
///
///         var firehose = new LogDeliveryDestination("firehose", LogDeliveryDestinationArgs.builder()
///             .name(example.name().applyValue(_name -> String.format("EventsDeliveryDestination-%s-Firehose", _name)))
///             .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
///                 .destinationResourceArn(cloudfrontLogs.arn())
///                 .build())
///             .build());
///
///         var firehoseInfoLogs = new LogDelivery("firehoseInfoLogs", LogDeliveryArgs.builder()
///             .deliveryDestinationArn(firehose.arn())
///             .deliverySourceName(infoLogs.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cwlogsInfoLogs)
///                 .build());
///
///         var firehoseErrorLogs = new LogDelivery("firehoseErrorLogs", LogDeliveryArgs.builder()
///             .deliveryDestinationArn(firehose.arn())
///             .deliverySourceName(errorLogs.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     cwlogsErrorLogs,
///                     firehoseInfoLogs)
///                 .build());
///
///         var firehoseTraceLogs = new LogDelivery("firehoseTraceLogs", LogDeliveryArgs.builder()
///             .deliveryDestinationArn(firehose.arn())
///             .deliverySourceName(traceLogs.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     cwlogsTraceLogs,
///                     firehoseErrorLogs)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:EventBus
///     properties:
///       name: example-event-bus
///       logConfig:
///         includeDetail: FULL
///         level: TRACE
///   # CloudWatch Log Delivery Sources for INFO, ERROR, and TRACE logs
///   infoLogs:
///     type: aws:cloudwatch:LogDeliverySource
///     name: info_logs
///     properties:
///       name: EventBusSource-${example.name}-INFO_LOGS
///       logType: INFO_LOGS
///       resourceArn: ${example.arn}
///   errorLogs:
///     type: aws:cloudwatch:LogDeliverySource
///     name: error_logs
///     properties:
///       name: EventBusSource-${example.name}-ERROR_LOGS
///       logType: ERROR_LOGS
///       resourceArn: ${example.arn}
///   traceLogs:
///     type: aws:cloudwatch:LogDeliverySource
///     name: trace_logs
///     properties:
///       name: EventBusSource-${example.name}-TRACE_LOGS
///       logType: TRACE_LOGS
///       resourceArn: ${example.arn}
///   # Logging to S3 Bucket
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example-event-bus-logs
///   exampleBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: example
///     properties:
///       bucket: ${exampleBucket.bucket}
///       policy: ${bucket.json}
///   s3:
///     type: aws:cloudwatch:LogDeliveryDestination
///     properties:
///       name: EventsDeliveryDestination-${example.name}-S3
///       deliveryDestinationConfiguration:
///         destinationResourceArn: ${exampleBucket.arn}
///   s3InfoLogs:
///     type: aws:cloudwatch:LogDelivery
///     name: s3_info_logs
///     properties:
///       deliveryDestinationArn: ${s3.arn}
///       deliverySourceName: ${infoLogs.name}
///   s3ErrorLogs:
///     type: aws:cloudwatch:LogDelivery
///     name: s3_error_logs
///     properties:
///       deliveryDestinationArn: ${s3.arn}
///       deliverySourceName: ${errorLogs.name}
///     options:
///       dependsOn:
///         - ${s3InfoLogs}
///   s3TraceLogs:
///     type: aws:cloudwatch:LogDelivery
///     name: s3_trace_logs
///     properties:
///       deliveryDestinationArn: ${s3.arn}
///       deliverySourceName: ${traceLogs.name}
///     options:
///       dependsOn:
///         - ${s3ErrorLogs}
///   # Logging to CloudWatch Log Group
///   eventBusLogs:
///     type: aws:cloudwatch:LogGroup
///     name: event_bus_logs
///     properties:
///       name: /aws/vendedlogs/events/event-bus/${example.name}
///   exampleLogResourcePolicy:
///     type: aws:cloudwatch:LogResourcePolicy
///     name: example
///     properties:
///       policyDocument: ${cwlogs.json}
///       policyName: AWSLogDeliveryWrite-${example.name}
///   cwlogsLogDeliveryDestination:
///     type: aws:cloudwatch:LogDeliveryDestination
///     name: cwlogs
///     properties:
///       name: EventsDeliveryDestination-${example.name}-CWLogs
///       deliveryDestinationConfiguration:
///         destinationResourceArn: ${eventBusLogs.arn}
///   cwlogsInfoLogs:
///     type: aws:cloudwatch:LogDelivery
///     name: cwlogs_info_logs
///     properties:
///       deliveryDestinationArn: ${cwlogsLogDeliveryDestination.arn}
///       deliverySourceName: ${infoLogs.name}
///     options:
///       dependsOn:
///         - ${s3InfoLogs}
///   cwlogsErrorLogs:
///     type: aws:cloudwatch:LogDelivery
///     name: cwlogs_error_logs
///     properties:
///       deliveryDestinationArn: ${cwlogsLogDeliveryDestination.arn}
///       deliverySourceName: ${errorLogs.name}
///     options:
///       dependsOn:
///         - ${s3ErrorLogs}
///         - ${cwlogsInfoLogs}
///   cwlogsTraceLogs:
///     type: aws:cloudwatch:LogDelivery
///     name: cwlogs_trace_logs
///     properties:
///       deliveryDestinationArn: ${cwlogsLogDeliveryDestination.arn}
///       deliverySourceName: ${traceLogs.name}
///     options:
///       dependsOn:
///         - ${s3TraceLogs}
///         - ${cwlogsErrorLogs}
///   # Logging to Data Firehose
///   cloudfrontLogs:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: cloudfront_logs
///     properties:
///       tags:
///         LogDeliveryEnabled: 'true'
///   firehose:
///     type: aws:cloudwatch:LogDeliveryDestination
///     properties:
///       name: EventsDeliveryDestination-${example.name}-Firehose
///       deliveryDestinationConfiguration:
///         destinationResourceArn: ${cloudfrontLogs.arn}
///   firehoseInfoLogs:
///     type: aws:cloudwatch:LogDelivery
///     name: firehose_info_logs
///     properties:
///       deliveryDestinationArn: ${firehose.arn}
///       deliverySourceName: ${infoLogs.name}
///     options:
///       dependsOn:
///         - ${cwlogsInfoLogs}
///   firehoseErrorLogs:
///     type: aws:cloudwatch:LogDelivery
///     name: firehose_error_logs
///     properties:
///       deliveryDestinationArn: ${firehose.arn}
///       deliverySourceName: ${errorLogs.name}
///     options:
///       dependsOn:
///         - ${cwlogsErrorLogs}
///         - ${firehoseInfoLogs}
///   firehoseTraceLogs:
///     type: aws:cloudwatch:LogDelivery
///     name: firehose_trace_logs
///     properties:
///       deliveryDestinationArn: ${firehose.arn}
///       deliverySourceName: ${traceLogs.name}
///     options:
///       dependsOn:
///         - ${cwlogsTraceLogs}
///         - ${firehoseErrorLogs}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   bucket:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - delivery.logs.amazonaws.com
///             actions:
///               - s3:PutObject
///             resources:
///               - ${exampleBucket.arn}/AWSLogs/${current.accountId}/EventBusLogs/*
///             conditions:
///               - test: StringEquals
///                 variable: s3:x-amz-acl
///                 values:
///                   - bucket-owner-full-control
///               - test: StringEquals
///                 variable: aws:SourceAccount
///                 values:
///                   - ${current.accountId}
///               - test: ArnLike
///                 variable: aws:SourceArn
///                 values:
///                   - ${infoLogs.arn}
///                   - ${errorLogs.arn}
///                   - ${traceLogs.arn}
///   cwlogs:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - delivery.logs.amazonaws.com
///             actions:
///               - logs:CreateLogStream
///               - logs:PutLogEvents
///             resources:
///               - ${eventBusLogs.arn}:log-stream:*
///             conditions:
///               - test: StringEquals
///                 variable: aws:SourceAccount
///                 values:
///                   - ${current.accountId}
///               - test: ArnLike
///                 variable: aws:SourceArn
///                 values:
///                   - ${infoLogs.arn}
///                   - ${errorLogs.arn}
///                   - ${traceLogs.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge event buses using the name of the event bus (which can also be a partner event source name). For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventBus:EventBus messenger chat-messages
/// ```
class EventBus extends pulumi.CustomResource {
  /// ARN of the event bus.
  late final pulumi.Output<String> arn;
  /// Configuration details of the Amazon SQS queue for EventBridge to use as a dead-letter queue (DLQ). This block supports the following arguments:
  late final pulumi.Output<EventBusDeadLetterConfig?> deadLetterConfig;
  /// Event bus description.
  late final pulumi.Output<String?> description;
  /// Partner event source that the new event bus will be matched with. Must match `name`.
  late final pulumi.Output<String?> eventSourceName;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt events on this event bus. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.
  late final pulumi.Output<String?> kmsKeyIdentifier;
  /// Block for logging configuration settings for the event bus.
  late final pulumi.Output<EventBusLogConfig?> logConfig;
  /// Name of the new event bus. The names of custom event buses can't contain the / character. To create a partner event bus, ensure that the `name` matches the `event_source_name`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [EventBus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventBus]. {@macro pulumi_cloudwatch_event_bus_event_bus_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventBus(
    String name, {
    EventBusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventBus:EventBus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deadLetterConfig = registerOutput<EventBusDeadLetterConfig?>('deadLetterConfig');
    this.description = registerOutput<String?>('description');
    this.eventSourceName = registerOutput<String?>('eventSourceName');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.logConfig = registerOutput<EventBusLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [EventBus] resource's state with the given [name] and [id].
  static EventBus get(
    String name,
    pulumi.Input<String> id, {
    EventBusState? state,
  }) {
    return EventBus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventBus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventBus:EventBus',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deadLetterConfig = registerOutput<EventBusDeadLetterConfig?>('deadLetterConfig');
    this.description = registerOutput<String?>('description');
    this.eventSourceName = registerOutput<String?>('eventSourceName');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.logConfig = registerOutput<EventBusLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
