import 'package:pulumi/pulumi.dart' as pulumi;
import 'cidr_collection_args.dart';
import 'cidr_collection_state.dart';

/// Provides a Route53 CIDR collection resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.CidrCollection("example", {name: "collection-1"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.CidrCollection("example", name="collection-1")
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
/// 		_, err := route53.NewCidrCollection(ctx, "example", &route53.CidrCollectionArgs{
/// 			Name: pulumi.String("collection-1"),
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
/// resource "aws_route53_cidrcollection" "example" {
///   name = "collection-1"
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
///         var example = new CidrCollection("example", CidrCollectionArgs.builder()
///             .name("collection-1")
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CIDR collections using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/cidrCollection:CidrCollection example 9ac32814-3e67-0932-6048-8d779cc6f511
/// ```
class CidrCollection extends pulumi.CustomResource {
  /// ARN of the CIDR collection.
  late final pulumi.Output<String> arn;
  /// Unique name for the CIDR collection.
  late final pulumi.Output<String> name;
  /// The lastest version of the CIDR collection.
  late final pulumi.Output<int> version;

  /// Creates a new [CidrCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CidrCollection]. {@macro pulumi_route53_cidr_collection_cidr_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CidrCollection(
    String name, {
    CidrCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/cidrCollection:CidrCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [CidrCollection] resource's state with the given [name] and [id].
  static CidrCollection get(
    String name,
    pulumi.Input<String> id, {
    CidrCollectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CidrCollection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CidrCollection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/cidrCollection:CidrCollection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [CidrCollection] resource.
  CidrCollection.reference(String urn)
    : super(
        'aws:route53/cidrCollection:CidrCollection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    version = registerOutput<int>('version');
  }
}
