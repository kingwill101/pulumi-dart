import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_set_args.dart';

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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.IpSet;
/// import com.pulumi.aws.wafv2.IpSetArgs;
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

  /// The Amazon Resource Name (ARN) of the IP set.
  late final pulumi.Output<String> arn;

  /// A friendly description of the IP set.
  late final pulumi.Output<String?> description;

  /// Specify IPV4 or IPV6. Valid values are `IPV4` or `IPV6`.
  late final pulumi.Output<String> ipAddressVersion;
  late final pulumi.Output<String> lockToken;

  /// A friendly name of the IP set. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the Region US East (N. Virginia).
  late final pulumi.Output<String> scope;

  /// An array of key:value pairs to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [IpSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpSet]. {@macro pulumi_wafv2_ip_set_ip_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpSet(String name, {IpSetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:wafv2/ipSet:IpSet',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.addresses = registerOutput<List<String>?>('addresses');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.ipAddressVersion = registerOutput<String>('ipAddressVersion');
    this.lockToken = registerOutput<String>('lockToken');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<String>('scope');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
