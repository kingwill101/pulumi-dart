import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_set_args.dart';
import 'ip_set_ip_set_descriptor.dart';

/// Provides a WAF IPSet Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ipset = new aws.waf.IpSet("ipset", {
///     name: "tfIPSet",
///     ipSetDescriptors: [
///         {
///             type: "IPV4",
///             value: "192.0.7.0/24",
///         },
///         {
///             type: "IPV4",
///             value: "10.16.16.0/16",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ipset = aws.waf.IpSet("ipset",
///     name="tfIPSet",
///     ip_set_descriptors=[
///         {
///             "type": "IPV4",
///             "value": "192.0.7.0/24",
///         },
///         {
///             "type": "IPV4",
///             "value": "10.16.16.0/16",
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
///     var ipset = new Aws.Waf.IpSet("ipset", new()
///     {
///         Name = "tfIPSet",
///         IpSetDescriptors = new[]
///         {
///             new Aws.Waf.Inputs.IpSetIpSetDescriptorArgs
///             {
///                 Type = "IPV4",
///                 Value = "192.0.7.0/24",
///             },
///             new Aws.Waf.Inputs.IpSetIpSetDescriptorArgs
///             {
///                 Type = "IPV4",
///                 Value = "10.16.16.0/16",
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
/// 		_, err := waf.NewIpSet(ctx, "ipset", &waf.IpSetArgs{
/// 			Name: pulumi.String("tfIPSet"),
/// 			IpSetDescriptors: waf.IpSetIpSetDescriptorArray{
/// 				&waf.IpSetIpSetDescriptorArgs{
/// 					Type:  pulumi.String("IPV4"),
/// 					Value: pulumi.String("192.0.7.0/24"),
/// 				},
/// 				&waf.IpSetIpSetDescriptorArgs{
/// 					Type:  pulumi.String("IPV4"),
/// 					Value: pulumi.String("10.16.16.0/16"),
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
/// import com.pulumi.aws.waf.IpSet;
/// import com.pulumi.aws.waf.IpSetArgs;
/// import com.pulumi.aws.waf.inputs.IpSetIpSetDescriptorArgs;
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
///         var ipset = new IpSet("ipset", IpSetArgs.builder()
///             .name("tfIPSet")
///             .ipSetDescriptors(
///                 IpSetIpSetDescriptorArgs.builder()
///                     .type("IPV4")
///                     .value("192.0.7.0/24")
///                     .build(),
///                 IpSetIpSetDescriptorArgs.builder()
///                     .type("IPV4")
///                     .value("10.16.16.0/16")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ipset:
///     type: aws:waf:IpSet
///     properties:
///       name: tfIPSet
///       ipSetDescriptors:
///         - type: IPV4
///           value: 192.0.7.0/24
///         - type: IPV4
///           value: 10.16.16.0/16
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF IPSets using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/ipSet:IpSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class IpSet extends pulumi.CustomResource {
  /// The ARN of the WAF IPSet.
  late final pulumi.Output<String> arn;

  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR format) from which web requests originate.
  late final pulumi.Output<List<IpSetIpSetDescriptor>?> ipSetDescriptors;

  /// The name or description of the IPSet.
  late final pulumi.Output<String> name;

  /// Creates a new [IpSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpSet]. {@macro pulumi_waf_ip_set_ip_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpSet(
    String name, {
    IpSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/ipSet:IpSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ipSetDescriptors =
        registerOutput<List<IpSetIpSetDescriptor>?>('ipSetDescriptors');
    this.name = registerOutput<String>('name');
  }
}
