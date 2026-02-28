import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_location_args.dart';

/// Provides a Route53 CIDR location resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.CidrCollection("example", {name: "collection-1"});
/// const exampleCidrLocation = new aws.route53.CidrLocation("example", {
///     cidrCollectionId: example.id,
///     name: "office",
///     cidrBlocks: [
///         "200.5.3.0/24",
///         "200.6.3.0/24",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.CidrCollection("example", name="collection-1")
/// example_cidr_location = aws.route53.CidrLocation("example",
///     cidr_collection_id=example.id,
///     name="office",
///     cidr_blocks=[
///         "200.5.3.0/24",
///         "200.6.3.0/24",
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
///     var example = new Aws.Route53.CidrCollection("example", new()
///     {
///         Name = "collection-1",
///     });
///
///     var exampleCidrLocation = new Aws.Route53.CidrLocation("example", new()
///     {
///         CidrCollectionId = example.Id,
///         Name = "office",
///         CidrBlocks = new[]
///         {
///             "200.5.3.0/24",
///             "200.6.3.0/24",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := route53.NewCidrCollection(ctx, "example", &route53.CidrCollectionArgs{
/// 			Name: pulumi.String("collection-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewCidrLocation(ctx, "example", &route53.CidrLocationArgs{
/// 			CidrCollectionId: example.ID(),
/// 			Name:             pulumi.String("office"),
/// 			CidrBlocks: pulumi.StringArray{
/// 				pulumi.String("200.5.3.0/24"),
/// 				pulumi.String("200.6.3.0/24"),
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
/// import com.pulumi.aws.route53.CidrCollection;
/// import com.pulumi.aws.route53.CidrCollectionArgs;
/// import com.pulumi.aws.route53.CidrLocation;
/// import com.pulumi.aws.route53.CidrLocationArgs;
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
///         var example = new CidrCollection("example", CidrCollectionArgs.builder()
///             .name("collection-1")
///             .build());
///
///         var exampleCidrLocation = new CidrLocation("exampleCidrLocation", CidrLocationArgs.builder()
///             .cidrCollectionId(example.id())
///             .name("office")
///             .cidrBlocks(
///                 "200.5.3.0/24",
///                 "200.6.3.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:CidrCollection
///     properties:
///       name: collection-1
///   exampleCidrLocation:
///     type: aws:route53:CidrLocation
///     name: example
///     properties:
///       cidrCollectionId: ${example.id}
///       name: office
///       cidrBlocks:
///         - 200.5.3.0/24
///         - 200.6.3.0/24
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CIDR locations using their the CIDR collection ID and location name. For example:
///
/// ```sh
/// $ pulumi import aws:route53/cidrLocation:CidrLocation example 9ac32814-3e67-0932-6048-8d779cc6f511,office
/// ```
class CidrLocation extends pulumi.CustomResource {
  /// CIDR blocks for the location.
  late final pulumi.Output<List<String>> cidrBlocks;

  /// The ID of the CIDR collection to update.
  late final pulumi.Output<String> cidrCollectionId;

  /// Name for the CIDR location.
  late final pulumi.Output<String> name;

  /// Creates a new [CidrLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CidrLocation]. {@macro pulumi_route53_cidr_location_cidr_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CidrLocation(
    String name, {
    CidrLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/cidrLocation:CidrLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlocks = registerOutput<List<String>>('cidrBlocks');
    this.cidrCollectionId = registerOutput<String>('cidrCollectionId');
    this.name = registerOutput<String>('name');
  }
}
