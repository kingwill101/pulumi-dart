import 'package:pulumi/pulumi.dart';
import '../event_source_mapping_amazon_managed_kafka_event_source_config/event_source_mapping_amazon_managed_kafka_event_source_config.dart';
import '../event_source_mapping_destination_config/event_source_mapping_destination_config.dart';
import '../event_source_mapping_document_db_event_source_config/event_source_mapping_document_db_event_source_config.dart';
import '../event_source_mapping_filter_criteria/event_source_mapping_filter_criteria.dart';
import '../event_source_mapping_metrics_config/event_source_mapping_metrics_config.dart';
import '../event_source_mapping_provisioned_poller_config/event_source_mapping_provisioned_poller_config.dart';
import '../event_source_mapping_scaling_config/event_source_mapping_scaling_config.dart';
import '../event_source_mapping_self_managed_event_source/event_source_mapping_self_managed_event_source.dart';
import '../event_source_mapping_self_managed_kafka_event_source_config/event_source_mapping_self_managed_kafka_event_source_config.dart';
import '../event_source_mapping_source_access_configuration/event_source_mapping_source_access_configuration.dart';
import 'event_source_mapping_args.dart';

/// Manages an AWS Lambda Event Source Mapping. Use this resource to connect Lambda functions to event sources like Kinesis, DynamoDB, SQS, Amazon MQ, and Managed Streaming for Apache Kafka (MSK).
///
/// For information about Lambda and how to use it, see [What is AWS Lambda?](http://docs.aws.amazon.com/lambda/latest/dg/welcome.html). For information about event source mappings, see [CreateEventSourceMapping](http://docs.aws.amazon.com/lambda/latest/dg/API_CreateEventSourceMapping.html) in the API docs.
///
/// ## Example Usage
///
/// ### DynamoDB Stream
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
/// eventSourceArn: exampleAwsDynamodbTable.streamArn,
/// functionName: exampleAwsLambdaFunction.arn,
/// startingPosition: "LATEST",
/// tags: {
/// Name: "dynamodb-stream-mapping",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
/// event_source_arn=example_aws_dynamodb_table["streamArn"],
/// function_name=example_aws_lambda_function["arn"],
/// starting_position="LATEST",
/// tags={
/// "Name": "dynamodb-stream-mapping",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.EventSourceMapping("example", new()
/// {
/// EventSourceArn = exampleAwsDynamodbTable.StreamArn,
/// FunctionName = exampleAwsLambdaFunction.Arn,
/// StartingPosition = "LATEST",
/// Tags =
/// {
/// { "Name", "dynamodb-stream-mapping" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// EventSourceArn:   pulumi.Any(exampleAwsDynamodbTable.StreamArn),
/// FunctionName:     pulumi.Any(exampleAwsLambdaFunction.Arn),
/// StartingPosition: pulumi.String("LATEST"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("dynamodb-stream-mapping"),
/// },
/// })
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
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
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
/// var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
/// .eventSourceArn(exampleAwsDynamodbTable.streamArn())
/// .functionName(exampleAwsLambdaFunction.arn())
/// .startingPosition("LATEST")
/// .tags(Map.of("Name", "dynamodb-stream-mapping"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:EventSourceMapping
/// properties:
/// eventSourceArn: ${exampleAwsDynamodbTable.streamArn}
/// functionName: ${exampleAwsLambdaFunction.arn}
/// startingPosition: LATEST
/// tags:
/// Name: dynamodb-stream-mapping
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Kinesis Stream
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
/// eventSourceArn: exampleAwsKinesisStream.arn,
/// functionName: exampleAwsLambdaFunction.arn,
/// startingPosition: "LATEST",
/// batchSize: 100,
/// maximumBatchingWindowInSeconds: 5,
/// parallelizationFactor: 2,
/// destinationConfig: {
/// onFailure: {
/// destinationArn: dlq.arn,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
/// event_source_arn=example_aws_kinesis_stream["arn"],
/// function_name=example_aws_lambda_function["arn"],
/// starting_position="LATEST",
/// batch_size=100,
/// maximum_batching_window_in_seconds=5,
/// parallelization_factor=2,
/// destination_config={
/// "on_failure": {
/// "destination_arn": dlq["arn"],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.EventSourceMapping("example", new()
/// {
/// EventSourceArn = exampleAwsKinesisStream.Arn,
/// FunctionName = exampleAwsLambdaFunction.Arn,
/// StartingPosition = "LATEST",
/// BatchSize = 100,
/// MaximumBatchingWindowInSeconds = 5,
/// ParallelizationFactor = 2,
/// DestinationConfig = new Aws.Lambda.Inputs.EventSourceMappingDestinationConfigArgs
/// {
/// OnFailure = new Aws.Lambda.Inputs.EventSourceMappingDestinationConfigOnFailureArgs
/// {
/// DestinationArn = dlq.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// EventSourceArn:                 pulumi.Any(exampleAwsKinesisStream.Arn),
/// FunctionName:                   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// StartingPosition:               pulumi.String("LATEST"),
/// BatchSize:                      pulumi.Int(100),
/// MaximumBatchingWindowInSeconds: pulumi.Int(5),
/// ParallelizationFactor:          pulumi.Int(2),
/// DestinationConfig: &lambda.EventSourceMappingDestinationConfigArgs{
/// OnFailure: &lambda.EventSourceMappingDestinationConfigOnFailureArgs{
/// DestinationArn: pulumi.Any(dlq.Arn),
/// },
/// },
/// })
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
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingDestinationConfigArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingDestinationConfigOnFailureArgs;
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
/// var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
/// .eventSourceArn(exampleAwsKinesisStream.arn())
/// .functionName(exampleAwsLambdaFunction.arn())
/// .startingPosition("LATEST")
/// .batchSize(100)
/// .maximumBatchingWindowInSeconds(5)
/// .parallelizationFactor(2)
/// .destinationConfig(EventSourceMappingDestinationConfigArgs.builder()
/// .onFailure(EventSourceMappingDestinationConfigOnFailureArgs.builder()
/// .destinationArn(dlq.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:EventSourceMapping
/// properties:
/// eventSourceArn: ${exampleAwsKinesisStream.arn}
/// functionName: ${exampleAwsLambdaFunction.arn}
/// startingPosition: LATEST
/// batchSize: 100
/// maximumBatchingWindowInSeconds: 5
/// parallelizationFactor: 2
/// destinationConfig:
/// onFailure:
/// destinationArn: ${dlq.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### SQS Queue
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
/// eventSourceArn: exampleAwsSqsQueue.arn,
/// functionName: exampleAwsLambdaFunction.arn,
/// batchSize: 10,
/// scalingConfig: {
/// maximumConcurrency: 100,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
/// event_source_arn=example_aws_sqs_queue["arn"],
/// function_name=example_aws_lambda_function["arn"],
/// batch_size=10,
/// scaling_config={
/// "maximum_concurrency": 100,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.EventSourceMapping("example", new()
/// {
/// EventSourceArn = exampleAwsSqsQueue.Arn,
/// FunctionName = exampleAwsLambdaFunction.Arn,
/// BatchSize = 10,
/// ScalingConfig = new Aws.Lambda.Inputs.EventSourceMappingScalingConfigArgs
/// {
/// MaximumConcurrency = 100,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// EventSourceArn: pulumi.Any(exampleAwsSqsQueue.Arn),
/// FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// BatchSize:      pulumi.Int(10),
/// ScalingConfig: &lambda.EventSourceMappingScalingConfigArgs{
/// MaximumConcurrency: pulumi.Int(100),
/// },
/// })
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
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingScalingConfigArgs;
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
/// var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
/// .eventSourceArn(exampleAwsSqsQueue.arn())
/// .functionName(exampleAwsLambdaFunction.arn())
/// .batchSize(10)
/// .scalingConfig(EventSourceMappingScalingConfigArgs.builder()
/// .maximumConcurrency(100)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:EventSourceMapping
/// properties:
/// eventSourceArn: ${exampleAwsSqsQueue.arn}
/// functionName: ${exampleAwsLambdaFunction.arn}
/// batchSize: 10
/// scalingConfig:
/// maximumConcurrency: 100
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### SQS with Event Filtering
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
/// eventSourceArn: exampleAwsSqsQueue.arn,
/// functionName: exampleAwsLambdaFunction.arn,
/// filterCriteria: {
/// filters: [{
/// pattern: JSON.stringify({
/// body: {
/// Temperature: [{
/// numeric: [
/// ">",
/// 0,
/// "<=",
/// 100,
/// ],
/// }],
/// Location: ["New York"],
/// },
/// }),
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
/// event_source_arn=example_aws_sqs_queue["arn"],
/// function_name=example_aws_lambda_function["arn"],
/// filter_criteria={
/// "filters": [{
/// "pattern": json.dumps({
/// "body": {
/// "Temperature": [{
/// "numeric": [
/// ">",
/// 0,
/// "<=",
/// 100,
/// ],
/// }],
/// "Location": ["New York"],
/// },
/// }),
/// }],
/// })
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
/// var example = new Aws.Lambda.EventSourceMapping("example", new()
/// {
/// EventSourceArn = exampleAwsSqsQueue.Arn,
/// FunctionName = exampleAwsLambdaFunction.Arn,
/// FilterCriteria = new Aws.Lambda.Inputs.EventSourceMappingFilterCriteriaArgs
/// {
/// Filters = new[]
/// {
/// new Aws.Lambda.Inputs.EventSourceMappingFilterCriteriaFilterArgs
/// {
/// Pattern = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["body"] = new Dictionary<string, object?>
/// {
/// ["Temperature"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["numeric"] = new object?[]
/// {
/// ">",
/// 0,
/// "<=",
/// 100,
/// },
/// },
/// },
/// ["Location"] = new[]
/// {
/// "New York",
/// },
/// },
/// }),
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "body": map[string]interface{}{
/// "Temperature": []map[string]interface{}{
/// map[string]interface{}{
/// "numeric": []interface{}{
/// ">",
/// 0,
/// "<=",
/// 100,
/// },
/// },
/// },
/// "Location": []string{
/// "New York",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// EventSourceArn: pulumi.Any(exampleAwsSqsQueue.Arn),
/// FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// FilterCriteria: &lambda.EventSourceMappingFilterCriteriaArgs{
/// Filters: lambda.EventSourceMappingFilterCriteriaFilterArray{
/// &lambda.EventSourceMappingFilterCriteriaFilterArgs{
/// Pattern: pulumi.String(json0),
/// },
/// },
/// },
/// })
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
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingFilterCriteriaArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
/// .eventSourceArn(exampleAwsSqsQueue.arn())
/// .functionName(exampleAwsLambdaFunction.arn())
/// .filterCriteria(EventSourceMappingFilterCriteriaArgs.builder()
/// .filters(EventSourceMappingFilterCriteriaFilterArgs.builder()
/// .pattern(serializeJson(
/// jsonObject(
/// jsonProperty("body", jsonObject(
/// jsonProperty("Temperature", jsonArray(jsonObject(
/// jsonProperty("numeric", jsonArray(
/// ">",
/// 0,
/// "<=",
/// 100
/// ))
/// ))),
/// jsonProperty("Location", jsonArray("New York"))
/// ))
/// )))
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:EventSourceMapping
/// properties:
/// eventSourceArn: ${exampleAwsSqsQueue.arn}
/// functionName: ${exampleAwsLambdaFunction.arn}
/// filterCriteria:
/// filters:
/// - pattern:
/// fn::toJSON:
/// body:
/// Temperature:
/// - numeric:
/// - '>'
/// - 0
/// - <=
/// - 100
/// Location:
/// - New York
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Amazon MSK
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
/// eventSourceArn: exampleAwsMskCluster.arn,
/// functionName: exampleAwsLambdaFunction.arn,
/// topics: [
/// "orders",
/// "inventory",
/// ],
/// startingPosition: "TRIM_HORIZON",
/// batchSize: 100,
/// amazonManagedKafkaEventSourceConfig: {
/// consumerGroupId: "lambda-consumer-group",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
/// event_source_arn=example_aws_msk_cluster["arn"],
/// function_name=example_aws_lambda_function["arn"],
/// topics=[
/// "orders",
/// "inventory",
/// ],
/// starting_position="TRIM_HORIZON",
/// batch_size=100,
/// amazon_managed_kafka_event_source_config={
/// "consumer_group_id": "lambda-consumer-group",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.EventSourceMapping("example", new()
/// {
/// EventSourceArn = exampleAwsMskCluster.Arn,
/// FunctionName = exampleAwsLambdaFunction.Arn,
/// Topics = new[]
/// {
/// "orders",
/// "inventory",
/// },
/// StartingPosition = "TRIM_HORIZON",
/// BatchSize = 100,
/// AmazonManagedKafkaEventSourceConfig = new Aws.Lambda.Inputs.EventSourceMappingAmazonManagedKafkaEventSourceConfigArgs
/// {
/// ConsumerGroupId = "lambda-consumer-group",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// EventSourceArn: pulumi.Any(exampleAwsMskCluster.Arn),
/// FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// Topics: pulumi.StringArray{
/// pulumi.String("orders"),
/// pulumi.String("inventory"),
/// },
/// StartingPosition: pulumi.String("TRIM_HORIZON"),
/// BatchSize:        pulumi.Int(100),
/// AmazonManagedKafkaEventSourceConfig: &lambda.EventSourceMappingAmazonManagedKafkaEventSourceConfigArgs{
/// ConsumerGroupId: pulumi.String("lambda-consumer-group"),
/// },
/// })
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
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingAmazonManagedKafkaEventSourceConfigArgs;
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
/// var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
/// .eventSourceArn(exampleAwsMskCluster.arn())
/// .functionName(exampleAwsLambdaFunction.arn())
/// .topics(
/// "orders",
/// "inventory")
/// .startingPosition("TRIM_HORIZON")
/// .batchSize(100)
/// .amazonManagedKafkaEventSourceConfig(EventSourceMappingAmazonManagedKafkaEventSourceConfigArgs.builder()
/// .consumerGroupId("lambda-consumer-group")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:EventSourceMapping
/// properties:
/// eventSourceArn: ${exampleAwsMskCluster.arn}
/// functionName: ${exampleAwsLambdaFunction.arn}
/// topics:
/// - orders
/// - inventory
/// startingPosition: TRIM_HORIZON
/// batchSize: 100
/// amazonManagedKafkaEventSourceConfig:
/// consumerGroupId: lambda-consumer-group
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Self-Managed Apache Kafka
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
/// functionName: exampleAwsLambdaFunction.arn,
/// topics: ["orders"],
/// startingPosition: "TRIM_HORIZON",
/// selfManagedEventSource: {
/// endpoints: {
/// KAFKA_BOOTSTRAP_SERVERS: "kafka1.example.com:9092,kafka2.example.com:9092",
/// },
/// },
/// selfManagedKafkaEventSourceConfig: {
/// consumerGroupId: "lambda-consumer-group",
/// },
/// sourceAccessConfigurations: [
/// {
/// type: "VPC_SUBNET",
/// uri: `subnet:${example1.id}`,
/// },
/// {
/// type: "VPC_SUBNET",
/// uri: `subnet:${example2.id}`,
/// },
/// {
/// type: "VPC_SECURITY_GROUP",
/// uri: `security_group:${exampleAwsSecurityGroup.id}`,
/// },
/// ],
/// provisionedPollerConfig: {
/// maximumPollers: 100,
/// minimumPollers: 10,
/// pollerGroupName: "group-123",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
/// function_name=example_aws_lambda_function["arn"],
/// topics=["orders"],
/// starting_position="TRIM_HORIZON",
/// self_managed_event_source={
/// "endpoints": {
/// "KAFKA_BOOTSTRAP_SERVERS": "kafka1.example.com:9092,kafka2.example.com:9092",
/// },
/// },
/// self_managed_kafka_event_source_config={
/// "consumer_group_id": "lambda-consumer-group",
/// },
/// source_access_configurations=[
/// {
/// "type": "VPC_SUBNET",
/// "uri": f"subnet:{example1['id']}",
/// },
/// {
/// "type": "VPC_SUBNET",
/// "uri": f"subnet:{example2['id']}",
/// },
/// {
/// "type": "VPC_SECURITY_GROUP",
/// "uri": f"security_group:{example_aws_security_group['id']}",
/// },
/// ],
/// provisioned_poller_config={
/// "maximum_pollers": 100,
/// "minimum_pollers": 10,
/// "poller_group_name": "group-123",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.EventSourceMapping("example", new()
/// {
/// FunctionName = exampleAwsLambdaFunction.Arn,
/// Topics = new[]
/// {
/// "orders",
/// },
/// StartingPosition = "TRIM_HORIZON",
/// SelfManagedEventSource = new Aws.Lambda.Inputs.EventSourceMappingSelfManagedEventSourceArgs
/// {
/// Endpoints =
/// {
/// { "KAFKA_BOOTSTRAP_SERVERS", "kafka1.example.com:9092,kafka2.example.com:9092" },
/// },
/// },
/// SelfManagedKafkaEventSourceConfig = new Aws.Lambda.Inputs.EventSourceMappingSelfManagedKafkaEventSourceConfigArgs
/// {
/// ConsumerGroupId = "lambda-consumer-group",
/// },
/// SourceAccessConfigurations = new[]
/// {
/// new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
/// {
/// Type = "VPC_SUBNET",
/// Uri = $"subnet:{example1.Id}",
/// },
/// new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
/// {
/// Type = "VPC_SUBNET",
/// Uri = $"subnet:{example2.Id}",
/// },
/// new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
/// {
/// Type = "VPC_SECURITY_GROUP",
/// Uri = $"security_group:{exampleAwsSecurityGroup.Id}",
/// },
/// },
/// ProvisionedPollerConfig = new Aws.Lambda.Inputs.EventSourceMappingProvisionedPollerConfigArgs
/// {
/// MaximumPollers = 100,
/// MinimumPollers = 10,
/// PollerGroupName = "group-123",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// FunctionName: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// Topics: pulumi.StringArray{
/// pulumi.String("orders"),
/// },
/// StartingPosition: pulumi.String("TRIM_HORIZON"),
/// SelfManagedEventSource: &lambda.EventSourceMappingSelfManagedEventSourceArgs{
/// Endpoints: pulumi.StringMap{
/// "KAFKA_BOOTSTRAP_SERVERS": pulumi.String("kafka1.example.com:9092,kafka2.example.com:9092"),
/// },
/// },
/// SelfManagedKafkaEventSourceConfig: &lambda.EventSourceMappingSelfManagedKafkaEventSourceConfigArgs{
/// ConsumerGroupId: pulumi.String("lambda-consumer-group"),
/// },
/// SourceAccessConfigurations: lambda.EventSourceMappingSourceAccessConfigurationArray{
/// &lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// Type: pulumi.String("VPC_SUBNET"),
/// Uri:  pulumi.Sprintf("subnet:%v", example1.Id),
/// },
/// &lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// Type: pulumi.String("VPC_SUBNET"),
/// Uri:  pulumi.Sprintf("subnet:%v", example2.Id),
/// },
/// &lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// Type: pulumi.String("VPC_SECURITY_GROUP"),
/// Uri:  pulumi.Sprintf("security_group:%v", exampleAwsSecurityGroup.Id),
/// },
/// },
/// ProvisionedPollerConfig: &lambda.EventSourceMappingProvisionedPollerConfigArgs{
/// MaximumPollers:  pulumi.Int(100),
/// MinimumPollers:  pulumi.Int(10),
/// PollerGroupName: pulumi.String("group-123"),
/// },
/// })
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
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSelfManagedEventSourceArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSelfManagedKafkaEventSourceConfigArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSourceAccessConfigurationArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingProvisionedPollerConfigArgs;
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
/// var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
/// .functionName(exampleAwsLambdaFunction.arn())
/// .topics("orders")
/// .startingPosition("TRIM_HORIZON")
/// .selfManagedEventSource(EventSourceMappingSelfManagedEventSourceArgs.builder()
/// .endpoints(Map.of("KAFKA_BOOTSTRAP_SERVERS", "kafka1.example.com:9092,kafka2.example.com:9092"))
/// .build())
/// .selfManagedKafkaEventSourceConfig(EventSourceMappingSelfManagedKafkaEventSourceConfigArgs.builder()
/// .consumerGroupId("lambda-consumer-group")
/// .build())
/// .sourceAccessConfigurations(
/// EventSourceMappingSourceAccessConfigurationArgs.builder()
/// .type("VPC_SUBNET")
/// .uri(String.format("subnet:%s", example1.id()))
/// .build(),
/// EventSourceMappingSourceAccessConfigurationArgs.builder()
/// .type("VPC_SUBNET")
/// .uri(String.format("subnet:%s", example2.id()))
/// .build(),
/// EventSourceMappingSourceAccessConfigurationArgs.builder()
/// .type("VPC_SECURITY_GROUP")
/// .uri(String.format("security_group:%s", exampleAwsSecurityGroup.id()))
/// .build())
/// .provisionedPollerConfig(EventSourceMappingProvisionedPollerConfigArgs.builder()
/// .maximumPollers(100)
/// .minimumPollers(10)
/// .pollerGroupName("group-123")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:EventSourceMapping
/// properties:
/// functionName: ${exampleAwsLambdaFunction.arn}
/// topics:
/// - orders
/// startingPosition: TRIM_HORIZON
/// selfManagedEventSource:
/// endpoints:
/// KAFKA_BOOTSTRAP_SERVERS: kafka1.example.com:9092,kafka2.example.com:9092
/// selfManagedKafkaEventSourceConfig:
/// consumerGroupId: lambda-consumer-group
/// sourceAccessConfigurations:
/// - type: VPC_SUBNET
/// uri: subnet:${example1.id}
/// - type: VPC_SUBNET
/// uri: subnet:${example2.id}
/// - type: VPC_SECURITY_GROUP
/// uri: security_group:${exampleAwsSecurityGroup.id}
/// provisionedPollerConfig:
/// maximumPollers: 100
/// minimumPollers: 10
/// pollerGroupName: group-123
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Amazon MQ (ActiveMQ)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
/// eventSourceArn: exampleAwsMqBroker.arn,
/// functionName: exampleAwsLambdaFunction.arn,
/// queues: "orders",
/// batchSize: 10,
/// sourceAccessConfigurations: [{
/// type: "BASIC_AUTH",
/// uri: exampleAwsSecretsmanagerSecretVersion.arn,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
/// event_source_arn=example_aws_mq_broker["arn"],
/// function_name=example_aws_lambda_function["arn"],
/// queues="orders",
/// batch_size=10,
/// source_access_configurations=[{
/// "type": "BASIC_AUTH",
/// "uri": example_aws_secretsmanager_secret_version["arn"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.EventSourceMapping("example", new()
/// {
/// EventSourceArn = exampleAwsMqBroker.Arn,
/// FunctionName = exampleAwsLambdaFunction.Arn,
/// Queues = "orders",
/// BatchSize = 10,
/// SourceAccessConfigurations = new[]
/// {
/// new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
/// {
/// Type = "BASIC_AUTH",
/// Uri = exampleAwsSecretsmanagerSecretVersion.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// EventSourceArn: pulumi.Any(exampleAwsMqBroker.Arn),
/// FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// Queues:         pulumi.String("orders"),
/// BatchSize:      pulumi.Int(10),
/// SourceAccessConfigurations: lambda.EventSourceMappingSourceAccessConfigurationArray{
/// &lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// Type: pulumi.String("BASIC_AUTH"),
/// Uri:  pulumi.Any(exampleAwsSecretsmanagerSecretVersion.Arn),
/// },
/// },
/// })
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
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSourceAccessConfigurationArgs;
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
/// var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
/// .eventSourceArn(exampleAwsMqBroker.arn())
/// .functionName(exampleAwsLambdaFunction.arn())
/// .queues("orders")
/// .batchSize(10)
/// .sourceAccessConfigurations(EventSourceMappingSourceAccessConfigurationArgs.builder()
/// .type("BASIC_AUTH")
/// .uri(exampleAwsSecretsmanagerSecretVersion.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:EventSourceMapping
/// properties:
/// eventSourceArn: ${exampleAwsMqBroker.arn}
/// functionName: ${exampleAwsLambdaFunction.arn}
/// queues: orders
/// batchSize: 10
/// sourceAccessConfigurations:
/// - type: BASIC_AUTH
/// uri: ${exampleAwsSecretsmanagerSecretVersion.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Amazon MQ (RabbitMQ)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
/// eventSourceArn: exampleAwsMqBroker.arn,
/// functionName: exampleAwsLambdaFunction.arn,
/// queues: "orders",
/// batchSize: 1,
/// sourceAccessConfigurations: [
/// {
/// type: "VIRTUAL_HOST",
/// uri: "/production",
/// },
/// {
/// type: "BASIC_AUTH",
/// uri: exampleAwsSecretsmanagerSecretVersion.arn,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
/// event_source_arn=example_aws_mq_broker["arn"],
/// function_name=example_aws_lambda_function["arn"],
/// queues="orders",
/// batch_size=1,
/// source_access_configurations=[
/// {
/// "type": "VIRTUAL_HOST",
/// "uri": "/production",
/// },
/// {
/// "type": "BASIC_AUTH",
/// "uri": example_aws_secretsmanager_secret_version["arn"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.EventSourceMapping("example", new()
/// {
/// EventSourceArn = exampleAwsMqBroker.Arn,
/// FunctionName = exampleAwsLambdaFunction.Arn,
/// Queues = "orders",
/// BatchSize = 1,
/// SourceAccessConfigurations = new[]
/// {
/// new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
/// {
/// Type = "VIRTUAL_HOST",
/// Uri = "/production",
/// },
/// new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
/// {
/// Type = "BASIC_AUTH",
/// Uri = exampleAwsSecretsmanagerSecretVersion.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// EventSourceArn: pulumi.Any(exampleAwsMqBroker.Arn),
/// FunctionName:   pulumi.Any(exampleAwsLambdaFunction.Arn),
/// Queues:         pulumi.String("orders"),
/// BatchSize:      pulumi.Int(1),
/// SourceAccessConfigurations: lambda.EventSourceMappingSourceAccessConfigurationArray{
/// &lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// Type: pulumi.String("VIRTUAL_HOST"),
/// Uri:  pulumi.String("/production"),
/// },
/// &lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// Type: pulumi.String("BASIC_AUTH"),
/// Uri:  pulumi.Any(exampleAwsSecretsmanagerSecretVersion.Arn),
/// },
/// },
/// })
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
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSourceAccessConfigurationArgs;
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
/// var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
/// .eventSourceArn(exampleAwsMqBroker.arn())
/// .functionName(exampleAwsLambdaFunction.arn())
/// .queues("orders")
/// .batchSize(1)
/// .sourceAccessConfigurations(
/// EventSourceMappingSourceAccessConfigurationArgs.builder()
/// .type("VIRTUAL_HOST")
/// .uri("/production")
/// .build(),
/// EventSourceMappingSourceAccessConfigurationArgs.builder()
/// .type("BASIC_AUTH")
/// .uri(exampleAwsSecretsmanagerSecretVersion.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:EventSourceMapping
/// properties:
/// eventSourceArn: ${exampleAwsMqBroker.arn}
/// functionName: ${exampleAwsLambdaFunction.arn}
/// queues: orders
/// batchSize: 1
/// sourceAccessConfigurations:
/// - type: VIRTUAL_HOST
/// uri: /production
/// - type: BASIC_AUTH
/// uri: ${exampleAwsSecretsmanagerSecretVersion.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### DocumentDB Change Stream
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.EventSourceMapping("example", {
/// eventSourceArn: exampleAwsDocdbCluster.arn,
/// functionName: exampleAwsLambdaFunction.arn,
/// startingPosition: "LATEST",
/// documentDbEventSourceConfig: {
/// databaseName: "orders",
/// collectionName: "transactions",
/// fullDocument: "UpdateLookup",
/// },
/// sourceAccessConfigurations: [{
/// type: "BASIC_AUTH",
/// uri: exampleAwsSecretsmanagerSecretVersion.arn,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.EventSourceMapping("example",
/// event_source_arn=example_aws_docdb_cluster["arn"],
/// function_name=example_aws_lambda_function["arn"],
/// starting_position="LATEST",
/// document_db_event_source_config={
/// "database_name": "orders",
/// "collection_name": "transactions",
/// "full_document": "UpdateLookup",
/// },
/// source_access_configurations=[{
/// "type": "BASIC_AUTH",
/// "uri": example_aws_secretsmanager_secret_version["arn"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.EventSourceMapping("example", new()
/// {
/// EventSourceArn = exampleAwsDocdbCluster.Arn,
/// FunctionName = exampleAwsLambdaFunction.Arn,
/// StartingPosition = "LATEST",
/// DocumentDbEventSourceConfig = new Aws.Lambda.Inputs.EventSourceMappingDocumentDbEventSourceConfigArgs
/// {
/// DatabaseName = "orders",
/// CollectionName = "transactions",
/// FullDocument = "UpdateLookup",
/// },
/// SourceAccessConfigurations = new[]
/// {
/// new Aws.Lambda.Inputs.EventSourceMappingSourceAccessConfigurationArgs
/// {
/// Type = "BASIC_AUTH",
/// Uri = exampleAwsSecretsmanagerSecretVersion.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewEventSourceMapping(ctx, "example", &lambda.EventSourceMappingArgs{
/// EventSourceArn:   pulumi.Any(exampleAwsDocdbCluster.Arn),
/// FunctionName:     pulumi.Any(exampleAwsLambdaFunction.Arn),
/// StartingPosition: pulumi.String("LATEST"),
/// DocumentDbEventSourceConfig: &lambda.EventSourceMappingDocumentDbEventSourceConfigArgs{
/// DatabaseName:   pulumi.String("orders"),
/// CollectionName: pulumi.String("transactions"),
/// FullDocument:   pulumi.String("UpdateLookup"),
/// },
/// SourceAccessConfigurations: lambda.EventSourceMappingSourceAccessConfigurationArray{
/// &lambda.EventSourceMappingSourceAccessConfigurationArgs{
/// Type: pulumi.String("BASIC_AUTH"),
/// Uri:  pulumi.Any(exampleAwsSecretsmanagerSecretVersion.Arn),
/// },
/// },
/// })
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
/// import com.pulumi.aws.lambda.EventSourceMapping;
/// import com.pulumi.aws.lambda.EventSourceMappingArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingDocumentDbEventSourceConfigArgs;
/// import com.pulumi.aws.lambda.inputs.EventSourceMappingSourceAccessConfigurationArgs;
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
/// var example = new EventSourceMapping("example", EventSourceMappingArgs.builder()
/// .eventSourceArn(exampleAwsDocdbCluster.arn())
/// .functionName(exampleAwsLambdaFunction.arn())
/// .startingPosition("LATEST")
/// .documentDbEventSourceConfig(EventSourceMappingDocumentDbEventSourceConfigArgs.builder()
/// .databaseName("orders")
/// .collectionName("transactions")
/// .fullDocument("UpdateLookup")
/// .build())
/// .sourceAccessConfigurations(EventSourceMappingSourceAccessConfigurationArgs.builder()
/// .type("BASIC_AUTH")
/// .uri(exampleAwsSecretsmanagerSecretVersion.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:EventSourceMapping
/// properties:
/// eventSourceArn: ${exampleAwsDocdbCluster.arn}
/// functionName: ${exampleAwsLambdaFunction.arn}
/// startingPosition: LATEST
/// documentDbEventSourceConfig:
/// databaseName: orders
/// collectionName: transactions
/// fullDocument: UpdateLookup
/// sourceAccessConfigurations:
/// - type: BASIC_AUTH
/// uri: ${exampleAwsSecretsmanagerSecretVersion.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lambda event source mappings using the `UUID` (event source mapping identifier). For example:
///
/// ```sh
/// $ pulumi import aws:lambda/eventSourceMapping:EventSourceMapping example 12345kxodurf3443
/// ```
class EventSourceMapping extends CustomResource {
  /// Additional configuration block for Amazon Managed Kafka sources. Incompatible with <span pulumi-lang-nodejs="`selfManagedEventSource`" pulumi-lang-dotnet="`SelfManagedEventSource`" pulumi-lang-go="`selfManagedEventSource`" pulumi-lang-python="`self_managed_event_source`" pulumi-lang-yaml="`selfManagedEventSource`" pulumi-lang-java="`selfManagedEventSource`">`self_managed_event_source`</span> and <span pulumi-lang-nodejs="`selfManagedKafkaEventSourceConfig`" pulumi-lang-dotnet="`SelfManagedKafkaEventSourceConfig`" pulumi-lang-go="`selfManagedKafkaEventSourceConfig`" pulumi-lang-python="`self_managed_kafka_event_source_config`" pulumi-lang-yaml="`selfManagedKafkaEventSourceConfig`" pulumi-lang-java="`selfManagedKafkaEventSourceConfig`">`self_managed_kafka_event_source_config`</span>. See below.
  late final Output<EventSourceMappingAmazonManagedKafkaEventSourceConfig>
      amazonManagedKafkaEventSourceConfig;

  /// Event source mapping ARN.
  late final Output<String> arn;

  /// Largest number of records that Lambda will retrieve from your event source at the time of invocation. Defaults to <span pulumi-lang-nodejs="`100`" pulumi-lang-dotnet="`100`" pulumi-lang-go="`100`" pulumi-lang-python="`100`" pulumi-lang-yaml="`100`" pulumi-lang-java="`100`">`100`</span> for DynamoDB, Kinesis, MQ and MSK, <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span> for SQS.
  late final Output<int?> batchSize;

  /// Whether to split the batch in two and retry if the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> bisectBatchOnFunctionError;

  /// Amazon SQS queue, Amazon SNS topic or Amazon S3 bucket (only available for Kafka sources) destination for failed records. Only available for stream sources (DynamoDB and Kinesis) and Kafka sources (Amazon MSK and Self-managed Apache Kafka). See below.
  late final Output<EventSourceMappingDestinationConfig?> destinationConfig;

  /// Configuration settings for a DocumentDB event source. See below.
  late final Output<EventSourceMappingDocumentDbEventSourceConfig?>
      documentDbEventSourceConfig;

  /// Whether the mapping is enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// Event source ARN - required for Kinesis stream, DynamoDB stream, SQS queue, MQ broker, MSK cluster or DocumentDB change stream. Incompatible with Self Managed Kafka source.
  late final Output<String?> eventSourceArn;

  /// Criteria to use for [event filtering](https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html) Kinesis stream, DynamoDB stream, SQS queue event sources. See below.
  late final Output<EventSourceMappingFilterCriteria?> filterCriteria;

  /// ARN of the Lambda function the event source mapping is sending events to. (Note: this is a computed value that differs from <span pulumi-lang-nodejs="`functionName`" pulumi-lang-dotnet="`FunctionName`" pulumi-lang-go="`functionName`" pulumi-lang-python="`function_name`" pulumi-lang-yaml="`functionName`" pulumi-lang-java="`functionName`">`function_name`</span> above.)
  late final Output<String> functionArn;

  /// Name or ARN of the Lambda function that will be subscribing to events.
  ///
  /// The following arguments are optional:
  late final Output<String> functionName;

  /// List of current response type enums applied to the event source mapping for [AWS Lambda checkpointing](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-batchfailurereporting). Only available for SQS and stream sources (DynamoDB and Kinesis). Valid values: `ReportBatchItemFailures`.
  late final Output<List<String>?> functionResponseTypes;

  /// ARN of the Key Management Service (KMS) customer managed key that Lambda uses to encrypt your function's filter criteria.
  late final Output<String?> kmsKeyArn;

  /// Date this resource was last modified.
  late final Output<String> lastModified;

  /// Result of the last AWS Lambda invocation of your Lambda function.
  late final Output<String> lastProcessingResult;

  /// Maximum amount of time to gather records before invoking the function, in seconds (between 0 and 300). Records will continue to buffer until either <span pulumi-lang-nodejs="`maximumBatchingWindowInSeconds`" pulumi-lang-dotnet="`MaximumBatchingWindowInSeconds`" pulumi-lang-go="`maximumBatchingWindowInSeconds`" pulumi-lang-python="`maximum_batching_window_in_seconds`" pulumi-lang-yaml="`maximumBatchingWindowInSeconds`" pulumi-lang-java="`maximumBatchingWindowInSeconds`">`maximum_batching_window_in_seconds`</span> expires or <span pulumi-lang-nodejs="`batchSize`" pulumi-lang-dotnet="`BatchSize`" pulumi-lang-go="`batchSize`" pulumi-lang-python="`batch_size`" pulumi-lang-yaml="`batchSize`" pulumi-lang-java="`batchSize`">`batch_size`</span> has been met. For streaming event sources, defaults to as soon as records are available in the stream. Only available for stream sources (DynamoDB and Kinesis) and SQS standard queues.
  late final Output<int?> maximumBatchingWindowInSeconds;

  /// Maximum age of a record that Lambda sends to a function for processing. Only available for stream sources (DynamoDB and Kinesis). Must be either -1 (forever, and the default value) or between 60 and 604800 (inclusive).
  late final Output<int> maximumRecordAgeInSeconds;

  /// Maximum number of times to retry when the function returns an error. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of -1 (forever), maximum of 10000.
  late final Output<int> maximumRetryAttempts;

  /// CloudWatch metrics configuration of the event source. Only available for stream sources (DynamoDB and Kinesis) and SQS queues. See below.
  late final Output<EventSourceMappingMetricsConfig?> metricsConfig;

  /// Number of batches to process from each shard concurrently. Only available for stream sources (DynamoDB and Kinesis). Minimum and default of 1, maximum of 10.
  late final Output<int> parallelizationFactor;

  /// Event poller configuration for the event source. Only valid for Amazon MSK or self-managed Apache Kafka sources. See below.
  late final Output<EventSourceMappingProvisionedPollerConfig?>
      provisionedPollerConfig;

  /// Name of the Amazon MQ broker destination queue to consume. Only available for MQ sources. The list must contain exactly one queue name.
  late final Output<String?> queues;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Scaling configuration of the event source. Only available for SQS queues. See below.
  late final Output<EventSourceMappingScalingConfig?> scalingConfig;

  /// For Self Managed Kafka sources, the location of the self managed cluster. If set, configuration must also include <span pulumi-lang-nodejs="`sourceAccessConfiguration`" pulumi-lang-dotnet="`SourceAccessConfiguration`" pulumi-lang-go="`sourceAccessConfiguration`" pulumi-lang-python="`source_access_configuration`" pulumi-lang-yaml="`sourceAccessConfiguration`" pulumi-lang-java="`sourceAccessConfiguration`">`source_access_configuration`</span>. See below.
  late final Output<EventSourceMappingSelfManagedEventSource?>
      selfManagedEventSource;

  /// Additional configuration block for Self Managed Kafka sources. Incompatible with <span pulumi-lang-nodejs="`eventSourceArn`" pulumi-lang-dotnet="`EventSourceArn`" pulumi-lang-go="`eventSourceArn`" pulumi-lang-python="`event_source_arn`" pulumi-lang-yaml="`eventSourceArn`" pulumi-lang-java="`eventSourceArn`">`event_source_arn`</span> and <span pulumi-lang-nodejs="`amazonManagedKafkaEventSourceConfig`" pulumi-lang-dotnet="`AmazonManagedKafkaEventSourceConfig`" pulumi-lang-go="`amazonManagedKafkaEventSourceConfig`" pulumi-lang-python="`amazon_managed_kafka_event_source_config`" pulumi-lang-yaml="`amazonManagedKafkaEventSourceConfig`" pulumi-lang-java="`amazonManagedKafkaEventSourceConfig`">`amazon_managed_kafka_event_source_config`</span>. See below.
  late final Output<EventSourceMappingSelfManagedKafkaEventSourceConfig>
      selfManagedKafkaEventSourceConfig;

  /// For Self Managed Kafka sources, the access configuration for the source. If set, configuration must also include <span pulumi-lang-nodejs="`selfManagedEventSource`" pulumi-lang-dotnet="`SelfManagedEventSource`" pulumi-lang-go="`selfManagedEventSource`" pulumi-lang-python="`self_managed_event_source`" pulumi-lang-yaml="`selfManagedEventSource`" pulumi-lang-java="`selfManagedEventSource`">`self_managed_event_source`</span>. See below.
  late final Output<List<EventSourceMappingSourceAccessConfiguration>?>
      sourceAccessConfigurations;

  /// Position in the stream where AWS Lambda should start reading. Must be one of `AT_TIMESTAMP` (Kinesis only), `LATEST` or `TRIM_HORIZON` if getting events from Kinesis, DynamoDB, MSK or Self Managed Apache Kafka. Must not be provided if getting events from SQS. More information about these positions can be found in the [AWS DynamoDB Streams API Reference](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_streams_GetShardIterator.html) and [AWS Kinesis API Reference](https://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType).
  late final Output<String?> startingPosition;

  /// Timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) of the data record which to start reading when using <span pulumi-lang-nodejs="`startingPosition`" pulumi-lang-dotnet="`StartingPosition`" pulumi-lang-go="`startingPosition`" pulumi-lang-python="`starting_position`" pulumi-lang-yaml="`startingPosition`" pulumi-lang-java="`startingPosition`">`starting_position`</span> set to `AT_TIMESTAMP`. If a record with this exact timestamp does not exist, the next later record is chosen. If the timestamp is older than the current trim horizon, the oldest available record is chosen.
  late final Output<String?> startingPositionTimestamp;

  /// State of the event source mapping.
  late final Output<String> state;

  /// Reason the event source mapping is in its current state.
  late final Output<String> stateTransitionReason;

  /// Map of tags to assign to the object. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Name of the Kafka topics. Only available for MSK sources. A single topic name must be specified.
  late final Output<List<String>?> topics;

  /// Duration in seconds of a processing window for [AWS Lambda streaming analytics](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-windows). The range is between 1 second up to 900 seconds. Only available for stream sources (DynamoDB and Kinesis).
  late final Output<int?> tumblingWindowInSeconds;

  /// UUID of the created event source mapping.
  late final Output<String> uuid;

  EventSourceMapping(
    String name, {
    EventSourceMappingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/eventSourceMapping:EventSourceMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.amazonManagedKafkaEventSourceConfig =
        registerOutput<EventSourceMappingAmazonManagedKafkaEventSourceConfig>(
            'amazonManagedKafkaEventSourceConfig');
    this.arn = registerOutput<String>('arn');
    this.batchSize = registerOutput<int?>('batchSize');
    this.bisectBatchOnFunctionError =
        registerOutput<bool?>('bisectBatchOnFunctionError');
    this.destinationConfig =
        registerOutput<EventSourceMappingDestinationConfig?>(
            'destinationConfig');
    this.documentDbEventSourceConfig =
        registerOutput<EventSourceMappingDocumentDbEventSourceConfig?>(
            'documentDbEventSourceConfig');
    this.enabled = registerOutput<bool?>('enabled');
    this.eventSourceArn = registerOutput<String?>('eventSourceArn');
    this.filterCriteria =
        registerOutput<EventSourceMappingFilterCriteria?>('filterCriteria');
    this.functionArn = registerOutput<String>('functionArn');
    this.functionName = registerOutput<String>('functionName');
    this.functionResponseTypes =
        registerOutput<List<String>?>('functionResponseTypes');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.lastModified = registerOutput<String>('lastModified');
    this.lastProcessingResult = registerOutput<String>('lastProcessingResult');
    this.maximumBatchingWindowInSeconds =
        registerOutput<int?>('maximumBatchingWindowInSeconds');
    this.maximumRecordAgeInSeconds =
        registerOutput<int>('maximumRecordAgeInSeconds');
    this.maximumRetryAttempts = registerOutput<int>('maximumRetryAttempts');
    this.metricsConfig =
        registerOutput<EventSourceMappingMetricsConfig?>('metricsConfig');
    this.parallelizationFactor = registerOutput<int>('parallelizationFactor');
    this.provisionedPollerConfig =
        registerOutput<EventSourceMappingProvisionedPollerConfig?>(
            'provisionedPollerConfig');
    this.queues = registerOutput<String?>('queues');
    this.region = registerOutput<String>('region');
    this.scalingConfig =
        registerOutput<EventSourceMappingScalingConfig?>('scalingConfig');
    this.selfManagedEventSource =
        registerOutput<EventSourceMappingSelfManagedEventSource?>(
            'selfManagedEventSource');
    this.selfManagedKafkaEventSourceConfig =
        registerOutput<EventSourceMappingSelfManagedKafkaEventSourceConfig>(
            'selfManagedKafkaEventSourceConfig');
    this.sourceAccessConfigurations =
        registerOutput<List<EventSourceMappingSourceAccessConfiguration>?>(
            'sourceAccessConfigurations');
    this.startingPosition = registerOutput<String?>('startingPosition');
    this.startingPositionTimestamp =
        registerOutput<String?>('startingPositionTimestamp');
    this.state = registerOutput<String>('state');
    this.stateTransitionReason =
        registerOutput<String>('stateTransitionReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.topics = registerOutput<List<String>?>('topics');
    this.tumblingWindowInSeconds =
        registerOutput<int?>('tumblingWindowInSeconds');
    this.uuid = registerOutput<String>('uuid');
  }
}
