import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_configurations_args.dart';
import 'event_configurations_state.dart';

/// Manages IoT event configurations.
///
/// &gt; **NOTE:** Deleting this resource does not disable the event configurations, the resource in simply removed from state instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.EventConfigurations("example", {eventConfigurations: {
///     THING: true,
///     THING_GROUP: false,
///     THING_TYPE: false,
///     THING_GROUP_MEMBERSHIP: false,
///     THING_GROUP_HIERARCHY: false,
///     THING_TYPE_ASSOCIATION: false,
///     JOB: false,
///     JOB_EXECUTION: false,
///     POLICY: false,
///     CERTIFICATE: true,
///     CA_CERTIFICATE: false,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.EventConfigurations("example", event_configurations={
///     "THING": True,
///     "THING_GROUP": False,
///     "THING_TYPE": False,
///     "THING_GROUP_MEMBERSHIP": False,
///     "THING_GROUP_HIERARCHY": False,
///     "THING_TYPE_ASSOCIATION": False,
///     "JOB": False,
///     "JOB_EXECUTION": False,
///     "POLICY": False,
///     "CERTIFICATE": True,
///     "CA_CERTIFICATE": False,
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
///     var example = new Aws.Iot.EventConfigurations("example", new()
///     {
///         Configurations =
///         {
///             { "THING", true },
///             { "THING_GROUP", false },
///             { "THING_TYPE", false },
///             { "THING_GROUP_MEMBERSHIP", false },
///             { "THING_GROUP_HIERARCHY", false },
///             { "THING_TYPE_ASSOCIATION", false },
///             { "JOB", false },
///             { "JOB_EXECUTION", false },
///             { "POLICY", false },
///             { "CERTIFICATE", true },
///             { "CA_CERTIFICATE", false },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.NewEventConfigurations(ctx, "example", &iot.EventConfigurationsArgs{
/// 			EventConfigurations: pulumi.BoolMap{
/// 				"THING":                  pulumi.Bool(true),
/// 				"THING_GROUP":            pulumi.Bool(false),
/// 				"THING_TYPE":             pulumi.Bool(false),
/// 				"THING_GROUP_MEMBERSHIP": pulumi.Bool(false),
/// 				"THING_GROUP_HIERARCHY":  pulumi.Bool(false),
/// 				"THING_TYPE_ASSOCIATION": pulumi.Bool(false),
/// 				"JOB":                    pulumi.Bool(false),
/// 				"JOB_EXECUTION":          pulumi.Bool(false),
/// 				"POLICY":                 pulumi.Bool(false),
/// 				"CERTIFICATE":            pulumi.Bool(true),
/// 				"CA_CERTIFICATE":         pulumi.Bool(false),
/// 			},
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
/// import com.pulumi.aws.iot.EventConfigurations;
/// import com.pulumi.aws.iot.EventConfigurationsArgs;
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
///         var example = new EventConfigurations("example", EventConfigurationsArgs.builder()
///             .eventConfigurations(Map.ofEntries(
///                 Map.entry("THING", true),
///                 Map.entry("THING_GROUP", false),
///                 Map.entry("THING_TYPE", false),
///                 Map.entry("THING_GROUP_MEMBERSHIP", false),
///                 Map.entry("THING_GROUP_HIERARCHY", false),
///                 Map.entry("THING_TYPE_ASSOCIATION", false),
///                 Map.entry("JOB", false),
///                 Map.entry("JOB_EXECUTION", false),
///                 Map.entry("POLICY", false),
///                 Map.entry("CERTIFICATE", true),
///                 Map.entry("CA_CERTIFICATE", false)
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iot:EventConfigurations
///     properties:
///       eventConfigurations:
///         THING: true
///         THING_GROUP: false
///         THING_TYPE: false
///         THING_GROUP_MEMBERSHIP: false
///         THING_GROUP_HIERARCHY: false
///         THING_TYPE_ASSOCIATION: false
///         JOB: false
///         JOB_EXECUTION: false
///         POLICY: false
///         CERTIFICATE: true
///         CA_CERTIFICATE: false
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT Event Configurations using the AWS Region. For example:
///
/// ```sh
/// $ pulumi import aws:iot/eventConfigurations:EventConfigurations example us-west-2
/// ```
class EventConfigurations extends pulumi.CustomResource {
  /// Map. The new event configuration values. You can use only these strings as keys: `THING_GROUP_HIERARCHY`, `THING_GROUP_MEMBERSHIP`, `THING_TYPE`, `THING_TYPE_ASSOCIATION`, `THING_GROUP`, `THING`, `POLICY`, `CA_CERTIFICATE`, `JOB_EXECUTION`, `CERTIFICATE`, `JOB`. Use boolean for values of mapping.
  late final pulumi.Output<Map<String, bool>> eventConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [EventConfigurations].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventConfigurations]. {@macro pulumi_iot_event_configurations_event_configurations_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventConfigurations(
    String name, {
    EventConfigurationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/eventConfigurations:EventConfigurations',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    eventConfigurations = registerOutput<Map<String, bool>>('eventConfigurations');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [EventConfigurations] resource's state with the given [name] and [id].
  static EventConfigurations get(
    String name,
    pulumi.Input<String> id, {
    EventConfigurationsState? state,
  }) {
    return EventConfigurations._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventConfigurations._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/eventConfigurations:EventConfigurations',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    eventConfigurations = registerOutput<Map<String, bool>>('eventConfigurations');
    region = registerOutput<String>('region');
  }
}
