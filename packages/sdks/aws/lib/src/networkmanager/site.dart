import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_args.dart';
import 'site_location.dart';
import 'site_state.dart';

/// Manages a Network Manager site. Use this resource to create a site in a global network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.GlobalNetwork("example", {});
/// const exampleSite = new aws.networkmanager.Site("example", {globalNetworkId: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.GlobalNetwork("example")
/// example_site = aws.networkmanager.Site("example", global_network_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.GlobalNetwork("example");
///
///     var exampleSite = new Aws.NetworkManager.Site("example", new()
///     {
///         GlobalNetworkId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmanager.NewSite(ctx, "example", &networkmanager.SiteArgs{
/// 			GlobalNetworkId: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_networkmanager_globalnetwork" "example" {
/// }
/// resource "aws_networkmanager_site" "example" {
///   global_network_id = aws_networkmanager_globalnetwork.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.Site;
/// import com.pulumi.aws.networkmanager.SiteArgs;
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
///         var example = new GlobalNetwork("example");
///
///         var exampleSite = new Site("exampleSite", SiteArgs.builder()
///             .globalNetworkId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:GlobalNetwork
///   exampleSite:
///     type: aws:networkmanager:Site
///     name: example
///     properties:
///       globalNetworkId: ${example.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.Site` using the site ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/site:Site example arn:aws:networkmanager::123456789012:site/global-network-0d47f6t230mz46dy4/site-444555aaabbb11223
/// ```
class Site extends pulumi.CustomResource {
  /// Site ARN.
  late final pulumi.Output<String> arn;
  /// Description of the Site.
  late final pulumi.Output<String?> description;
  /// ID of the Global Network to create the site in.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> globalNetworkId;
  /// Site location. See below.
  late final pulumi.Output<SiteLocation?> location;
  /// Key-value tags for the Site. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Site].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Site]. {@macro pulumi_networkmanager_site_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Site(
    String name, {
    SiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/site:Site',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    location = registerOutput<SiteLocation?>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Site] resource's state with the given [name] and [id].
  static Site get(
    String name,
    pulumi.Input<String> id, {
    SiteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Site._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Site._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/site:Site',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    location = registerOutput<SiteLocation?>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Site] resource.
  Site.reference(String urn)
    : super(
        'aws:networkmanager/site:Site',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    globalNetworkId = registerOutput<String>('globalNetworkId');
    location = registerOutput<SiteLocation?>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
