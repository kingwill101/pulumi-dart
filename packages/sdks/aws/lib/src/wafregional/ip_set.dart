import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_set_args.dart';
import 'ip_set_ip_set_descriptor.dart';
import 'ip_set_state.dart';

/// Provides a WAF Regional IPSet Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ipset = new aws.wafregional.IpSet("ipset", {
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
///     name: "tfIPSet",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ipset = aws.wafregional.IpSet("ipset",
///     ip_set_descriptors=[
///         {
///             "type": "IPV4",
///             "value": "192.0.7.0/24",
///         },
///         {
///             "type": "IPV4",
///             "value": "10.16.16.0/16",
///         },
///     ],
///     name="tfIPSet")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipset = new Aws.WafRegional.IpSet("ipset", new()
///     {
///         IpSetDescriptors = new[]
///         {
///             new Aws.WafRegional.Inputs.IpSetIpSetDescriptorArgs
///             {
///                 Type = "IPV4",
///                 Value = "192.0.7.0/24",
///             },
///             new Aws.WafRegional.Inputs.IpSetIpSetDescriptorArgs
///             {
///                 Type = "IPV4",
///                 Value = "10.16.16.0/16",
///             },
///         },
///         Name = "tfIPSet",
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
/// 		_, err := wafregional.NewIpSet(ctx, "ipset", &wafregional.IpSetArgs{
/// 			IpSetDescriptors: wafregional.IpSetIpSetDescriptorArray{
/// 				&wafregional.IpSetIpSetDescriptorArgs{
/// 					Type:  pulumi.String("IPV4"),
/// 					Value: pulumi.String("192.0.7.0/24"),
/// 				},
/// 				&wafregional.IpSetIpSetDescriptorArgs{
/// 					Type:  pulumi.String("IPV4"),
/// 					Value: pulumi.String("10.16.16.0/16"),
/// 				},
/// 			},
/// 			Name: pulumi.String("tfIPSet"),
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
/// resource "aws_wafregional_ipset" "ipset" {
///   ip_set_descriptors {
///     type  = "IPV4"
///     value = "192.0.7.0/24"
///   }
///   ip_set_descriptors {
///     type  = "IPV4"
///     value = "10.16.16.0/16"
///   }
///   name = "tfIPSet"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.IpSet;
/// import com.pulumi.aws.wafregional.IpSetArgs;
/// import com.pulumi.aws.wafregional.inputs.IpSetIpSetDescriptorArgs;
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
///         var ipset = new IpSet("ipset", IpSetArgs.builder()
///             .ipSetDescriptors(
///                 IpSetIpSetDescriptorArgs.builder()
///                     .type("IPV4")
///                     .value("192.0.7.0/24")
///                     .build(),
///                 IpSetIpSetDescriptorArgs.builder()
///                     .type("IPV4")
///                     .value("10.16.16.0/16")
///                     .build())
///             .name("tfIPSet")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ipset:
///     type: aws:wafregional:IpSet
///     properties:
///       ipSetDescriptors:
///         - type: IPV4
///           value: 192.0.7.0/24
///         - type: IPV4
///           value: 10.16.16.0/16
///       name: tfIPSet
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional IPSets using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/ipSet:IpSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class IpSet extends pulumi.CustomResource {
  /// The ARN of the WAF IPSet.
  late final pulumi.Output<String> arn;
  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR notation) from which web requests originate.
  late final pulumi.Output<List<IpSetIpSetDescriptor>?> ipSetDescriptors;
  /// The name or description of the IPSet.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [IpSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpSet]. {@macro pulumi_wafregional_ip_set_ip_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpSet(
    String name, {
    IpSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/ipSet:IpSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    ipSetDescriptors = registerOutput<List<IpSetIpSetDescriptor>?>('ipSetDescriptors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpSetIpSetDescriptor>(guardedValue, (value) => IpSetIpSetDescriptor.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
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
          'aws:wafregional/ipSet:IpSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    ipSetDescriptors = registerOutput<List<IpSetIpSetDescriptor>?>('ipSetDescriptors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpSetIpSetDescriptor>(guardedValue, (value) => IpSetIpSetDescriptor.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [IpSet] resource.
  IpSet.reference(String urn)
    : super(
        'aws:wafregional/ipSet:IpSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    ipSetDescriptors = registerOutput<List<IpSetIpSetDescriptor>?>('ipSetDescriptors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpSetIpSetDescriptor>(guardedValue, (value) => IpSetIpSetDescriptor.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
