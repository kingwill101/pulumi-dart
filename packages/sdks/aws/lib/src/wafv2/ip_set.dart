import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_set_args.dart';
import 'ip_set_state.dart';

/// Provides a WAFv2 IP Set Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.IpSet("example", {
///     name: "example",
///     description: "Example IP set",
///     scope: "REGIONAL",
///     ipAddressVersion: "IPV4",
///     addresses: [
///         "1.2.3.4/32",
///         "5.6.7.8/32",
///     ],
///     tags: {
///         Tag1: "Value1",
///         Tag2: "Value2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.IpSet("example",
///     name="example",
///     description="Example IP set",
///     scope="REGIONAL",
///     ip_address_version="IPV4",
///     addresses=[
///         "1.2.3.4/32",
///         "5.6.7.8/32",
///     ],
///     tags={
///         "Tag1": "Value1",
///         "Tag2": "Value2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafV2.IpSet("example", new()
///     {
///         Name = "example",
///         Description = "Example IP set",
///         Scope = "REGIONAL",
///         IpAddressVersion = "IPV4",
///         Addresses = new[]
///         {
///             "1.2.3.4/32",
///             "5.6.7.8/32",
///         },
///         Tags =
///         {
///             { "Tag1", "Value1" },
///             { "Tag2", "Value2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.NewIpSet(ctx, "example", &wafv2.IpSetArgs{
/// 			Name:             pulumi.String("example"),
/// 			Description:      pulumi.String("Example IP set"),
/// 			Scope:            pulumi.String("REGIONAL"),
/// 			IpAddressVersion: pulumi.String("IPV4"),
/// 			Addresses: pulumi.StringArray{
/// 				pulumi.String("1.2.3.4/32"),
/// 				pulumi.String("5.6.7.8/32"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
/// 				"Tag2": pulumi.String("Value2"),
/// 			},
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
/// resource "aws_wafv2_ipset" "example" {
///   name               = "example"
///   description        = "Example IP set"
///   scope              = "REGIONAL"
///   ip_address_version = "IPV4"
///   addresses          = ["1.2.3.4/32", "5.6.7.8/32"]
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.IpSet;
/// import com.pulumi.aws.wafv2.IpSetArgs;
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
///         var example = new IpSet("example", IpSetArgs.builder()
///             .name("example")
///             .description("Example IP set")
///             .scope("REGIONAL")
///             .ipAddressVersion("IPV4")
///             .addresses(
///                 "1.2.3.4/32",
///                 "5.6.7.8/32")
///             .tags(Map.ofEntries(
///                 Map.entry("Tag1", "Value1"),
///                 Map.entry("Tag2", "Value2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafv2:IpSet
///     properties:
///       name: example
///       description: Example IP set
///       scope: REGIONAL
///       ipAddressVersion: IPV4
///       addresses:
///         - 1.2.3.4/32
///         - 5.6.7.8/32
///       tags:
///         Tag1: Value1
///         Tag2: Value2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 IP Sets using `ID/name/scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/ipSet:IpSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc/example/REGIONAL
/// ```
class IpSet extends pulumi.CustomResource {
  /// Contains an array of strings that specifies zero or more IP addresses or blocks of IP addresses. All addresses must be specified using Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4 and IPv6 CIDR ranges except for `/0`.
  late final pulumi.Output<List<String>?> addresses;
  /// ARN of the IP set.
  late final pulumi.Output<String> arn;
  /// A friendly description of the IP set.
  late final pulumi.Output<String?> description;
  /// Specify IPV4 or IPV6. Valid values are `IPV4` or `IPV6`.
  late final pulumi.Output<String> ipAddressVersion;
  late final pulumi.Output<String> lockToken;
  /// A friendly name of the IP set. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the Region US East (N. Virginia).
  late final pulumi.Output<String> scope;
  /// An array of key:value pairs to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [IpSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpSet]. {@macro pulumi_wafv2_ip_set_ip_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpSet(
    String name, {
    IpSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/ipSet:IpSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    addresses = registerOutput<List<String>?>('addresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    ipAddressVersion = registerOutput<String>('ipAddressVersion');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [IpSet] resource's state with the given [name] and [id].
  static IpSet get(
    String name,
    pulumi.Input<String> id, {
    IpSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return IpSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  IpSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/ipSet:IpSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addresses = registerOutput<List<String>?>('addresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    ipAddressVersion = registerOutput<String>('ipAddressVersion');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [IpSet] resource.
  IpSet.reference(String urn)
    : super(
        'aws:wafv2/ipSet:IpSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addresses = registerOutput<List<String>?>('addresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    ipAddressVersion = registerOutput<String>('ipAddressVersion');
    lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    scope = registerOutput<String>('scope');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
