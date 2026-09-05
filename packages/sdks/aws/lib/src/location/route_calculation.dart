import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_calculation_args.dart';
import 'route_calculation_state.dart';

/// Provides a Location Service Route Calculator.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.RouteCalculation("example", {
///     calculatorName: "example",
///     dataSource: "Here",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.RouteCalculation("example",
///     calculator_name="example",
///     data_source="Here")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Location.RouteCalculation("example", new()
///     {
///         CalculatorName = "example",
///         DataSource = "Here",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/location"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := location.NewRouteCalculation(ctx, "example", &location.RouteCalculationArgs{
/// 			CalculatorName: pulumi.String("example"),
/// 			DataSource:     pulumi.String("Here"),
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
/// resource "aws_location_routecalculation" "example" {
///   calculator_name = "example"
///   data_source     = "Here"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.RouteCalculation;
/// import com.pulumi.aws.location.RouteCalculationArgs;
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
///         var example = new RouteCalculation("example", RouteCalculationArgs.builder()
///             .calculatorName("example")
///             .dataSource("Here")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:location:RouteCalculation
///     properties:
///       calculatorName: example
///       dataSource: Here
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.location.RouteCalculation` using the route calculator name. For example:
///
/// ```sh
/// $ pulumi import aws:location/routeCalculation:RouteCalculation example example
/// ```
class RouteCalculation extends pulumi.CustomResource {
  /// ARN for the Route calculator resource. Use the ARN when you specify a resource across AWS.
  late final pulumi.Output<String> calculatorArn;
  /// The name of the route calculator resource.
  late final pulumi.Output<String> calculatorName;
  /// The timestamp for when the route calculator resource was created in ISO 8601 format.
  late final pulumi.Output<String> createTime;
  /// Specifies the data provider of traffic and road network data.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> dataSource;
  /// The optional description for the route calculator resource.
  late final pulumi.Output<String?> description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value tags for the route calculator. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The timestamp for when the route calculator resource was last update in ISO 8601.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RouteCalculation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteCalculation]. {@macro pulumi_location_route_calculation_route_calculation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteCalculation(
    String name, {
    RouteCalculationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/routeCalculation:RouteCalculation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    calculatorArn = registerOutput<String>('calculatorArn');
    calculatorName = registerOutput<String>('calculatorName');
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [RouteCalculation] resource's state with the given [name] and [id].
  static RouteCalculation get(
    String name,
    pulumi.Input<String> id, {
    RouteCalculationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RouteCalculation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RouteCalculation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/routeCalculation:RouteCalculation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    calculatorArn = registerOutput<String>('calculatorArn');
    calculatorName = registerOutput<String>('calculatorName');
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [RouteCalculation] resource.
  RouteCalculation.reference(String urn)
    : super(
        'aws:location/routeCalculation:RouteCalculation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    calculatorArn = registerOutput<String>('calculatorArn');
    calculatorName = registerOutput<String>('calculatorName');
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updateTime = registerOutput<String>('updateTime');
  }
}
