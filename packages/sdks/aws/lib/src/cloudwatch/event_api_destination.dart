import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_api_destination_args.dart';
import 'event_api_destination_state.dart';

/// Provides an EventBridge event API Destination resource.
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
/// const test = new aws.cloudwatch.EventApiDestination("test", {
///     name: "api-destination",
///     description: "An API Destination",
///     invocationEndpoint: "https://api.destination.com/endpoint",
///     httpMethod: "POST",
///     invocationRateLimitPerSecond: 20,
///     connectionArn: testAwsCloudwatchEventConnection.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudwatch.EventApiDestination("test",
///     name="api-destination",
///     description="An API Destination",
///     invocation_endpoint="https://api.destination.com/endpoint",
///     http_method="POST",
///     invocation_rate_limit_per_second=20,
///     connection_arn=test_aws_cloudwatch_event_connection["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CloudWatch.EventApiDestination("test", new()
///     {
///         Name = "api-destination",
///         Description = "An API Destination",
///         InvocationEndpoint = "https://api.destination.com/endpoint",
///         HttpMethod = "POST",
///         InvocationRateLimitPerSecond = 20,
///         ConnectionArn = testAwsCloudwatchEventConnection.Arn,
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
/// 		_, err := cloudwatch.NewEventApiDestination(ctx, "test", &cloudwatch.EventApiDestinationArgs{
/// 			Name:                         pulumi.String("api-destination"),
/// 			Description:                  pulumi.String("An API Destination"),
/// 			InvocationEndpoint:           pulumi.String("https://api.destination.com/endpoint"),
/// 			HttpMethod:                   pulumi.String("POST"),
/// 			InvocationRateLimitPerSecond: pulumi.Int(20),
/// 			ConnectionArn:                pulumi.Any(testAwsCloudwatchEventConnection.Arn),
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
/// import com.pulumi.aws.cloudwatch.EventApiDestination;
/// import com.pulumi.aws.cloudwatch.EventApiDestinationArgs;
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
///         var test = new EventApiDestination("test", EventApiDestinationArgs.builder()
///             .name("api-destination")
///             .description("An API Destination")
///             .invocationEndpoint("https://api.destination.com/endpoint")
///             .httpMethod("POST")
///             .invocationRateLimitPerSecond(20)
///             .connectionArn(testAwsCloudwatchEventConnection.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cloudwatch:EventApiDestination
///     properties:
///       name: api-destination
///       description: An API Destination
///       invocationEndpoint: https://api.destination.com/endpoint
///       httpMethod: POST
///       invocationRateLimitPerSecond: 20
///       connectionArn: ${testAwsCloudwatchEventConnection.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge API Destinations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventApiDestination:EventApiDestination test api-destination
/// ```
class EventApiDestination extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the event API Destination.
  late final pulumi.Output<String> arn;

  /// ARN of the EventBridge Connection to use for the API Destination.
  late final pulumi.Output<String> connectionArn;

  /// The description of the new API Destination. Maximum of 512 characters.
  late final pulumi.Output<String?> description;

  /// Select the HTTP method used for the invocation endpoint, such as GET, POST, PUT, etc.
  late final pulumi.Output<String> httpMethod;

  /// URL endpoint to invoke as a target. This could be a valid endpoint generated by a partner service. You can include "*" as path parameters wildcards to be set from the Target HttpParameters.
  late final pulumi.Output<String> invocationEndpoint;

  /// Enter the maximum number of invocations per second to allow for this destination. Enter a value greater than 0 (default 300).
  late final pulumi.Output<int?> invocationRateLimitPerSecond;

  /// The name of the new API Destination. The name must be unique for your account. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [EventApiDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventApiDestination]. {@macro pulumi_cloudwatch_event_api_destination_event_api_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventApiDestination(
    String name, {
    EventApiDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/eventApiDestination:EventApiDestination',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    connectionArn = registerOutput<String>('connectionArn');
    description = registerOutput<String?>('description');
    httpMethod = registerOutput<String>('httpMethod');
    invocationEndpoint = registerOutput<String>('invocationEndpoint');
    invocationRateLimitPerSecond = registerOutput<int?>(
      'invocationRateLimitPerSecond',
    );
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [EventApiDestination] resource's state with the given [name] and [id].
  static EventApiDestination get(
    String name,
    pulumi.Input<String> id, {
    EventApiDestinationState? state,
  }) {
    return EventApiDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventApiDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/eventApiDestination:EventApiDestination',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    connectionArn = registerOutput<String>('connectionArn');
    description = registerOutput<String?>('description');
    httpMethod = registerOutput<String>('httpMethod');
    invocationEndpoint = registerOutput<String>('invocationEndpoint');
    invocationRateLimitPerSecond = registerOutput<int?>(
      'invocationRateLimitPerSecond',
    );
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
