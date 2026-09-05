import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_endpoint_args.dart';
import 'event_endpoint_event_bus.dart';
import 'event_endpoint_replication_config.dart';
import 'event_endpoint_routing_config.dart';
import 'event_endpoint_state.dart';

/// Provides a resource to create an EventBridge Global Endpoint.
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
/// const _this = new aws.cloudwatch.EventEndpoint("this", {
///     replicationConfig: {
///         state: "DISABLED",
///     },
///     routingConfig: {
///         failoverConfig: {
///             primary: {
///                 healthCheck: primaryAwsRoute53HealthCheck.arn,
///             },
///             secondary: {
///                 route: "us-east-2",
///             },
///         },
///     },
///     eventBuses: [
///         {
///             eventBusArn: primary.arn,
///         },
///         {
///             eventBusArn: secondary.arn,
///         },
///     ],
///     name: "global-endpoint",
///     roleArn: replication.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// this = aws.cloudwatch.EventEndpoint("this",
///     replication_config={
///         "state": "DISABLED",
///     },
///     routing_config={
///         "failover_config": {
///             "primary": {
///                 "health_check": primary_aws_route53_health_check["arn"],
///             },
///             "secondary": {
///                 "route": "us-east-2",
///             },
///         },
///     },
///     event_buses=[
///         {
///             "event_bus_arn": primary["arn"],
///         },
///         {
///             "event_bus_arn": secondary["arn"],
///         },
///     ],
///     name="global-endpoint",
///     role_arn=replication["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = new Aws.CloudWatch.EventEndpoint("this", new()
///     {
///         ReplicationConfig = new Aws.CloudWatch.Inputs.EventEndpointReplicationConfigArgs
///         {
///             State = "DISABLED",
///         },
///         RoutingConfig = new Aws.CloudWatch.Inputs.EventEndpointRoutingConfigArgs
///         {
///             FailoverConfig = new Aws.CloudWatch.Inputs.EventEndpointRoutingConfigFailoverConfigArgs
///             {
///                 Primary = new Aws.CloudWatch.Inputs.EventEndpointRoutingConfigFailoverConfigPrimaryArgs
///                 {
///                     HealthCheck = primaryAwsRoute53HealthCheck.Arn,
///                 },
///                 Secondary = new Aws.CloudWatch.Inputs.EventEndpointRoutingConfigFailoverConfigSecondaryArgs
///                 {
///                     Route = "us-east-2",
///                 },
///             },
///         },
///         EventBuses = new[]
///         {
///             new Aws.CloudWatch.Inputs.EventEndpointEventBusArgs
///             {
///                 EventBusArn = primary.Arn,
///             },
///             new Aws.CloudWatch.Inputs.EventEndpointEventBusArgs
///             {
///                 EventBusArn = secondary.Arn,
///             },
///         },
///         Name = "global-endpoint",
///         RoleArn = replication.Arn,
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
/// 		_, err := cloudwatch.NewEventEndpoint(ctx, "this", &cloudwatch.EventEndpointArgs{
/// 			ReplicationConfig: &cloudwatch.EventEndpointReplicationConfigArgs{
/// 				State: pulumi.String("DISABLED"),
/// 			},
/// 			RoutingConfig: &cloudwatch.EventEndpointRoutingConfigArgs{
/// 				FailoverConfig: &cloudwatch.EventEndpointRoutingConfigFailoverConfigArgs{
/// 					Primary: &cloudwatch.EventEndpointRoutingConfigFailoverConfigPrimaryArgs{
/// 						HealthCheck: pulumi.Any(primaryAwsRoute53HealthCheck.Arn),
/// 					},
/// 					Secondary: &cloudwatch.EventEndpointRoutingConfigFailoverConfigSecondaryArgs{
/// 						Route: pulumi.String("us-east-2"),
/// 					},
/// 				},
/// 			},
/// 			EventBuses: cloudwatch.EventEndpointEventBusArray{
/// 				&cloudwatch.EventEndpointEventBusArgs{
/// 					EventBusArn: pulumi.Any(primary.Arn),
/// 				},
/// 				&cloudwatch.EventEndpointEventBusArgs{
/// 					EventBusArn: pulumi.Any(secondary.Arn),
/// 				},
/// 			},
/// 			Name:    pulumi.String("global-endpoint"),
/// 			RoleArn: pulumi.Any(replication.Arn),
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
/// resource "aws_cloudwatch_eventendpoint" "this" {
///   replication_config = {
///     state = "DISABLED"
///   }
///   routing_config = {
///     failover_config = {
///       primary = {
///         health_check = primaryAwsRoute53HealthCheck.arn
///       }
///       secondary = {
///         route = "us-east-2"
///       }
///     }
///   }
///   event_buses {
///     event_bus_arn = primary.arn
///   }
///   event_buses {
///     event_bus_arn = secondary.arn
///   }
///   name     = "global-endpoint"
///   role_arn = replication.arn
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
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointReplicationConfigArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointRoutingConfigArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointRoutingConfigFailoverConfigArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointRoutingConfigFailoverConfigPrimaryArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointRoutingConfigFailoverConfigSecondaryArgs;
/// import com.pulumi.aws.cloudwatch.inputs.EventEndpointEventBusArgs;
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
///         var this_ = new EventEndpoint("this", EventEndpointArgs.builder()
///             .replicationConfig(EventEndpointReplicationConfigArgs.builder()
///                 .state("DISABLED")
///                 .build())
///             .routingConfig(EventEndpointRoutingConfigArgs.builder()
///                 .failoverConfig(EventEndpointRoutingConfigFailoverConfigArgs.builder()
///                     .primary(EventEndpointRoutingConfigFailoverConfigPrimaryArgs.builder()
///                         .healthCheck(primaryAwsRoute53HealthCheck.arn())
///                         .build())
///                     .secondary(EventEndpointRoutingConfigFailoverConfigSecondaryArgs.builder()
///                         .route("us-east-2")
///                         .build())
///                     .build())
///                 .build())
///             .eventBuses(
///                 EventEndpointEventBusArgs.builder()
///                     .eventBusArn(primary.arn())
///                     .build(),
///                 EventEndpointEventBusArgs.builder()
///                     .eventBusArn(secondary.arn())
///                     .build())
///             .name("global-endpoint")
///             .roleArn(replication.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   this:
///     type: aws:cloudwatch:EventEndpoint
///     properties:
///       replicationConfig:
///         state: DISABLED
///       routingConfig:
///         failoverConfig:
///           primary:
///             healthCheck: ${primaryAwsRoute53HealthCheck.arn}
///           secondary:
///             route: us-east-2
///       eventBuses:
///         - eventBusArn: ${primary.arn}
///         - eventBusArn: ${secondary.arn}
///       name: global-endpoint
///       roleArn: ${replication.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the global endpoint.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Global Endpoints using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventEndpoint:EventEndpoint example example-endpoint
/// ```
class EventEndpoint extends pulumi.CustomResource {
  /// The ARN of the endpoint that was created.
  late final pulumi.Output<String> arn;
  /// A description of the global endpoint.
  late final pulumi.Output<String?> description;
  /// The URL of the endpoint that was created.
  late final pulumi.Output<String> endpointUrl;
  /// The event buses to use. The names of the event buses must be identical in each Region. Exactly two event buses are required. Documented below.
  late final pulumi.Output<List<EventEndpointEventBus>> eventBuses;
  /// The name of the global endpoint.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Parameters used for replication. Documented below.
  late final pulumi.Output<EventEndpointReplicationConfig?> replicationConfig;
  /// The ARN of the IAM role used for replication between event buses.
  late final pulumi.Output<String?> roleArn;
  /// Parameters used for routing, including the health check and secondary Region. Documented below.
  late final pulumi.Output<EventEndpointRoutingConfig> routingConfig;

  /// Creates a new [EventEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventEndpoint]. {@macro pulumi_cloudwatch_event_endpoint_event_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventEndpoint(
    String name, {
    EventEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventEndpoint:EventEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    endpointUrl = registerOutput<String>('endpointUrl');
    eventBuses = registerOutput<List<EventEndpointEventBus>>('eventBuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventEndpointEventBus>(guardedValue, (value) => EventEndpointEventBus.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    replicationConfig = registerOutput<EventEndpointReplicationConfig?>('replicationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventEndpointReplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String?>('roleArn');
    routingConfig = registerOutput<EventEndpointRoutingConfig>('routingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventEndpointRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [EventEndpoint] resource's state with the given [name] and [id].
  static EventEndpoint get(
    String name,
    pulumi.Input<String> id, {
    EventEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EventEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventEndpoint:EventEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    endpointUrl = registerOutput<String>('endpointUrl');
    eventBuses = registerOutput<List<EventEndpointEventBus>>('eventBuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventEndpointEventBus>(guardedValue, (value) => EventEndpointEventBus.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    replicationConfig = registerOutput<EventEndpointReplicationConfig?>('replicationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventEndpointReplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String?>('roleArn');
    routingConfig = registerOutput<EventEndpointRoutingConfig>('routingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventEndpointRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EventEndpoint] resource.
  EventEndpoint.reference(String urn)
    : super(
        'aws:cloudwatch/eventEndpoint:EventEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    endpointUrl = registerOutput<String>('endpointUrl');
    eventBuses = registerOutput<List<EventEndpointEventBus>>('eventBuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventEndpointEventBus>(guardedValue, (value) => EventEndpointEventBus.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    replicationConfig = registerOutput<EventEndpointReplicationConfig?>('replicationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventEndpointReplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roleArn = registerOutput<String?>('roleArn');
    routingConfig = registerOutput<EventEndpointRoutingConfig>('routingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventEndpointRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
