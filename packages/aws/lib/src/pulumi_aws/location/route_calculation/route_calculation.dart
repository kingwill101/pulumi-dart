import 'package:pulumi/pulumi.dart';
import 'route_calculation_args.dart';

/// Provides a Location Service Route Calculator.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.RouteCalculation("example", {
/// calculatorName: "example",
/// dataSource: "Here",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.RouteCalculation("example",
/// calculator_name="example",
/// data_source="Here")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Location.RouteCalculation("example", new()
/// {
/// CalculatorName = "example",
/// DataSource = "Here",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/location"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := location.NewRouteCalculation(ctx, "example", &location.RouteCalculationArgs{
/// CalculatorName: pulumi.String("example"),
/// DataSource:     pulumi.String("Here"),
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
/// import com.pulumi.aws.location.RouteCalculation;
/// import com.pulumi.aws.location.RouteCalculationArgs;
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
/// var example = new RouteCalculation("example", RouteCalculationArgs.builder()
/// .calculatorName("example")
/// .dataSource("Here")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:location:RouteCalculation
/// properties:
/// calculatorName: example
/// dataSource: Here
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.location.RouteCalculation`" pulumi-lang-dotnet="`aws.location.RouteCalculation`" pulumi-lang-go="`location.RouteCalculation`" pulumi-lang-python="`location.RouteCalculation`" pulumi-lang-yaml="`aws.location.RouteCalculation`" pulumi-lang-java="`aws.location.RouteCalculation`">`aws.location.RouteCalculation`</span> using the route calculator name. For example:
///
/// ```sh
/// $ pulumi import aws:location/routeCalculation:RouteCalculation example example
/// ```
class RouteCalculation extends CustomResource {
  /// The Amazon Resource Name (ARN) for the Route calculator resource. Use the ARN when you specify a resource across AWS.
  late final Output<String> calculatorArn;

  /// The name of the route calculator resource.
  late final Output<String> calculatorName;

  /// The timestamp for when the route calculator resource was created in ISO 8601 format.
  late final Output<String> createTime;

  /// Specifies the data provider of traffic and road network data.
  ///
  /// The following arguments are optional:
  late final Output<String> dataSource;

  /// The optional description for the route calculator resource.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the route calculator. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The timestamp for when the route calculator resource was last update in ISO 8601.
  late final Output<String> updateTime;

  RouteCalculation(
    String name, {
    RouteCalculationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:location/routeCalculation:RouteCalculation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.calculatorArn = registerOutput<String>('calculatorArn');
    this.calculatorName = registerOutput<String>('calculatorName');
    this.createTime = registerOutput<String>('createTime');
    this.dataSource = registerOutput<String>('dataSource');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
