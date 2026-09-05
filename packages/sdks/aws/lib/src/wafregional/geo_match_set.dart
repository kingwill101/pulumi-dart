import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_match_set_args.dart';
import 'geo_match_set_geo_match_constraint.dart';
import 'geo_match_set_state.dart';

/// Provides a WAF Regional Geo Match Set Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const geoMatchSet = new aws.wafregional.GeoMatchSet("geo_match_set", {
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
///     name: "geo_match_set",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// geo_match_set = aws.wafregional.GeoMatchSet("geo_match_set",
///     geo_match_constraints=[
///         {
///             "type": "Country",
///             "value": "US",
///         },
///         {
///             "type": "Country",
///             "value": "CA",
///         },
///     ],
///     name="geo_match_set")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var geoMatchSet = new Aws.WafRegional.GeoMatchSet("geo_match_set", new()
///     {
///         GeoMatchConstraints = new[]
///         {
///             new Aws.WafRegional.Inputs.GeoMatchSetGeoMatchConstraintArgs
///             {
///                 Type = "Country",
///                 Value = "US",
///             },
///             new Aws.WafRegional.Inputs.GeoMatchSetGeoMatchConstraintArgs
///             {
///                 Type = "Country",
///                 Value = "CA",
///             },
///         },
///         Name = "geo_match_set",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.NewGeoMatchSet(ctx, "geo_match_set", &wafregional.GeoMatchSetArgs{
/// 			GeoMatchConstraints: wafregional.GeoMatchSetGeoMatchConstraintArray{
/// 				&wafregional.GeoMatchSetGeoMatchConstraintArgs{
/// 					Type:  pulumi.String("Country"),
/// 					Value: pulumi.String("US"),
/// 				},
/// 				&wafregional.GeoMatchSetGeoMatchConstraintArgs{
/// 					Type:  pulumi.String("Country"),
/// 					Value: pulumi.String("CA"),
/// 				},
/// 			},
/// 			Name: pulumi.String("geo_match_set"),
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
/// resource "aws_wafregional_geomatchset" "geo_match_set" {
///   geo_match_constraints {
///     type  = "Country"
///     value = "US"
///   }
///   geo_match_constraints {
///     type  = "Country"
///     value = "CA"
///   }
///   name = "geo_match_set"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.GeoMatchSet;
/// import com.pulumi.aws.wafregional.GeoMatchSetArgs;
/// import com.pulumi.aws.wafregional.inputs.GeoMatchSetGeoMatchConstraintArgs;
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
///         var geoMatchSet = new GeoMatchSet("geoMatchSet", GeoMatchSetArgs.builder()
///             .geoMatchConstraints(
///                 GeoMatchSetGeoMatchConstraintArgs.builder()
///                     .type("Country")
///                     .value("US")
///                     .build(),
///                 GeoMatchSetGeoMatchConstraintArgs.builder()
///                     .type("Country")
///                     .value("CA")
///                     .build())
///             .name("geo_match_set")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   geoMatchSet:
///     type: aws:wafregional:GeoMatchSet
///     name: geo_match_set
///     properties:
///       geoMatchConstraints:
///         - type: Country
///           value: US
///         - type: Country
///           value: CA
///       name: geo_match_set
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Geo Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/geoMatchSet:GeoMatchSet geo_match_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class GeoMatchSet extends pulumi.CustomResource {
  /// Geo Match Constraint objects which contain the country that you want AWS WAF to search for.
  late final pulumi.Output<List<GeoMatchSetGeoMatchConstraint>?> geoMatchConstraints;
  /// Name or description of the Geo Match Set.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [GeoMatchSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GeoMatchSet]. {@macro pulumi_wafregional_geo_match_set_geo_match_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GeoMatchSet(
    String name, {
    GeoMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/geoMatchSet:GeoMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    geoMatchConstraints = registerOutput<List<GeoMatchSetGeoMatchConstraint>?>('geoMatchConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GeoMatchSetGeoMatchConstraint>(guardedValue, (value) => GeoMatchSetGeoMatchConstraint.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [GeoMatchSet] resource's state with the given [name] and [id].
  static GeoMatchSet get(
    String name,
    pulumi.Input<String> id, {
    GeoMatchSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GeoMatchSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GeoMatchSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/geoMatchSet:GeoMatchSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    geoMatchConstraints = registerOutput<List<GeoMatchSetGeoMatchConstraint>?>('geoMatchConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GeoMatchSetGeoMatchConstraint>(guardedValue, (value) => GeoMatchSetGeoMatchConstraint.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [GeoMatchSet] resource.
  GeoMatchSet.reference(String urn)
    : super(
        'aws:wafregional/geoMatchSet:GeoMatchSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    geoMatchConstraints = registerOutput<List<GeoMatchSetGeoMatchConstraint>?>('geoMatchConstraints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GeoMatchSetGeoMatchConstraint>(guardedValue, (value) => GeoMatchSetGeoMatchConstraint.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
