import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contributor_managed_insight_rules_args.dart';
import 'get_contributor_managed_insight_rules_result.dart';
import 'get_event_bus_args.dart';
import 'get_event_bus_result.dart';
import 'get_event_buses_args.dart';
import 'get_event_buses_result.dart';
import 'get_event_connection_args.dart';
import 'get_event_connection_result.dart';
import 'get_event_source_args.dart';
import 'get_event_source_result.dart';
import 'get_log_data_protection_policy_document_args.dart';
import 'get_log_data_protection_policy_document_result.dart';
import 'get_log_group_args.dart';
import 'get_log_group_result.dart';
import 'get_log_groups_args.dart';
import 'get_log_groups_result.dart';

/// Data source for managing an AWS CloudWatch Contributor Managed Insight Rules.
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
/// const example = aws.cloudwatch.getContributorManagedInsightRules({
///     resourceArn: "arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.get_contributor_managed_insight_rules(resource_arn="arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudWatch.GetContributorManagedInsightRules.Invoke(new()
///     {
///         ResourceArn = "arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid",
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
/// 		_, err := cloudwatch.GetContributorManagedInsightRules(ctx, &cloudwatch.GetContributorManagedInsightRulesArgs{
/// 			ResourceArn: "arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid",
/// 		}, nil)
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
/// data "aws_cloudwatch_getcontributormanagedinsightrules" "example" {
///   resource_arn = "arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetContributorManagedInsightRulesArgs;
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
///         final var example = CloudwatchFunctions.getContributorManagedInsightRules(GetContributorManagedInsightRulesArgs.builder()
///             .resourceArn("arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudwatch:getContributorManagedInsightRules
///       arguments:
///         resourceArn: arn:aws:ec2:us-west-2:123456789012:resource-name/resourceid
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudwatch_get_contributor_managed_insight_rules_get_contributor_managed_insight_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContributorManagedInsightRulesResult> getContributorManagedInsightRules(
  GetContributorManagedInsightRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getContributorManagedInsightRules:getContributorManagedInsightRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContributorManagedInsightRulesResult.fromMap(result);
}

pulumi.Output<GetContributorManagedInsightRulesResult> getContributorManagedInsightRulesOutput(
  GetContributorManagedInsightRulesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:cloudwatch/getContributorManagedInsightRules:getContributorManagedInsightRules',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetContributorManagedInsightRulesResult.fromMap);
}

/// This data source can be used to fetch information about a specific
/// EventBridge event bus. Use this data source to compute the ARN of
/// an event bus, given the name of the bus.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudwatch.getEventBus({
///     name: "example-bus-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.get_event_bus(name="example-bus-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudWatch.GetEventBus.Invoke(new()
///     {
///         Name = "example-bus-name",
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
/// 		_, err := cloudwatch.LookupEventBus(ctx, &cloudwatch.LookupEventBusArgs{
/// 			Name: "example-bus-name",
/// 		}, nil)
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
/// data "aws_cloudwatch_geteventbus" "example" {
///   name = "example-bus-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetEventBusArgs;
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
///         final var example = CloudwatchFunctions.getEventBus(GetEventBusArgs.builder()
///             .name("example-bus-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudwatch:getEventBus
///       arguments:
///         name: example-bus-name
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudwatch_get_event_bus_get_event_bus_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventBusResult> getEventBus(
  GetEventBusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getEventBus:getEventBus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventBusResult.fromMap(result);
}

pulumi.Output<GetEventBusResult> getEventBusOutput(
  GetEventBusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:cloudwatch/getEventBus:getEventBus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventBusResult.fromMap);
}

/// Data source for managing an AWS EventBridge Event Buses.
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
/// const example = aws.cloudwatch.getEventBuses({
///     namePrefix: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.get_event_buses(name_prefix="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudWatch.GetEventBuses.Invoke(new()
///     {
///         NamePrefix = "test",
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
/// 		_, err := cloudwatch.GetEventBuses(ctx, &cloudwatch.GetEventBusesArgs{
/// 			NamePrefix: pulumi.StringRef("test"),
/// 		}, nil)
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
/// data "aws_cloudwatch_geteventbuses" "example" {
///   name_prefix = "test"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetEventBusesArgs;
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
///         final var example = CloudwatchFunctions.getEventBuses(GetEventBusesArgs.builder()
///             .namePrefix("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudwatch:getEventBuses
///       arguments:
///         namePrefix: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudwatch_get_event_buses_get_event_buses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventBusesResult> getEventBuses(
  GetEventBusesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getEventBuses:getEventBuses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventBusesResult.fromMap(result);
}

pulumi.Output<GetEventBusesResult> getEventBusesOutput(
  GetEventBusesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:cloudwatch/getEventBuses:getEventBuses',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventBusesResult.fromMap);
}

/// Use this data source to retrieve information about an EventBridge connection.
///
/// &gt; **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.cloudwatch.getEventConnection({
///     name: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.get_event_connection(name="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.CloudWatch.GetEventConnection.Invoke(new()
///     {
///         Name = "test",
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
/// 		_, err := cloudwatch.LookupEventConnection(ctx, &cloudwatch.LookupEventConnectionArgs{
/// 			Name: "test",
/// 		}, nil)
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
/// data "aws_cloudwatch_geteventconnection" "test" {
///   name = "test"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetEventConnectionArgs;
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
///         final var test = CloudwatchFunctions.getEventConnection(GetEventConnectionArgs.builder()
///             .name("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:cloudwatch:getEventConnection
///       arguments:
///         name: test
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudwatch_get_event_connection_get_event_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventConnectionResult> getEventConnection(
  GetEventConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getEventConnection:getEventConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventConnectionResult.fromMap(result);
}

pulumi.Output<GetEventConnectionResult> getEventConnectionOutput(
  GetEventConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:cloudwatch/getEventConnection:getEventConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventConnectionResult.fromMap);
}

/// Use this data source to get information about an EventBridge Partner Event Source. This data source will only return one partner event source. An error will be returned if multiple sources match the same name prefix.
///
/// &gt; **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplepartner = aws.cloudwatch.getEventSource({
///     namePrefix: "aws.partner/example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// examplepartner = aws.cloudwatch.get_event_source(name_prefix="aws.partner/example.com")
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
///         NamePrefix = "aws.partner/example.com",
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
/// 		_, err := cloudwatch.GetEventSource(ctx, &cloudwatch.GetEventSourceArgs{
/// 			NamePrefix: pulumi.StringRef("aws.partner/example.com"),
/// 		}, nil)
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
/// data "aws_cloudwatch_geteventsource" "examplepartner" {
///   name_prefix = "aws.partner/example.com"
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
///         final var examplepartner = CloudwatchFunctions.getEventSource(GetEventSourceArgs.builder()
///             .namePrefix("aws.partner/example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   examplepartner:
///     fn::invoke:
///       function: aws:cloudwatch:getEventSource
///       arguments:
///         namePrefix: aws.partner/example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudwatch_get_event_source_get_event_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventSourceResult> getEventSource(
  GetEventSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getEventSource:getEventSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventSourceResult.fromMap(result);
}

pulumi.Output<GetEventSourceResult> getEventSourceOutput(
  GetEventSourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:cloudwatch/getEventSource:getEventSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEventSourceResult.fromMap);
}

/// Generates a CloudWatch Log Group Data Protection Policy document in JSON format for use with the `aws.cloudwatch.LogDataProtectionPolicy` resource.
///
/// &gt; For more information about data protection policies, see the [Help protect sensitive log data with masking](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudwatch.getLogDataProtectionPolicyDocument({
///     statements: [
///         {
///             operation: {
///                 audit: {
///                     findingsDestination: {
///                         cloudwatchLogs: {
///                             logGroup: audit.name,
///                         },
///                         firehose: {
///                             deliveryStream: auditAwsKinesisFirehoseDeliveryStream.name,
///                         },
///                         s3: {
///                             bucket: auditAwsS3Bucket.bucket,
///                         },
///                     },
///                 },
///             },
///             sid: "Audit",
///             dataIdentifiers: [
///                 "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                 "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
///             ],
///         },
///         {
///             operation: {
///                 deidentify: {
///                     maskConfig: {},
///                 },
///             },
///             sid: "Deidentify",
///             dataIdentifiers: [
///                 "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                 "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
///             ],
///         },
///     ],
///     name: "Example",
/// });
/// const exampleLogDataProtectionPolicy = new aws.cloudwatch.LogDataProtectionPolicy("example", {
///     logGroupName: exampleAwsCloudwatchLogGroup.name,
///     policyDocument: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.get_log_data_protection_policy_document(statements=[
///         {
///             "operation": {
///                 "audit": {
///                     "findings_destination": {
///                         "cloudwatch_logs": {
///                             "log_group": audit["name"],
///                         },
///                         "firehose": {
///                             "delivery_stream": audit_aws_kinesis_firehose_delivery_stream["name"],
///                         },
///                         "s3": {
///                             "bucket": audit_aws_s3_bucket["bucket"],
///                         },
///                     },
///                 },
///             },
///             "sid": "Audit",
///             "data_identifiers": [
///                 "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                 "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
///             ],
///         },
///         {
///             "operation": {
///                 "deidentify": {
///                     "mask_config": {},
///                 },
///             },
///             "sid": "Deidentify",
///             "data_identifiers": [
///                 "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                 "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
///             ],
///         },
///     ],
///     name="Example")
/// example_log_data_protection_policy = aws.cloudwatch.LogDataProtectionPolicy("example",
///     log_group_name=example_aws_cloudwatch_log_group["name"],
///     policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudWatch.GetLogDataProtectionPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementInputArgs
///             {
///                 Operation = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationInputArgs
///                 {
///                     Audit = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditInputArgs
///                     {
///                         FindingsDestination = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationInputArgs
///                         {
///                             CloudwatchLogs = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogsInputArgs
///                             {
///                                 LogGroup = audit.Name,
///                             },
///                             Firehose = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehoseInputArgs
///                             {
///                                 DeliveryStream = auditAwsKinesisFirehoseDeliveryStream.Name,
///                             },
///                             S3 = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3InputArgs
///                             {
///                                 Bucket = auditAwsS3Bucket.Bucket,
///                             },
///                         },
///                     },
///                 },
///                 Sid = "Audit",
///                 DataIdentifiers = new[]
///                 {
///                     "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                     "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
///                 },
///             },
///             new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementInputArgs
///             {
///                 Operation = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationInputArgs
///                 {
///                     Deidentify = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationDeidentifyInputArgs
///                     {
///                         MaskConfig = null,
///                     },
///                 },
///                 Sid = "Deidentify",
///                 DataIdentifiers = new[]
///                 {
///                     "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                     "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
///                 },
///             },
///         },
///         Name = "Example",
///     });
///
///     var exampleLogDataProtectionPolicy = new Aws.CloudWatch.LogDataProtectionPolicy("example", new()
///     {
///         LogGroupName = exampleAwsCloudwatchLogGroup.Name,
///         PolicyDocument = example.Apply(getLogDataProtectionPolicyDocumentResult => getLogDataProtectionPolicyDocumentResult.Json),
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
/// 		example, err := cloudwatch.GetLogDataProtectionPolicyDocument(ctx, &cloudwatch.GetLogDataProtectionPolicyDocumentArgs{
/// 			Statements: []cloudwatch.GetLogDataProtectionPolicyDocumentStatement{
/// 				{
/// 					Operation: {
/// 						Audit: {
/// 							FindingsDestination: {
/// 								CloudwatchLogs: {
/// 									LogGroup: audit.Name,
/// 								},
/// 								Firehose: {
/// 									DeliveryStream: auditAwsKinesisFirehoseDeliveryStream.Name,
/// 								},
/// 								S3: {
/// 									Bucket: auditAwsS3Bucket.Bucket,
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Sid: pulumi.StringRef("Audit"),
/// 					DataIdentifiers: []string{
/// 						"arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// 						"arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// 					},
/// 				},
/// 				{
/// 					Operation: {
/// 						Deidentify: {
/// 							MaskConfig: {},
/// 						},
/// 					},
/// 					Sid: pulumi.StringRef("Deidentify"),
/// 					DataIdentifiers: []string{
/// 						"arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// 						"arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// 					},
/// 				},
/// 			},
/// 			Name: "Example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogDataProtectionPolicy(ctx, "example", &cloudwatch.LogDataProtectionPolicyArgs{
/// 			LogGroupName:   pulumi.Any(exampleAwsCloudwatchLogGroup.Name),
/// 			PolicyDocument: pulumi.String(example.Json),
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
/// data "aws_cloudwatch_getlogdataprotectionpolicydocument" "example" {
///   statements {
///     operation = {
///       audit = {
///         findings_destination = {
///           cloudwatch_logs = {
///             log_group = audit.name
///           }
///           firehose = {
///             delivery_stream = auditAwsKinesisFirehoseDeliveryStream.name
///           }
///           s3 = {
///             bucket = auditAwsS3Bucket.bucket
///           }
///         }
///       }
///     }
///     sid              = "Audit"
///     data_identifiers = ["arn:aws:dataprotection::aws:data-identifier/EmailAddress", "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US"]
///   }
///   statements {
///     operation = {
///       deidentify = {
///         mask_config = {}
///       }
///     }
///     sid              = "Deidentify"
///     data_identifiers = ["arn:aws:dataprotection::aws:data-identifier/EmailAddress", "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US"]
///   }
///   name = "Example"
/// }
///
/// resource "aws_cloudwatch_logdataprotectionpolicy" "example" {
///   log_group_name  = exampleAwsCloudwatchLogGroup.name
///   policy_document = data.aws_cloudwatch_getlogdataprotectionpolicydocument.example.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentArgs;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentStatementArgs;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentStatementOperationArgs;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditArgs;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationArgs;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogsArgs;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehoseArgs;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3Args;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentStatementOperationDeidentifyArgs;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentStatementOperationDeidentifyMaskConfigArgs;
/// import com.pulumi.aws.cloudwatch.LogDataProtectionPolicy;
/// import com.pulumi.aws.cloudwatch.LogDataProtectionPolicyArgs;
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
///         final var example = CloudwatchFunctions.getLogDataProtectionPolicyDocument(GetLogDataProtectionPolicyDocumentArgs.builder()
///             .statements(
///                 GetLogDataProtectionPolicyDocumentStatementArgs.builder()
///                     .operation(GetLogDataProtectionPolicyDocumentStatementOperationArgs.builder()
///                         .audit(GetLogDataProtectionPolicyDocumentStatementOperationAuditArgs.builder()
///                             .findingsDestination(GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationArgs.builder()
///                                 .cloudwatchLogs(GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogsArgs.builder()
///                                     .logGroup(audit.name())
///                                     .build())
///                                 .firehose(GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehoseArgs.builder()
///                                     .deliveryStream(auditAwsKinesisFirehoseDeliveryStream.name())
///                                     .build())
///                                 .s3(GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3Args.builder()
///                                     .bucket(auditAwsS3Bucket.bucket())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .sid("Audit")
///                     .dataIdentifiers(
///                         "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                         "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US")
///                     .build(),
///                 GetLogDataProtectionPolicyDocumentStatementArgs.builder()
///                     .operation(GetLogDataProtectionPolicyDocumentStatementOperationArgs.builder()
///                         .deidentify(GetLogDataProtectionPolicyDocumentStatementOperationDeidentifyArgs.builder()
///                             .maskConfig(GetLogDataProtectionPolicyDocumentStatementOperationDeidentifyMaskConfigArgs.builder()
///                                 .build())
///                             .build())
///                         .build())
///                     .sid("Deidentify")
///                     .dataIdentifiers(
///                         "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
///                         "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US")
///                     .build())
///             .name("Example")
///             .build());
///
///         var exampleLogDataProtectionPolicy = new LogDataProtectionPolicy("exampleLogDataProtectionPolicy", LogDataProtectionPolicyArgs.builder()
///             .logGroupName(exampleAwsCloudwatchLogGroup.name())
///             .policyDocument(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLogDataProtectionPolicy:
///     type: aws:cloudwatch:LogDataProtectionPolicy
///     name: example
///     properties:
///       logGroupName: ${exampleAwsCloudwatchLogGroup.name}
///       policyDocument: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudwatch:getLogDataProtectionPolicyDocument
///       arguments:
///         statements:
///           - operation:
///               audit:
///                 findingsDestination:
///                   cloudwatchLogs:
///                     logGroup: ${audit.name}
///                   firehose:
///                     deliveryStream: ${auditAwsKinesisFirehoseDeliveryStream.name}
///                   s3:
///                     bucket: ${auditAwsS3Bucket.bucket}
///             sid: Audit
///             dataIdentifiers:
///               - arn:aws:dataprotection::aws:data-identifier/EmailAddress
///               - arn:aws:dataprotection::aws:data-identifier/DriversLicense-US
///           - operation:
///               deidentify:
///                 maskConfig: {}
///             sid: Deidentify
///             dataIdentifiers:
///               - arn:aws:dataprotection::aws:data-identifier/EmailAddress
///               - arn:aws:dataprotection::aws:data-identifier/DriversLicense-US
///         name: Example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudwatch_get_log_data_protection_policy_document_get_log_data_protection_policy_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogDataProtectionPolicyDocumentResult> getLogDataProtectionPolicyDocument(
  GetLogDataProtectionPolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getLogDataProtectionPolicyDocument:getLogDataProtectionPolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogDataProtectionPolicyDocumentResult.fromMap(result);
}

pulumi.Output<GetLogDataProtectionPolicyDocumentResult> getLogDataProtectionPolicyDocumentOutput(
  GetLogDataProtectionPolicyDocumentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:cloudwatch/getLogDataProtectionPolicyDocument:getLogDataProtectionPolicyDocument',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogDataProtectionPolicyDocumentResult.fromMap);
}

/// Use this data source to get information about an AWS Cloudwatch Log Group
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudwatch.getLogGroup({
///     name: "MyImportantLogs",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.get_log_group(name="MyImportantLogs")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudWatch.GetLogGroup.Invoke(new()
///     {
///         Name = "MyImportantLogs",
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
/// 		_, err := cloudwatch.LookupLogGroup(ctx, &cloudwatch.LookupLogGroupArgs{
/// 			Name: "MyImportantLogs",
/// 		}, nil)
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
/// data "aws_cloudwatch_getloggroup" "example" {
///   name = "MyImportantLogs"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogGroupArgs;
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
///         final var example = CloudwatchFunctions.getLogGroup(GetLogGroupArgs.builder()
///             .name("MyImportantLogs")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudwatch:getLogGroup
///       arguments:
///         name: MyImportantLogs
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudwatch_get_log_group_get_log_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogGroupResult> getLogGroup(
  GetLogGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getLogGroup:getLogGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogGroupResult.fromMap(result);
}

pulumi.Output<GetLogGroupResult> getLogGroupOutput(
  GetLogGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:cloudwatch/getLogGroup:getLogGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogGroupResult.fromMap);
}

/// Use this data source to get a list of AWS Cloudwatch Log Groups
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudwatch.getLogGroups({
///     logGroupNamePrefix: "/MyImportantLogs",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.get_log_groups(log_group_name_prefix="/MyImportantLogs")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudWatch.GetLogGroups.Invoke(new()
///     {
///         LogGroupNamePrefix = "/MyImportantLogs",
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
/// 		_, err := cloudwatch.GetLogGroups(ctx, &cloudwatch.GetLogGroupsArgs{
/// 			LogGroupNamePrefix: pulumi.StringRef("/MyImportantLogs"),
/// 		}, nil)
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
/// data "aws_cloudwatch_getloggroups" "example" {
///   log_group_name_prefix = "/MyImportantLogs"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogGroupsArgs;
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
///         final var example = CloudwatchFunctions.getLogGroups(GetLogGroupsArgs.builder()
///             .logGroupNamePrefix("/MyImportantLogs")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudwatch:getLogGroups
///       arguments:
///         logGroupNamePrefix: /MyImportantLogs
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudwatch_get_log_groups_get_log_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogGroupsResult> getLogGroups(
  GetLogGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getLogGroups:getLogGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogGroupsResult.fromMap(result);
}

pulumi.Output<GetLogGroupsResult> getLogGroupsOutput(
  GetLogGroupsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:cloudwatch/getLogGroups:getLogGroups',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogGroupsResult.fromMap);
}
