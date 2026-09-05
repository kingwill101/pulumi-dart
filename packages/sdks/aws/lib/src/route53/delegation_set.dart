import 'package:pulumi/pulumi.dart' as pulumi;
import 'delegation_set_args.dart';
import 'delegation_set_state.dart';

/// Provides a [Route53 Delegation Set](https://docs.aws.amazon.com/Route53/latest/APIReference/API-actions-by-function.html#actions-by-function-reusable-delegation-sets) resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.route53.DelegationSet("main", {referenceName: "DynDNS"});
/// const primary = new aws.route53.Zone("primary", {
///     name: "mydomain.com",
///     delegationSetId: main.id,
/// });
/// const secondary = new aws.route53.Zone("secondary", {
///     name: "coolcompany.io",
///     delegationSetId: main.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.route53.DelegationSet("main", reference_name="DynDNS")
/// primary = aws.route53.Zone("primary",
///     name="mydomain.com",
///     delegation_set_id=main.id)
/// secondary = aws.route53.Zone("secondary",
///     name="coolcompany.io",
///     delegation_set_id=main.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Route53.DelegationSet("main", new()
///     {
///         ReferenceName = "DynDNS",
///     });
///
///     var primary = new Aws.Route53.Zone("primary", new()
///     {
///         Name = "mydomain.com",
///         DelegationSetId = main.Id,
///     });
///
///     var secondary = new Aws.Route53.Zone("secondary", new()
///     {
///         Name = "coolcompany.io",
///         DelegationSetId = main.Id,
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
/// 		main, err := route53.NewDelegationSet(ctx, "main", &route53.DelegationSetArgs{
/// 			ReferenceName: pulumi.String("DynDNS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewZone(ctx, "primary", &route53.ZoneArgs{
/// 			Name:            pulumi.String("mydomain.com"),
/// 			DelegationSetId: main.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewZone(ctx, "secondary", &route53.ZoneArgs{
/// 			Name:            pulumi.String("coolcompany.io"),
/// 			DelegationSetId: main.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_route53_delegationset" "main" {
///   reference_name = "DynDNS"
/// }
/// resource "aws_route53_zone" "primary" {
///   name              = "mydomain.com"
///   delegation_set_id = aws_route53_delegationset.main.id
/// }
/// resource "aws_route53_zone" "secondary" {
///   name              = "coolcompany.io"
///   delegation_set_id = aws_route53_delegationset.main.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.route53.DelegationSet;
/// import com.pulumi.aws.route53.DelegationSetArgs;
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
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
///         var main = new DelegationSet("main", DelegationSetArgs.builder()
///             .referenceName("DynDNS")
///             .build());
///
///         var primary = new Zone("primary", ZoneArgs.builder()
///             .name("mydomain.com")
///             .delegationSetId(main.id())
///             .build());
///
///         var secondary = new Zone("secondary", ZoneArgs.builder()
///             .name("coolcompany.io")
///             .delegationSetId(main.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:route53:DelegationSet
///     properties:
///       referenceName: DynDNS
///   primary:
///     type: aws:route53:Zone
///     properties:
///       name: mydomain.com
///       delegationSetId: ${main.id}
///   secondary:
///     type: aws:route53:Zone
///     properties:
///       name: coolcompany.io
///       delegationSetId: ${main.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Delegation Sets using the delegation set `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/delegationSet:DelegationSet set1 N1PA6795SAMPLE
/// ```
class DelegationSet extends pulumi.CustomResource {
  /// ARN of the Delegation Set.
  late final pulumi.Output<String> arn;
  /// A list of authoritative name servers for the hosted zone
  /// (effectively a list of NS records).
  late final pulumi.Output<List<String>> nameServers;
  /// This is a reference name used in Caller Reference
  /// (helpful for identifying single delegation set amongst others)
  late final pulumi.Output<String?> referenceName;

  /// Creates a new [DelegationSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DelegationSet]. {@macro pulumi_route53_delegation_set_delegation_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DelegationSet(
    String name, {
    DelegationSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/delegationSet:DelegationSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    nameServers = registerOutput<List<String>>('nameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    referenceName = registerOutput<String?>('referenceName');
  }

  /// Gets an existing [DelegationSet] resource's state with the given [name] and [id].
  static DelegationSet get(
    String name,
    pulumi.Input<String> id, {
    DelegationSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DelegationSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DelegationSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/delegationSet:DelegationSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    nameServers = registerOutput<List<String>>('nameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    referenceName = registerOutput<String?>('referenceName');
  }

  /// Creates a typed reference to an existing [DelegationSet] resource.
  DelegationSet.reference(String urn)
    : super(
        'aws:route53/delegationSet:DelegationSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    nameServers = registerOutput<List<String>>('nameServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    referenceName = registerOutput<String?>('referenceName');
  }
}
