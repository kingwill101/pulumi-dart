import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_amazon_managed_kafka_event_source_config.dart';
import 'event_source_mapping_args.dart';
import 'event_source_mapping_destination_config.dart';
import 'event_source_mapping_document_db_event_source_config.dart';
import 'event_source_mapping_filter_criteria.dart';
import 'event_source_mapping_metrics_config.dart';
import 'event_source_mapping_provisioned_poller_config.dart';
import 'event_source_mapping_scaling_config.dart';
import 'event_source_mapping_self_managed_event_source.dart';
import 'event_source_mapping_self_managed_kafka_event_source_config.dart';
import 'event_source_mapping_source_access_configuration.dart';
import 'event_source_mapping_state.dart';

/// Manages an AWS Lambda Event Source Mapping. Use this resource to connect Lambda functions to event sources like Kinesis, DynamoDB, SQS, Amazon MQ, and Managed Streaming for Apache Kafka (MSK).
///
/// For information about Lambda and how to use it, see [What is AWS Lambda?](http://docs.aws.amazon.com/lambda/latest/dg/welcome.html). For information about event source mappings, see [CreateEventSourceMapping](http://docs.aws.amazon.com/lambda/latest/dg/API_CreateEventSourceMapping.html) in the API docs.
///
/// ## Example Usage
///
/// ### DynamoDB Stream
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
///     eventSourceArn: exampleAwsDynamodbTable.streamArn,
///     functionName: exampleAwsLambdaFunction.arn,
///     startingPosition: "LATEST",
///     tags: {
///         Name: "dynamodb-stream-mapping",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
///     event_source_arn=example_aws_dynamodb_table["streamArn"],
///     function_name=example_aws_lambda_function["arn"],
///     starting_position="LATEST",
///     tags={
///         "Name": "dynamodb-stream-mapping",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.EventSourceMapping("example", new()
///     {
///         EventSourceArn = exampleAwsDynamodbTable.StreamArn,
///         FunctionName = exampleAwsLambdaFunction.Arn,
///         StartingPosition = "LATEST",
///         Tags =
///         {
///             { "Name", "dynamodb-stream-mapping" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// 			EventSourceArn:   pulumi.Any(exampleAwsDynamodbTable.StreamArn),
/// 			FunctionName:     pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			StartingPosition: pulumi.String("LATEST"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("dynamodb-stream-mapping"),
/// 			},
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
/// resource "aws_lambda_eventsourcemapping" "example" {
///   event_source_arn  = exampleAwsDynamodbTable.streamArn
///   function_name     = exampleAwsLambdaFunction.arn
///   starting_position = "LATEST"
///   tags = {
///     "Name" = "dynamodb-stream-mapping"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
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
///         var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
///             .eventSourceArn(exampleAwsDynamodbTable.streamArn())
///             .functionName(exampleAwsLambdaFunction.arn())
///             .startingPosition("LATEST")
///             .tags(Map.of("Name", "dynamodb-stream-mapping"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:EventSourceMapping
///     properties:
///       eventSourceArn: ${exampleAwsDynamodbTable.streamArn}
///       functionName: ${exampleAwsLambdaFunction.arn}
///       startingPosition: LATEST
///       tags:
///         Name: dynamodb-stream-mapping
/// ```
///
///
/// ### Kinesis Stream
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
///     destinationConfig: {
///         onFailure: {
///             destinationArn: dlq.arn,
///         },
///     },
///     eventSourceArn: exampleAwsKinesisStream.arn,
///     functionName: exampleAwsLambdaFunction.arn,
///     startingPosition: "LATEST",
///     batchSize: 100,
///     maximumBatchingWindowInSeconds: 5,
///     parallelizationFactor: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
///     destination_config={
///         "on_failure": {
///             "destination_arn": dlq["arn"],
///         },
///     },
///     event_source_arn=example_aws_kinesis_stream["arn"],
///     function_name=example_aws_lambda_function["arn"],
///     starting_position="LATEST",
///     batch_size=100,
///     maximum_batching_window_in_seconds=5,
///     parallelization_factor=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.EventSourceMapping("example", new()
///     {
///         DestinationConfig = new Aws.Lambda.Inputs.EventSourceMappingDestinationConfigArgs
///         {
///             OnFailure = new Aws.Lambda.Inputs.EventSourceMappingDestinationConfigOnFailureArgs
///             {
///                 DestinationArn = dlq.Arn,
///             },
///         },
///         EventSourceArn = exampleAwsKinesisStream.Arn,
///         FunctionName = exampleAwsLambdaFunction.Arn,
///         StartingPosition = "LATEST",
///         BatchSize = 100,
///         MaximumBatchingWindowInSeconds = 5,
///         ParallelizationFactor = 2,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// 			DestinationConfig: &lambda.EventSourceMappingDestinationConfigArgs{
/// 				OnFailure: &lambda.EventSourceMappingDestinationConfigOnFailureArgs{
/// 					DestinationArn: pulumi.Any(dlq.Arn),
/// 				},
/// 			},
/// 			EventSourceArn:                 pulumi.Any(exampleAwsKinesisStream.Arn),
/// 			FunctionName:                   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			StartingPosition:               pulumi.String("LATEST"),
/// 			BatchSize:                      pulumi.Int(100),
/// 			MaximumBatchingWindowInSeconds: pulumi.Int(5),
/// 			ParallelizationFactor:          pulumi.Int(2),
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
/// resource "aws_lambda_eventsourcemapping" "example" {
///   destination_config = {
///     on_failure = {
///       destination_arn = dlq.arn
///     }
///   }
///   event_source_arn                   = exampleAwsKinesisStream.arn
///   function_name                      = exampleAwsLambdaFunction.arn
///   starting_position                  = "LATEST"
///   batch_size                         = 100
///   maximum_batching_window_in_seconds = 5
///   parallelization_factor             = 2
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingDestinationConfigArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingDestinationConfigOnFailureArgs;
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
///         var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
///             .destinationConfig(EventSourceMappingDestinationConfigArgs.builder()
///                 .onFailure(EventSourceMappingDestinationConfigOnFailureArgs.builder()
///                     .destinationArn(dlq.arn())
///                     .build())
///                 .build())
///             .eventSourceArn(exampleAwsKinesisStream.arn())
///             .functionName(exampleAwsLambdaFunction.arn())
///             .startingPosition("LATEST")
///             .batchSize(100)
///             .maximumBatchingWindowInSeconds(5)
///             .parallelizationFactor(2)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:EventSourceMapping
///     properties:
///       destinationConfig:
///         onFailure:
///           destinationArn: ${dlq.arn}
///       eventSourceArn: ${exampleAwsKinesisStream.arn}
///       functionName: ${exampleAwsLambdaFunction.arn}
///       startingPosition: LATEST
///       batchSize: 100
///       maximumBatchingWindowInSeconds: 5
///       parallelizationFactor: 2
/// ```
///
///
/// ### SQS Queue
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
///     scalingConfig: {
///         maximumConcurrency: 100,
///     },
///     eventSourceArn: exampleAwsSqsQueue.arn,
///     functionName: exampleAwsLambdaFunction.arn,
///     batchSize: 10,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
///     scaling_config={
///         "maximum_concurrency": 100,
///     },
///     event_source_arn=example_aws_sqs_queue["arn"],
///     function_name=example_aws_lambda_function["arn"],
///     batch_size=10)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.EventSourceMapping("example", new()
///     {
///         ScalingConfig = new Aws.Lambda.Inputs.EventSourceMappingScalingConfigArgs
///         {
///             MaximumConcurrency = 100,
///         },
///         EventSourceArn = exampleAwsSqsQueue.Arn,
///         FunctionName = exampleAwsLambdaFunction.Arn,
///         BatchSize = 10,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// 			ScalingConfig: &lambda.EventSourceMappingScalingConfigArgs{
/// 				MaximumConcurrency: pulumi.Int(100),
/// 			},
/// 			EventSourceArn: pulumi.Any(exampleAwsSqsQueue.Arn),
/// 			FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			BatchSize:      pulumi.Int(10),
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
/// resource "aws_lambda_eventsourcemapping" "example" {
///   scaling_config = {
///     maximum_concurrency = 100
///   }
///   event_source_arn = exampleAwsSqsQueue.arn
///   function_name    = exampleAwsLambdaFunction.arn
///   batch_size       = 10
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingScalingConfigArgs;
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
///         var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
///             .scalingConfig(EventSourceMappingScalingConfigArgs.builder()
///                 .maximumConcurrency(100)
///                 .build())
///             .eventSourceArn(exampleAwsSqsQueue.arn())
///             .functionName(exampleAwsLambdaFunction.arn())
///             .batchSize(10)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:EventSourceMapping
///     properties:
///       scalingConfig:
///         maximumConcurrency: 100
///       eventSourceArn: ${exampleAwsSqsQueue.arn}
///       functionName: ${exampleAwsLambdaFunction.arn}
///       batchSize: 10
/// ```
///
///
/// ### SQS with Event Filtering
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
///     filterCriteria: {
///         filters: [{
///             pattern: JSON.stringify({
///                 body: {
///                     Temperature: [{
///                         numeric: [
///                             ">",
///                             0,
///                             "<=",
///                             100,
///                         ],
///                     }],
///                     Location: ["New York"],
///                 },
///             }),
///         }],
///     },
///     eventSourceArn: exampleAwsSqsQueue.arn,
///     functionName: exampleAwsLambdaFunction.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
///     filter_criteria={
///         "filters": [{
///             "pattern": json.dumps({
///                 "body": {
///                     "Temperature": [{
///                         "numeric": [
///                             ">",
///                             0,
///                             "<=",
///                             100,
///                         ],
///                     }],
///                     "Location": ["New York"],
///                 },
///             }),
///         }],
///     },
///     event_source_arn=example_aws_sqs_queue["arn"],
///     function_name=example_aws_lambda_function["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.EventSourceMapping("example", new()
///     {
///         FilterCriteria = new Aws.Lambda.Inputs.EventSourceMappingFilterCriteriaArgs
///         {
///             Filters = new[]
///             {
///                 new Aws.Lambda.Inputs.EventSourceMappingFilterCriteriaFilterArgs
///                 {
///                     Pattern = JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["body"] = new Dictionary<string, object?>
///                         {
///                             ["Temperature"] = new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["numeric"] = new object?[]
///                                     {
///                                         ">",
///                                         0,
///                                         "<=",
///                                         100,
///                                     },
///                                 },
///                             },
///                             ["Location"] = new[]
///                             {
///                                 "New York",
///                             },
///                         },
///                     }),
///                 },
///             },
///         },
///         EventSourceArn = exampleAwsSqsQueue.Arn,
///         FunctionName = exampleAwsLambdaFunction.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]map[string]interface{}{
/// 			"body": map[string]interface{}{
/// 				"Temperature": []map[string][]interface{}{
/// 					map[string][]interface{}{
/// 						"numeric": []interface{}{
/// 							">",
/// 							0,
/// 							"<=",
/// 							100,
/// 						},
/// 					},
/// 				},
/// 				"Location": []string{
/// 					"New York",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// 			FilterCriteria: &lambda.EventSourceMappingFilterCriteriaArgs{
/// 				Filters: lambda.EventSourceMappingFilterCriteriaFilterArray{
/// 					&lambda.EventSourceMappingFilterCriteriaFilterArgs{
/// 						Pattern: pulumi.String(json0),
/// 					},
/// 				},
/// 			},
/// 			EventSourceArn: pulumi.Any(exampleAwsSqsQueue.Arn),
/// 			FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
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
/// resource "aws_lambda_eventsourcemapping" "example" {
///   filter_criteria = {
///     filters = [{
///       "pattern" = jsonencode({
///         "body" = {
///           "Temperature" = [{
///             "numeric" = [">", 0, "<=", 100]
///           }]
///           "Location" = ["New York"]
///         }
///       })
///     }]
///   }
///   event_source_arn = exampleAwsSqsQueue.arn
///   function_name    = exampleAwsLambdaFunction.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingFilterCriteriaArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingFilterCriteriaFilterArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
///             .filterCriteria(EventSourceMappingFilterCriteriaArgs.builder()
///                 .filters(EventSourceMappingFilterCriteriaFilterArgs.builder()
///                     .pattern(serializeJson(
///                         jsonObject(
///                             jsonProperty("body", jsonObject(
///                                 jsonProperty("Temperature", jsonArray(jsonObject(
///                                     jsonProperty("numeric", jsonArray(
///                                         ">",
///                                         0,
///                                         "<=",
///                                         100
///                                     ))
///                                 ))),
///                                 jsonProperty("Location", jsonArray("New York"))
///                             ))
///                         )))
///                     .build())
///                 .build())
///             .eventSourceArn(exampleAwsSqsQueue.arn())
///             .functionName(exampleAwsLambdaFunction.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:EventSourceMapping
///     properties:
///       filterCriteria:
///         filters:
///           - pattern:
///               fn::toJSON:
///                 body:
///                   Temperature:
///                     - numeric:
///                         - '>'
///                         - 0
///                         - <=
///                         - 100
///                   Location:
///                     - New York
///       eventSourceArn: ${exampleAwsSqsQueue.arn}
///       functionName: ${exampleAwsLambdaFunction.arn}
/// ```
///
///
/// ### Amazon MSK
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
///     amazonManagedKafkaEventSourceConfig: {
///         consumerGroupId: "lambda-consumer-group",
///     },
///     eventSourceArn: exampleAwsMskCluster.arn,
///     functionName: exampleAwsLambdaFunction.arn,
///     topics: [
///         "orders",
///         "inventory",
///     ],
///     startingPosition: "TRIM_HORIZON",
///     batchSize: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
///     amazon_managed_kafka_event_source_config={
///         "consumer_group_id": "lambda-consumer-group",
///     },
///     event_source_arn=example_aws_msk_cluster["arn"],
///     function_name=example_aws_lambda_function["arn"],
///     topics=[
///         "orders",
///         "inventory",
///     ],
///     starting_position="TRIM_HORIZON",
///     batch_size=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.EventSourceMapping("example", new()
///     {
///         AmazonManagedKafkaEventSourceConfig = new Aws.Lambda.Inputs.EventSourceMappingAmazonManagedKafkaEventSourceConfigArgs
///         {
///             ConsumerGroupId = "lambda-consumer-group",
///         },
///         EventSourceArn = exampleAwsMskCluster.Arn,
///         FunctionName = exampleAwsLambdaFunction.Arn,
///         Topics = new[]
///         {
///             "orders",
///             "inventory",
///         },
///         StartingPosition = "TRIM_HORIZON",
///         BatchSize = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// 			AmazonManagedKafkaEventSourceConfig: &lambda.EventSourceMappingAmazonManagedKafkaEventSourceConfigArgs{
/// 				ConsumerGroupId: pulumi.String("lambda-consumer-group"),
/// 			},
/// 			EventSourceArn: pulumi.Any(exampleAwsMskCluster.Arn),
/// 			FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			Topics: pulumi.StringArray{
/// 				pulumi.String("orders"),
/// 				pulumi.String("inventory"),
/// 			},
/// 			StartingPosition: pulumi.String("TRIM_HORIZON"),
/// 			BatchSize:        pulumi.Int(100),
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
/// resource "aws_lambda_eventsourcemapping" "example" {
///   amazon_managed_kafka_event_source_config = {
///     consumer_group_id = "lambda-consumer-group"
///   }
///   event_source_arn  = exampleAwsMskCluster.arn
///   function_name     = exampleAwsLambdaFunction.arn
///   topics            = ["orders", "inventory"]
///   starting_position = "TRIM_HORIZON"
///   batch_size        = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingAmazonManagedKafkaEventSourceConfigArgs;
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
///         var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
///             .amazonManagedKafkaEventSourceConfig(EventSourceMappingAmazonManagedKafkaEventSourceConfigArgs.builder()
///                 .consumerGroupId("lambda-consumer-group")
///                 .build())
///             .eventSourceArn(exampleAwsMskCluster.arn())
///             .functionName(exampleAwsLambdaFunction.arn())
///             .topics(
///                 "orders",
///                 "inventory")
///             .startingPosition("TRIM_HORIZON")
///             .batchSize(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:EventSourceMapping
///     properties:
///       amazonManagedKafkaEventSourceConfig:
///         consumerGroupId: lambda-consumer-group
///       eventSourceArn: ${exampleAwsMskCluster.arn}
///       functionName: ${exampleAwsLambdaFunction.arn}
///       topics:
///         - orders
///         - inventory
///       startingPosition: TRIM_HORIZON
///       batchSize: 100
/// ```
///
///
/// ### Self-Managed Apache Kafka
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
///     selfManagedEventSource: {
///         endpoints: {
///             KAFKA_BOOTSTRAP_SERVERS: "kafka1.example.com:9092,kafka2.example.com:9092",
///         },
///     },
///     selfManagedKafkaEventSourceConfig: {
///         consumerGroupId: "lambda-consumer-group",
///     },
///     provisionedPollerConfig: {
///         maximumPollers: 100,
///         minimumPollers: 10,
///         pollerGroupName: "group-123",
///     },
///     sourceAccessConfigurations: [
///         {
///             type: "VPC_SUBNET",
///             uri: `subnet:${example1.id}`,
///         },
///         {
///             type: "VPC_SUBNET",
///             uri: `subnet:${example2.id}`,
///         },
///         {
///             type: "VPC_SECURITY_GROUP",
///             uri: `security_group:${exampleAwsSecurityGroup.id}`,
///         },
///     ],
///     functionName: exampleAwsLambdaFunction.arn,
///     topics: ["orders"],
///     startingPosition: "TRIM_HORIZON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
///     self_managed_event_source={
///         "endpoints": {
///             "KAFKA_BOOTSTRAP_SERVERS": "kafka1.example.com:9092,kafka2.example.com:9092",
///         },
///     },
///     self_managed_kafka_event_source_config={
///         "consumer_group_id": "lambda-consumer-group",
///     },
///     provisioned_poller_config={
///         "maximum_pollers": 100,
///         "minimum_pollers": 10,
///         "poller_group_name": "group-123",
///     },
///     source_access_configurations=[
///         {
///             "type": "VPC_SUBNET",
///             "uri": f"subnet:{example1['id']}",
///         },
///         {
///             "type": "VPC_SUBNET",
///             "uri": f"subnet:{example2['id']}",
///         },
///         {
///             "type": "VPC_SECURITY_GROUP",
///             "uri": f"security_group:{example_aws_security_group['id']}",
///         },
///     ],
///     function_name=example_aws_lambda_function["arn"],
///     topics=["orders"],
///     starting_position="TRIM_HORIZON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.EventSourceMapping("example", new()
///     {
///         SelfManagedEventSource = new Aws.Lambda.Inputs.EventSourceMappingSelfManagedEventSourceArgs
///         {
///             Endpoints =
///             {
///                 { "KAFKA_BOOTSTRAP_SERVERS", "kafka1.example.com:9092,kafka2.example.com:9092" },
///             },
///         },
///         SelfManagedKafkaEventSourceConfig = new Aws.Lambda.Inputs.EventSourceMappingSelfManagedKafkaEventSourceConfigArgs
///         {
///             ConsumerGroupId = "lambda-consumer-group",
///         },
///         ProvisionedPollerConfig = new Aws.Lambda.Inputs.EventSourceMappingProvisionedPollerConfigArgs
///         {
///             MaximumPollers = 100,
///             MinimumPollers = 10,
///             PollerGroupName = "group-123",
///         },
///         SourceAccessConfigurations = new[]
///         {
///             new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
///             {
///                 Type = "VPC_SUBNET",
///                 Uri = $"subnet:{example1.Id}",
///             },
///             new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
///             {
///                 Type = "VPC_SUBNET",
///                 Uri = $"subnet:{example2.Id}",
///             },
///             new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
///             {
///                 Type = "VPC_SECURITY_GROUP",
///                 Uri = $"security_group:{exampleAwsSecurityGroup.Id}",
///             },
///         },
///         FunctionName = exampleAwsLambdaFunction.Arn,
///         Topics = new[]
///         {
///             "orders",
///         },
///         StartingPosition = "TRIM_HORIZON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// 			SelfManagedEventSource: &lambda.EventSourceMappingSelfManagedEventSourceArgs{
/// 				Endpoints: pulumi.StringMap{
/// 					"KAFKA_BOOTSTRAP_SERVERS": pulumi.String("kafka1.example.com:9092,kafka2.example.com:9092"),
/// 				},
/// 			},
/// 			SelfManagedKafkaEventSourceConfig: &lambda.EventSourceMappingSelfManagedKafkaEventSourceConfigArgs{
/// 				ConsumerGroupId: pulumi.String("lambda-consumer-group"),
/// 			},
/// 			ProvisionedPollerConfig: &lambda.EventSourceMappingProvisionedPollerConfigArgs{
/// 				MaximumPollers:  pulumi.Int(100),
/// 				MinimumPollers:  pulumi.Int(10),
/// 				PollerGroupName: pulumi.String("group-123"),
/// 			},
/// 			SourceAccessConfigurations: lambda.EventSourceMappingSourceAccessConfigurationArray{
/// 				&lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// 					Type: pulumi.String("VPC_SUBNET"),
/// 					Uri:  pulumi.Sprintf("subnet:%v", example1.Id),
/// 				},
/// 				&lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// 					Type: pulumi.String("VPC_SUBNET"),
/// 					Uri:  pulumi.Sprintf("subnet:%v", example2.Id),
/// 				},
/// 				&lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// 					Type: pulumi.String("VPC_SECURITY_GROUP"),
/// 					Uri:  pulumi.Sprintf("security_group:%v", exampleAwsSecurityGroup.Id),
/// 				},
/// 			},
/// 			FunctionName: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			Topics: pulumi.StringArray{
/// 				pulumi.String("orders"),
/// 			},
/// 			StartingPosition: pulumi.String("TRIM_HORIZON"),
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
/// resource "aws_lambda_eventsourcemapping" "example" {
///   self_managed_event_source = {
///     endpoints = {
///       "KAFKA_BOOTSTRAP_SERVERS" = "kafka1.example.com:9092,kafka2.example.com:9092"
///     }
///   }
///   self_managed_kafka_event_source_config = {
///     consumer_group_id = "lambda-consumer-group"
///   }
///   provisioned_poller_config = {
///     maximum_pollers   = 100
///     minimum_pollers   = 10
///     poller_group_name = "group-123"
///   }
///   source_access_configurations {
///     type = "VPC_SUBNET"
///     uri  ="subnet:${example1.id}"
///   }
///   source_access_configurations {
///     type = "VPC_SUBNET"
///     uri  ="subnet:${example2.id}"
///   }
///   source_access_configurations {
///     type = "VPC_SECURITY_GROUP"
///     uri  ="security_group:${exampleAwsSecurityGroup.id}"
///   }
///   function_name     = exampleAwsLambdaFunction.arn
///   topics            = ["orders"]
///   starting_position = "TRIM_HORIZON"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSelfManagedEventSourceArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSelfManagedKafkaEventSourceConfigArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingProvisionedPollerConfigArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSourceAccessConfigurationArgs;
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
///         var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
///             .selfManagedEventSource(EventSourceMappingSelfManagedEventSourceArgs.builder()
///                 .endpoints(Map.of("KAFKA_BOOTSTRAP_SERVERS", "kafka1.example.com:9092,kafka2.example.com:9092"))
///                 .build())
///             .selfManagedKafkaEventSourceConfig(EventSourceMappingSelfManagedKafkaEventSourceConfigArgs.builder()
///                 .consumerGroupId("lambda-consumer-group")
///                 .build())
///             .provisionedPollerConfig(EventSourceMappingProvisionedPollerConfigArgs.builder()
///                 .maximumPollers(100)
///                 .minimumPollers(10)
///                 .pollerGroupName("group-123")
///                 .build())
///             .sourceAccessConfigurations(
///                 EventSourceMappingSourceAccessConfigurationArgs.builder()
///                     .type("VPC_SUBNET")
///                     .uri(String.format("subnet:%s", example1.id()))
///                     .build(),
///                 EventSourceMappingSourceAccessConfigurationArgs.builder()
///                     .type("VPC_SUBNET")
///                     .uri(String.format("subnet:%s", example2.id()))
///                     .build(),
///                 EventSourceMappingSourceAccessConfigurationArgs.builder()
///                     .type("VPC_SECURITY_GROUP")
///                     .uri(String.format("security_group:%s", exampleAwsSecurityGroup.id()))
///                     .build())
///             .functionName(exampleAwsLambdaFunction.arn())
///             .topics("orders")
///             .startingPosition("TRIM_HORIZON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:EventSourceMapping
///     properties:
///       selfManagedEventSource:
///         endpoints:
///           KAFKA_BOOTSTRAP_SERVERS: kafka1.example.com:9092,kafka2.example.com:9092
///       selfManagedKafkaEventSourceConfig:
///         consumerGroupId: lambda-consumer-group
///       provisionedPollerConfig:
///         maximumPollers: 100
///         minimumPollers: 10
///         pollerGroupName: group-123
///       sourceAccessConfigurations:
///         - type: VPC_SUBNET
///           uri: subnet:${example1.id}
///         - type: VPC_SUBNET
///           uri: subnet:${example2.id}
///         - type: VPC_SECURITY_GROUP
///           uri: security_group:${exampleAwsSecurityGroup.id}
///       functionName: ${exampleAwsLambdaFunction.arn}
///       topics:
///         - orders
///       startingPosition: TRIM_HORIZON
/// ```
///
///
/// ### Amazon MQ (ActiveMQ)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
///     sourceAccessConfigurations: [{
///         type: "BASIC_AUTH",
///         uri: exampleAwsSecretsmanagerSecretVersion.arn,
///     }],
///     eventSourceArn: exampleAwsMqBroker.arn,
///     functionName: exampleAwsLambdaFunction.arn,
///     queues: "orders",
///     batchSize: 10,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
///     source_access_configurations=[{
///         "type": "BASIC_AUTH",
///         "uri": example_aws_secretsmanager_secret_version["arn"],
///     }],
///     event_source_arn=example_aws_mq_broker["arn"],
///     function_name=example_aws_lambda_function["arn"],
///     queues="orders",
///     batch_size=10)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.EventSourceMapping("example", new()
///     {
///         SourceAccessConfigurations = new[]
///         {
///             new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
///             {
///                 Type = "BASIC_AUTH",
///                 Uri = exampleAwsSecretsmanagerSecretVersion.Arn,
///             },
///         },
///         EventSourceArn = exampleAwsMqBroker.Arn,
///         FunctionName = exampleAwsLambdaFunction.Arn,
///         Queues = "orders",
///         BatchSize = 10,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// 			SourceAccessConfigurations: lambda.EventSourceMappingSourceAccessConfigurationArray{
/// 				&lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// 					Type: pulumi.String("BASIC_AUTH"),
/// 					Uri:  pulumi.Any(exampleAwsSecretsmanagerSecretVersion.Arn),
/// 				},
/// 			},
/// 			EventSourceArn: pulumi.Any(exampleAwsMqBroker.Arn),
/// 			FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			Queues:         pulumi.String("orders"),
/// 			BatchSize:      pulumi.Int(10),
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
/// resource "aws_lambda_eventsourcemapping" "example" {
///   source_access_configurations {
///     type = "BASIC_AUTH"
///     uri  = exampleAwsSecretsmanagerSecretVersion.arn
///   }
///   event_source_arn = exampleAwsMqBroker.arn
///   function_name    = exampleAwsLambdaFunction.arn
///   queues           = "orders"
///   batch_size       = 10
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSourceAccessConfigurationArgs;
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
///         var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
///             .sourceAccessConfigurations(EventSourceMappingSourceAccessConfigurationArgs.builder()
///                 .type("BASIC_AUTH")
///                 .uri(exampleAwsSecretsmanagerSecretVersion.arn())
///                 .build())
///             .eventSourceArn(exampleAwsMqBroker.arn())
///             .functionName(exampleAwsLambdaFunction.arn())
///             .queues("orders")
///             .batchSize(10)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:EventSourceMapping
///     properties:
///       sourceAccessConfigurations:
///         - type: BASIC_AUTH
///           uri: ${exampleAwsSecretsmanagerSecretVersion.arn}
///       eventSourceArn: ${exampleAwsMqBroker.arn}
///       functionName: ${exampleAwsLambdaFunction.arn}
///       queues: orders
///       batchSize: 10
/// ```
///
///
/// ### Amazon MQ (RabbitMQ)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
///     sourceAccessConfigurations: [
///         {
///             type: "VIRTUAL_HOST",
///             uri: "/production",
///         },
///         {
///             type: "BASIC_AUTH",
///             uri: exampleAwsSecretsmanagerSecretVersion.arn,
///         },
///     ],
///     eventSourceArn: exampleAwsMqBroker.arn,
///     functionName: exampleAwsLambdaFunction.arn,
///     queues: "orders",
///     batchSize: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
///     source_access_configurations=[
///         {
///             "type": "VIRTUAL_HOST",
///             "uri": "/production",
///         },
///         {
///             "type": "BASIC_AUTH",
///             "uri": example_aws_secretsmanager_secret_version["arn"],
///         },
///     ],
///     event_source_arn=example_aws_mq_broker["arn"],
///     function_name=example_aws_lambda_function["arn"],
///     queues="orders",
///     batch_size=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.EventSourceMapping("example", new()
///     {
///         SourceAccessConfigurations = new[]
///         {
///             new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
///             {
///                 Type = "VIRTUAL_HOST",
///                 Uri = "/production",
///             },
///             new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
///             {
///                 Type = "BASIC_AUTH",
///                 Uri = exampleAwsSecretsmanagerSecretVersion.Arn,
///             },
///         },
///         EventSourceArn = exampleAwsMqBroker.Arn,
///         FunctionName = exampleAwsLambdaFunction.Arn,
///         Queues = "orders",
///         BatchSize = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// 			SourceAccessConfigurations: lambda.EventSourceMappingSourceAccessConfigurationArray{
/// 				&lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// 					Type: pulumi.String("VIRTUAL_HOST"),
/// 					Uri:  pulumi.String("/production"),
/// 				},
/// 				&lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// 					Type: pulumi.String("BASIC_AUTH"),
/// 					Uri:  pulumi.Any(exampleAwsSecretsmanagerSecretVersion.Arn),
/// 				},
/// 			},
/// 			EventSourceArn: pulumi.Any(exampleAwsMqBroker.Arn),
/// 			FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			Queues:         pulumi.String("orders"),
/// 			BatchSize:      pulumi.Int(1),
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
/// resource "aws_lambda_eventsourcemapping" "example" {
///   source_access_configurations {
///     type = "VIRTUAL_HOST"
///     uri  = "/production"
///   }
///   source_access_configurations {
///     type = "BASIC_AUTH"
///     uri  = exampleAwsSecretsmanagerSecretVersion.arn
///   }
///   event_source_arn = exampleAwsMqBroker.arn
///   function_name    = exampleAwsLambdaFunction.arn
///   queues           = "orders"
///   batch_size       = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSourceAccessConfigurationArgs;
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
///         var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
///             .sourceAccessConfigurations(
///                 EventSourceMappingSourceAccessConfigurationArgs.builder()
///                     .type("VIRTUAL_HOST")
///                     .uri("/production")
///                     .build(),
///                 EventSourceMappingSourceAccessConfigurationArgs.builder()
///                     .type("BASIC_AUTH")
///                     .uri(exampleAwsSecretsmanagerSecretVersion.arn())
///                     .build())
///             .eventSourceArn(exampleAwsMqBroker.arn())
///             .functionName(exampleAwsLambdaFunction.arn())
///             .queues("orders")
///             .batchSize(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:EventSourceMapping
///     properties:
///       sourceAccessConfigurations:
///         - type: VIRTUAL_HOST
///           uri: /production
///         - type: BASIC_AUTH
///           uri: ${exampleAwsSecretsmanagerSecretVersion.arn}
///       eventSourceArn: ${exampleAwsMqBroker.arn}
///       functionName: ${exampleAwsLambdaFunction.arn}
///       queues: orders
///       batchSize: 1
/// ```
///
///
/// ### DocumentDB Change Stream
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
///     documentDbEventSourceConfig: {
///         databaseName: "orders",
///         collectionName: "transactions",
///         fullDocument: "UpdateLookup",
///     },
///     sourceAccessConfigurations: [{
///         type: "BASIC_AUTH",
///         uri: exampleAwsSecretsmanagerSecretVersion.arn,
///     }],
///     eventSourceArn: exampleAwsDocdbCluster.arn,
///     functionName: exampleAwsLambdaFunction.arn,
///     startingPosition: "LATEST",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
///     document_db_event_source_config={
///         "database_name": "orders",
///         "collection_name": "transactions",
///         "full_document": "UpdateLookup",
///     },
///     source_access_configurations=[{
///         "type": "BASIC_AUTH",
///         "uri": example_aws_secretsmanager_secret_version["arn"],
///     }],
///     event_source_arn=example_aws_docdb_cluster["arn"],
///     function_name=example_aws_lambda_function["arn"],
///     starting_position="LATEST")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.EventSourceMapping("example", new()
///     {
///         DocumentDbEventSourceConfig = new Aws.Lambda.Inputs.EventSourceMappingDocumentDbEventSourceConfigArgs
///         {
///             DatabaseName = "orders",
///             CollectionName = "transactions",
///             FullDocument = "UpdateLookup",
///         },
///         SourceAccessConfigurations = new[]
///         {
///             new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
///             {
///                 Type = "BASIC_AUTH",
///                 Uri = exampleAwsSecretsmanagerSecretVersion.Arn,
///             },
///         },
///         EventSourceArn = exampleAwsDocdbCluster.Arn,
///         FunctionName = exampleAwsLambdaFunction.Arn,
///         StartingPosition = "LATEST",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// 			DocumentDbEventSourceConfig: &lambda.EventSourceMappingDocumentDbEventSourceConfigArgs{
/// 				DatabaseName:   pulumi.String("orders"),
/// 				CollectionName: pulumi.String("transactions"),
/// 				FullDocument:   pulumi.String("UpdateLookup"),
/// 			},
/// 			SourceAccessConfigurations: lambda.EventSourceMappingSourceAccessConfigurationArray{
/// 				&lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// 					Type: pulumi.String("BASIC_AUTH"),
/// 					Uri:  pulumi.Any(exampleAwsSecretsmanagerSecretVersion.Arn),
/// 				},
/// 			},
/// 			EventSourceArn:   pulumi.Any(exampleAwsDocdbCluster.Arn),
/// 			FunctionName:     pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 			StartingPosition: pulumi.String("LATEST"),
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
/// resource "aws_lambda_eventsourcemapping" "example" {
///   document_db_event_source_config = {
///     database_name   = "orders"
///     collection_name = "transactions"
///     full_document   = "UpdateLookup"
///   }
///   source_access_configurations {
///     type = "BASIC_AUTH"
///     uri  = exampleAwsSecretsmanagerSecretVersion.arn
///   }
///   event_source_arn  = exampleAwsDocdbCluster.arn
///   function_name     = exampleAwsLambdaFunction.arn
///   starting_position = "LATEST"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingDocumentDbEventSourceConfigArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSourceAccessConfigurationArgs;
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
///         var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
///             .documentDbEventSourceConfig(EventSourceMappingDocumentDbEventSourceConfigArgs.builder()
///                 .databaseName("orders")
///                 .collectionName("transactions")
///                 .fullDocument("UpdateLookup")
///                 .build())
///             .sourceAccessConfigurations(EventSourceMappingSourceAccessConfigurationArgs.builder()
///                 .type("BASIC_AUTH")
///                 .uri(exampleAwsSecretsmanagerSecretVersion.arn())
///                 .build())
///             .eventSourceArn(exampleAwsDocdbCluster.arn())
///             .functionName(exampleAwsLambdaFunction.arn())
///             .startingPosition("LATEST")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:EventSourceMapping
///     properties:
///       documentDbEventSourceConfig:
///         databaseName: orders
///         collectionName: transactions
///         fullDocument: UpdateLookup
///       sourceAccessConfigurations:
///         - type: BASIC_AUTH
///           uri: ${exampleAwsSecretsmanagerSecretVersion.arn}
///       eventSourceArn: ${exampleAwsDocdbCluster.arn}
///       functionName: ${exampleAwsLambdaFunction.arn}
///       startingPosition: LATEST
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `uuid` (String) UUID of the event source mapping.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Lambda event source mappings using the `UUID` (event source mapping identifier). For example:
///
/// ```sh
/// $ pulumi import aws:lambda/eventSourceMapping:EventSourceMapping example 12345kxodurf3443
/// ```
class EventSourceMapping extends pulumi.CustomResource {
  /// Additional configuration block for Amazon Managed Kafka sources. Incompatible with `selfManagedEventSource` and `selfManagedKafkaEventSourceConfig`. See below.
  late final pulumi.Output<EventSourceMappingAmazonManagedKafkaEventSourceConfig> amazonManagedKafkaEventSourceConfig;
  /// Event source mapping ARN.
  late final pulumi.Output<String> arn;
  /// Largest number of records that Lambda will retrieve from your event source at the time of invocation. Defaults to `100` for DynamoDB, Kinesis, MQ and MSK, `10` for SQS.
  late final pulumi.Output<int?> batchSize;
  /// Whether to split the batch in two and retry if the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Defaults to `false`.
  late final pulumi.Output<bool?> bisectBatchOnFunctionError;
  /// Amazon SQS queue, Amazon SNS topic or Amazon S3 bucket (only available for Kafka sources) destination for failed records. Only available for stream sources (DynamoDB and Kinesis) and Kafka sources (Amazon MSK and Self-managed Apache Kafka). See below.
  late final pulumi.Output<EventSourceMappingDestinationConfig?> destinationConfig;
  /// Configuration settings for a DocumentDB event source. See below.
  late final pulumi.Output<EventSourceMappingDocumentDbEventSourceConfig?> documentDbEventSourceConfig;
  /// Whether the mapping is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Event source ARN - required for Kinesis stream, DynamoDB stream, SQS queue, MQ broker, MSK cluster or DocumentDB change stream. Incompatible with Self Managed Kafka source.
  late final pulumi.Output<String?> eventSourceArn;
  /// Criteria to use for [event filtering](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html) Kinesis stream, DynamoDB stream, SQS queue event sources. See below.
  late final pulumi.Output<EventSourceMappingFilterCriteria?> filterCriteria;
  /// ARN of the Lambda function the event source mapping is sending events to. (Note: this is a computed value that differs from `functionName` above.)
  late final pulumi.Output<String> functionArn;
  /// Name or ARN of the Lambda function that will be subscribing to events.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> functionName;
  /// List of current response type enums applied to the event source mapping for [AWS Lambda checkpointing](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-batchfailurereporting). Only available for SQS and stream sources (DynamoDB and Kinesis). Valid values: `ReportBatchItemFailures`.
  late final pulumi.Output<List<String>?> functionResponseTypes;
  /// ARN of the KMS customer managed key that Lambda uses to encrypt your function's filter criteria.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Date this resource was last modified.
  late final pulumi.Output<String> lastModified;
  /// Result of the last AWS Lambda invocation of your Lambda function.
  late final pulumi.Output<String> lastProcessingResult;
  /// Maximum amount of time to gather records before invoking the function, in seconds (between 0 and 300). Records will continue to buffer until either `maximumBatchingWindowInSeconds` expires or `batchSize` has been met. For streaming event sources, defaults to as soon as records are available in the stream. Only available for stream sources (DynamoDB and Kinesis) and SQS standard queues.
  late final pulumi.Output<int?> maximumBatchingWindowInSeconds;
  /// Maximum age of a record that Lambda sends to a function for processing. Only available for stream sources (DynamoDB and Kinesis). Must be either -1 (forever, and the default value) or between 60 and 604800 (inclusive).
  late final pulumi.Output<int> maximumRecordAgeInSeconds;
  /// Maximum number of times to retry when the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of -1 (forever), maximum of 10000.
  late final pulumi.Output<int> maximumRetryAttempts;
  /// CloudWatch metrics configuration of the event source. Only available for stream sources (DynamoDB and Kinesis) and SQS queues. See below.
  late final pulumi.Output<EventSourceMappingMetricsConfig?> metricsConfig;
  /// Number of batches to process from each shard concurrently. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of 1, maximum of 10.
  late final pulumi.Output<int> parallelizationFactor;
  /// Event poller configuration for the event source. Only valid for Amazon MSK or self-managed Apache Kafka sources. See below.
  late final pulumi.Output<EventSourceMappingProvisionedPollerConfig?> provisionedPollerConfig;
  /// Name of the Amazon MQ broker destination queue to consume. Only available for MQ sources. The list must contain exactly one queue name.
  late final pulumi.Output<String?> queues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Scaling configuration of the event source. Only available for SQS queues. See below.
  late final pulumi.Output<EventSourceMappingScalingConfig?> scalingConfig;
  /// For Self Managed Kafka sources, the location of the self managed cluster. If set, configuration must also include `sourceAccessConfiguration`. See below.
  late final pulumi.Output<EventSourceMappingSelfManagedEventSource?> selfManagedEventSource;
  /// Additional configuration block for Self Managed Kafka sources. Incompatible with `eventSourceArn` and `amazonManagedKafkaEventSourceConfig`. See below.
  late final pulumi.Output<EventSourceMappingSelfManagedKafkaEventSourceConfig> selfManagedKafkaEventSourceConfig;
  /// For Self Managed Kafka sources, the access configuration for the source. If set, configuration must also include `selfManagedEventSource`. See below.
  late final pulumi.Output<List<EventSourceMappingSourceAccessConfiguration>?> sourceAccessConfigurations;
  /// Position in the stream where AWS Lambda should start reading. Must be one of `AT_TIMESTAMP` (Kinesis only), `LATEST` or `TRIM_HORIZON` if getting events from Kinesis, DynamoDB, MSK or Self Managed Apache Kafka. Must not be provided if getting events from SQS. More information about these positions can be found in the [AWS DynamoDB Streams API Reference](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html) and [AWS Kinesis API Reference](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType).
  late final pulumi.Output<String?> startingPosition;
  /// Timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of the data record which to start reading when using `startingPosition` set to `AT_TIMESTAMP`. If a record with this exact timestamp does not exist, the next later record is chosen. If the timestamp is older than the current trim horizon, the oldest available record is chosen.
  late final pulumi.Output<String?> startingPositionTimestamp;
  /// State of the event source mapping.
  late final pulumi.Output<String> state;
  /// Reason the event source mapping is in its current state.
  late final pulumi.Output<String> stateTransitionReason;
  /// Map of tags to assign to the object. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Name of the Kafka topics. Only available for MSK sources. A single topic name must be specified.
  late final pulumi.Output<List<String>?> topics;
  /// Duration in seconds of a processing window for [AWS Lambda streaming analytics](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-windows). The range is between 1 second up to 900 seconds. Only available for stream sources (DynamoDB and Kinesis).
  late final pulumi.Output<int?> tumblingWindowInSeconds;
  /// Whether to apply resource level timeout values while retrying eventually consistent API operations. By default the provider uses a 5 minute timeout to allow for propagation in the Lambda service. When set to `true`, this default value is replaced with the configurable resource timeouts. Increased timeout values may be useful in highly active accounts, or regions where propagation delays are inconsistent.
  late final pulumi.Output<bool?> useResourceTimeoutForPropagation;
  /// UUID of the created event source mapping.
  late final pulumi.Output<String> uuid;

  /// Creates a new [EventSourceMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSourceMapping]. {@macro pulumi_lambda_event_source_mapping_event_source_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSourceMapping(
    String name, {
    EventSourceMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/eventSourceMapping:EventSourceMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    amazonManagedKafkaEventSourceConfig = registerOutput<EventSourceMappingAmazonManagedKafkaEventSourceConfig>('amazonManagedKafkaEventSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingAmazonManagedKafkaEventSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    batchSize = registerOutput<int?>('batchSize');
    bisectBatchOnFunctionError = registerOutput<bool?>('bisectBatchOnFunctionError');
    destinationConfig = registerOutput<EventSourceMappingDestinationConfig?>('destinationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    documentDbEventSourceConfig = registerOutput<EventSourceMappingDocumentDbEventSourceConfig?>('documentDbEventSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingDocumentDbEventSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    eventSourceArn = registerOutput<String?>('eventSourceArn');
    filterCriteria = registerOutput<EventSourceMappingFilterCriteria?>('filterCriteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingFilterCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    functionResponseTypes = registerOutput<List<String>?>('functionResponseTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    lastModified = registerOutput<String>('lastModified');
    lastProcessingResult = registerOutput<String>('lastProcessingResult');
    maximumBatchingWindowInSeconds = registerOutput<int?>('maximumBatchingWindowInSeconds');
    maximumRecordAgeInSeconds = registerOutput<int>('maximumRecordAgeInSeconds');
    maximumRetryAttempts = registerOutput<int>('maximumRetryAttempts');
    metricsConfig = registerOutput<EventSourceMappingMetricsConfig?>('metricsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingMetricsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parallelizationFactor = registerOutput<int>('parallelizationFactor');
    provisionedPollerConfig = registerOutput<EventSourceMappingProvisionedPollerConfig?>('provisionedPollerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingProvisionedPollerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    queues = registerOutput<String?>('queues');
    region = registerOutput<String>('region');
    scalingConfig = registerOutput<EventSourceMappingScalingConfig?>('scalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfManagedEventSource = registerOutput<EventSourceMappingSelfManagedEventSource?>('selfManagedEventSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingSelfManagedEventSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfManagedKafkaEventSourceConfig = registerOutput<EventSourceMappingSelfManagedKafkaEventSourceConfig>('selfManagedKafkaEventSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingSelfManagedKafkaEventSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceAccessConfigurations = registerOutput<List<EventSourceMappingSourceAccessConfiguration>?>('sourceAccessConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventSourceMappingSourceAccessConfiguration>(guardedValue, (value) => EventSourceMappingSourceAccessConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    startingPosition = registerOutput<String?>('startingPosition');
    startingPositionTimestamp = registerOutput<String?>('startingPositionTimestamp');
    state = registerOutput<String>('state');
    stateTransitionReason = registerOutput<String>('stateTransitionReason');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topics = registerOutput<List<String>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tumblingWindowInSeconds = registerOutput<int?>('tumblingWindowInSeconds');
    useResourceTimeoutForPropagation = registerOutput<bool?>('useResourceTimeoutForPropagation');
    uuid = registerOutput<String>('uuid');
  }

  /// Gets an existing [EventSourceMapping] resource's state with the given [name] and [id].
  static EventSourceMapping get(
    String name,
    pulumi.Input<String> id, {
    EventSourceMappingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventSourceMapping._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EventSourceMapping._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/eventSourceMapping:EventSourceMapping',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amazonManagedKafkaEventSourceConfig = registerOutput<EventSourceMappingAmazonManagedKafkaEventSourceConfig>('amazonManagedKafkaEventSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingAmazonManagedKafkaEventSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    batchSize = registerOutput<int?>('batchSize');
    bisectBatchOnFunctionError = registerOutput<bool?>('bisectBatchOnFunctionError');
    destinationConfig = registerOutput<EventSourceMappingDestinationConfig?>('destinationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    documentDbEventSourceConfig = registerOutput<EventSourceMappingDocumentDbEventSourceConfig?>('documentDbEventSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingDocumentDbEventSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    eventSourceArn = registerOutput<String?>('eventSourceArn');
    filterCriteria = registerOutput<EventSourceMappingFilterCriteria?>('filterCriteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingFilterCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    functionResponseTypes = registerOutput<List<String>?>('functionResponseTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    lastModified = registerOutput<String>('lastModified');
    lastProcessingResult = registerOutput<String>('lastProcessingResult');
    maximumBatchingWindowInSeconds = registerOutput<int?>('maximumBatchingWindowInSeconds');
    maximumRecordAgeInSeconds = registerOutput<int>('maximumRecordAgeInSeconds');
    maximumRetryAttempts = registerOutput<int>('maximumRetryAttempts');
    metricsConfig = registerOutput<EventSourceMappingMetricsConfig?>('metricsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingMetricsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parallelizationFactor = registerOutput<int>('parallelizationFactor');
    provisionedPollerConfig = registerOutput<EventSourceMappingProvisionedPollerConfig?>('provisionedPollerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingProvisionedPollerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    queues = registerOutput<String?>('queues');
    region = registerOutput<String>('region');
    scalingConfig = registerOutput<EventSourceMappingScalingConfig?>('scalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfManagedEventSource = registerOutput<EventSourceMappingSelfManagedEventSource?>('selfManagedEventSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingSelfManagedEventSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfManagedKafkaEventSourceConfig = registerOutput<EventSourceMappingSelfManagedKafkaEventSourceConfig>('selfManagedKafkaEventSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingSelfManagedKafkaEventSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceAccessConfigurations = registerOutput<List<EventSourceMappingSourceAccessConfiguration>?>('sourceAccessConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventSourceMappingSourceAccessConfiguration>(guardedValue, (value) => EventSourceMappingSourceAccessConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    startingPosition = registerOutput<String?>('startingPosition');
    startingPositionTimestamp = registerOutput<String?>('startingPositionTimestamp');
    this.state = registerOutput<String>('state');
    stateTransitionReason = registerOutput<String>('stateTransitionReason');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topics = registerOutput<List<String>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tumblingWindowInSeconds = registerOutput<int?>('tumblingWindowInSeconds');
    useResourceTimeoutForPropagation = registerOutput<bool?>('useResourceTimeoutForPropagation');
    uuid = registerOutput<String>('uuid');
  }

  /// Creates a typed reference to an existing [EventSourceMapping] resource.
  EventSourceMapping.reference(String urn)
    : super(
        'aws:lambda/eventSourceMapping:EventSourceMapping',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    amazonManagedKafkaEventSourceConfig = registerOutput<EventSourceMappingAmazonManagedKafkaEventSourceConfig>('amazonManagedKafkaEventSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingAmazonManagedKafkaEventSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    batchSize = registerOutput<int?>('batchSize');
    bisectBatchOnFunctionError = registerOutput<bool?>('bisectBatchOnFunctionError');
    destinationConfig = registerOutput<EventSourceMappingDestinationConfig?>('destinationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingDestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    documentDbEventSourceConfig = registerOutput<EventSourceMappingDocumentDbEventSourceConfig?>('documentDbEventSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingDocumentDbEventSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    eventSourceArn = registerOutput<String?>('eventSourceArn');
    filterCriteria = registerOutput<EventSourceMappingFilterCriteria?>('filterCriteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingFilterCriteria.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    functionResponseTypes = registerOutput<List<String>?>('functionResponseTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    lastModified = registerOutput<String>('lastModified');
    lastProcessingResult = registerOutput<String>('lastProcessingResult');
    maximumBatchingWindowInSeconds = registerOutput<int?>('maximumBatchingWindowInSeconds');
    maximumRecordAgeInSeconds = registerOutput<int>('maximumRecordAgeInSeconds');
    maximumRetryAttempts = registerOutput<int>('maximumRetryAttempts');
    metricsConfig = registerOutput<EventSourceMappingMetricsConfig?>('metricsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingMetricsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parallelizationFactor = registerOutput<int>('parallelizationFactor');
    provisionedPollerConfig = registerOutput<EventSourceMappingProvisionedPollerConfig?>('provisionedPollerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingProvisionedPollerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    queues = registerOutput<String?>('queues');
    region = registerOutput<String>('region');
    scalingConfig = registerOutput<EventSourceMappingScalingConfig?>('scalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfManagedEventSource = registerOutput<EventSourceMappingSelfManagedEventSource?>('selfManagedEventSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingSelfManagedEventSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfManagedKafkaEventSourceConfig = registerOutput<EventSourceMappingSelfManagedKafkaEventSourceConfig>('selfManagedKafkaEventSourceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventSourceMappingSelfManagedKafkaEventSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceAccessConfigurations = registerOutput<List<EventSourceMappingSourceAccessConfiguration>?>('sourceAccessConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventSourceMappingSourceAccessConfiguration>(guardedValue, (value) => EventSourceMappingSourceAccessConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    startingPosition = registerOutput<String?>('startingPosition');
    startingPositionTimestamp = registerOutput<String?>('startingPositionTimestamp');
    state = registerOutput<String>('state');
    stateTransitionReason = registerOutput<String>('stateTransitionReason');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    topics = registerOutput<List<String>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tumblingWindowInSeconds = registerOutput<int?>('tumblingWindowInSeconds');
    useResourceTimeoutForPropagation = registerOutput<bool?>('useResourceTimeoutForPropagation');
    uuid = registerOutput<String>('uuid');
  }
}
