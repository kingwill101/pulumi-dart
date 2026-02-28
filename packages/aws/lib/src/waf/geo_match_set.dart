import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_match_set_args.dart';
import 'geo_match_set_geo_match_constraint.dart';

/// Provides a WAF Geo Match Set Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const geoMatchSet = new aws.waf.GeoMatchSet("geo_match_set", {
///     name: "geo_match_set",
///     geoMatchConstraints: [
///         {
///             type: "Country",
///             value: "US",
///         },
///         {
///             type: "Country",
///             value: "CA",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// geo_match_set = aws.waf.GeoMatchSet("geo_match_set",
///     name="geo_match_set",
///     geo_match_constraints=[
///         {
///             "type": "Country",
///             "value": "US",
///         },
///         {
///             "type": "Country",
///             "value": "CA",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var geoMatchSet = new Aws.Waf.GeoMatchSet("geo_match_set", new()
///     {
///         Name = "geo_match_set",
///         GeoMatchConstraints = new[]
///         {
///             new Aws.Waf.Inputs.GeoMatchSetGeoMatchConstraintArgs
///             {
///                 Type = "Country",
///                 Value = "US",
///             },
///             new Aws.Waf.Inputs.GeoMatchSetGeoMatchConstraintArgs
///             {
///                 Type = "Country",
///                 Value = "CA",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.NewGeoMatchSet(ctx, "geo_match_set", &waf.GeoMatchSetArgs{
/// 			Name: pulumi.String("geo_match_set"),
/// 			GeoMatchConstraints: waf.GeoMatchSetGeoMatchConstraintArray{
/// 				&waf.GeoMatchSetGeoMatchConstraintArgs{
/// 					Type:  pulumi.String("Country"),
/// 					Value: pulumi.String("US"),
/// 				},
/// 				&waf.GeoMatchSetGeoMatchConstraintArgs{
/// 					Type:  pulumi.String("Country"),
/// 					Value: pulumi.String("CA"),
/// 				},
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
/// import com.pulumi.aws.waf.GeoMatchSet;
/// import com.pulumi.aws.waf.GeoMatchSetArgs;
/// import com.pulumi.aws.waf.inputs.GeoMatchSetGeoMatchConstraintArgs;
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
///         var geoMatchSet = new GeoMatchSet("geoMatchSet", GeoMatchSetArgs.builder()
///             .name("geo_match_set")
///             .geoMatchConstraints(
///                 GeoMatchSetGeoMatchConstraintArgs.builder()
///                     .type("Country")
///                     .value("US")
///                     .build(),
///                 GeoMatchSetGeoMatchConstraintArgs.builder()
///                     .type("Country")
///                     .value("CA")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   geoMatchSet:
///     type: aws:waf:GeoMatchSet
///     name: geo_match_set
///     properties:
///       name: geo_match_set
///       geoMatchConstraints:
///         - type: Country
///           value: US
///         - type: Country
///           value: CA
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Geo Match Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/geoMatchSet:GeoMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class GeoMatchSet extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN)
  late final pulumi.Output<String> arn;
  /// The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for.
  late final pulumi.Output<List<GeoMatchSetGeoMatchConstraint>?> geoMatchConstraints;
  /// The name or description of the GeoMatchSet.
  late final pulumi.Output<String> name;

  /// Creates a new [GeoMatchSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GeoMatchSet]. {@macro pulumi_waf_geo_match_set_geo_match_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GeoMatchSet(
    String name, {
    GeoMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/geoMatchSet:GeoMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.geoMatchConstraints = registerOutput<List<GeoMatchSetGeoMatchConstraint>?>('geoMatchConstraints');
    this.name = registerOutput<String>('name');
  }
}
