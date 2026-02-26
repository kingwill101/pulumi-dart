import 'package:pulumi/pulumi.dart';
import '../event_endpoint_event_bus/event_endpoint_event_bus.dart';
import '../event_endpoint_replication_config/event_endpoint_replication_config.dart';
import '../event_endpoint_routing_config/event_endpoint_routing_config.dart';
import 'event_endpoint_args.dart';

/// Provides a resource to create an EventBridge Global Endpoint.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _this = new aws.cloudwatch.EventEndpoint("this", {
/// name: "global-endpoint",
/// roleArn: replication.arn,
/// eventBuses: [
/// {
/// eventBusArn: primary.arn,
/// },
/// {
/// eventBusArn: secondary.arn,
/// },
/// ],
/// replicationConfig: {
/// state: "DISABLED",
/// },
/// routingConfig: {
/// failoverConfig: {
/// primary: {
/// healthCheck: primaryAwsRoute53HealthCheck.arn,
/// },
/// secondary: {
/// route: "us-east-2",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// this = aws.cloudwatch.EventEndpoint("this",
/// name="global-endpoint",
/// role_arn=replication["arn"],
/// event_buses=[
/// {
/// "event_bus_arn": primary["arn"],
/// },
/// {
/// "event_bus_arn": secondary["arn"],
/// },
/// ],
/// replication_config={
/// "state": "DISABLED",
/// },
/// routing_config={
/// "failover_config": {
/// "primary": {
/// "health_check": primary_aws_route53_health_check["arn"],
/// },
/// "secondary": {
/// "route": "us-east-2",
/// },
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
/// var @this = new Aws.CloudWatch.EventEndpoint("this", new()
/// {
/// Name = "global-endpoint",
/// RoleArn = replication.Arn,
/// EventBuses = new[]
/// {
/// new Aws.CloudWatch.Inputs.EventEndpointEventBusArgs
/// {
/// EventBusArn = primary.Arn,
/// },
/// new Aws.CloudWatch.Inputs.EventEndpointEventBusArgs
/// {
/// EventBusArn = secondary.Arn,
/// },
/// },
/// ReplicationConfig = new Aws.CloudWatch.Inputs.EventEndpointReplicationConfigArgs
/// {
/// State = "DISABLED",
/// },
/// RoutingConfig = new Aws.CloudWatch.Inputs.EventEndpointRoutingConfigArgs
/// {
/// FailoverConfig = new Aws.CloudWatch.Inputs.EventEndpointRoutingConfigFailoverConfigArgs
/// {
/// Primary = new Aws.CloudWatch.Inputs.EventEndpointRoutingConfigFailoverConfigPrimaryArgs
/// {
/// HealthCheck = primaryAwsRoute53HealthCheck.Arn,
/// },
/// Secondary = new Aws.CloudWatch.Inputs.EventEndpointRoutingConfigFailoverConfigSecondaryArgs
/// {
/// Route = "us-east-2",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewEventEndpoint(ctx, "this", &cloudwatch.EventEndpointArgs{
/// Name:    pulumi.String("global-endpoint"),
/// RoleArn: pulumi.Any(replication.Arn),
/// EventBuses: cloudwatch.EventEndpointEventBusArray{
/// &cloudwatch.EventEndpointEventBusArgs{
/// EventBusArn: pulumi.Any(primary.Arn),
/// },
/// &cloudwatch.EventEndpointEventBusArgs{
/// EventBusArn: pulumi.Any(secondary.Arn),
/// },
/// },
/// ReplicationConfig: &cloudwatch.EventEndpointReplicationConfigArgs{
/// State: pulumi.String("DISABLED"),
/// },
/// RoutingConfig: &cloudwatch.EventEndpointRoutingConfigArgs{
/// FailoverConfig: &cloudwatch.EventEndpointRoutingConfigFailoverConfigArgs{
/// Primary: &cloudwatch.EventEndpointRoutingConfigFailoverConfigPrimaryArgs{
/// HealthCheck: pulumi.Any(primaryAwsRoute53HealthCheck.Arn),
/// },
/// Secondary: &cloudwatch.EventEndpointRoutingConfigFailoverConfigSecondaryArgs{
/// Route: pulumi.String("us-east-2"),
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
/// import com.pulumi.aws.cloudwatch.EventEndpoint;
/// import com.pulumi.aws.cloudwatch.EventEndpointArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointEventBusArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointReplicationConfigArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointRoutingConfigArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointRoutingConfigFailoverConfigArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointRoutingConfigFailoverConfigPrimaryArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointRoutingConfigFailoverConfigSecondaryArgs;
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
/// var this_ = new EventEndpoint("this", EventEndpointArgs.builder()
/// .name("global-endpoint")
/// .roleArn(replication.arn())
/// .eventBuses(
/// EventEndpointEventBusArgs.builder()
/// .eventBusArn(primary.arn())
/// .build(),
/// EventEndpointEventBusArgs.builder()
/// .eventBusArn(secondary.arn())
/// .build())
/// .replicationConfig(EventEndpointReplicationConfigArgs.builder()
/// .state("DISABLED")
/// .build())
/// .routingConfig(EventEndpointRoutingConfigArgs.builder()
/// .failoverConfig(EventEndpointRoutingConfigFailoverConfigArgs.builder()
/// .primary(EventEndpointRoutingConfigFailoverConfigPrimaryArgs.builder()
/// .healthCheck(primaryAwsRoute53HealthCheck.arn())
/// .build())
/// .secondary(EventEndpointRoutingConfigFailoverConfigSecondaryArgs.builder()
/// .route("us-east-2")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// this:
/// type: aws:cloudwatch:EventEndpoint
/// properties:
/// name: global-endpoint
/// roleArn: ${replication.arn}
/// eventBuses:
/// - eventBusArn: ${primary.arn}
/// - eventBusArn: ${secondary.arn}
/// replicationConfig:
/// state: DISABLED
/// routingConfig:
/// failoverConfig:
/// primary:
/// healthCheck: ${primaryAwsRoute53HealthCheck.arn}
/// secondary:
/// route: us-east-2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge Global Endpoints using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventEndpoint:EventEndpoint imported_endpoint example-endpoint
/// ```
class EventEndpoint extends CustomResource {
  /// The ARN of the endpoint that was created.
  late final Output<String> arn;

  /// A description of the global endpoint.
  late final Output<String?> description;

  /// The URL of the endpoint that was created.
  late final Output<String> endpointUrl;

  /// The event buses to use. The names of the event buses must be identical in each Region. Exactly two event buses are required. Documented below.
  late final Output<List<EventEndpointEventBus>> eventBuses;

  /// The name of the global endpoint.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Parameters used for replication. Documented below.
  late final Output<EventEndpointReplicationConfig?> replicationConfig;

  /// The ARN of the IAM role used for replication between event buses.
  late final Output<String?> roleArn;

  /// Parameters used for routing, including the health check and secondary Region. Documented below.
  late final Output<EventEndpointRoutingConfig> routingConfig;

  EventEndpoint(
    String name, {
    EventEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventEndpoint:EventEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.endpointUrl = registerOutput<String>('endpointUrl');
    this.eventBuses = registerOutput<List<EventEndpointEventBus>>('eventBuses');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.replicationConfig =
        registerOutput<EventEndpointReplicationConfig?>('replicationConfig');
    this.roleArn = registerOutput<String?>('roleArn');
    this.routingConfig =
        registerOutput<EventEndpointRoutingConfig>('routingConfig');
  }
}
