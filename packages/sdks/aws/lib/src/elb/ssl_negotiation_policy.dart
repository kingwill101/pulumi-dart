import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_negotiation_policy_args.dart';
import 'ssl_negotiation_policy_attribute.dart';
import 'ssl_negotiation_policy_state.dart';

/// Provides a load balancer SSL negotiation policy, which allows an ELB to control the ciphers and protocols that are supported during SSL negotiations between a client and a load balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lb = new aws.elb.LoadBalancer("lb", {
///     listeners: [{
///         instancePort: 8000,
///         instanceProtocol: "https",
///         lbPort: 443,
///         lbProtocol: "https",
///         sslCertificateId: "arn:aws:iam::123456789012:server-certificate/certName",
///     }],
///     name: "test-lb",
///     availabilityZones: ["us-east-1a"],
/// });
/// const foo = new aws.elb.SslNegotiationPolicy("foo", {
///     attributes: [
///         {
///             name: "Protocol-TLSv1",
///             value: "false",
///         },
///         {
///             name: "Protocol-TLSv1.1",
///             value: "false",
///         },
///         {
///             name: "Protocol-TLSv1.2",
///             value: "true",
///         },
///         {
///             name: "Server-Defined-Cipher-Order",
///             value: "true",
///         },
///         {
///             name: "ECDHE-RSA-AES128-GCM-SHA256",
///             value: "true",
///         },
///         {
///             name: "AES128-GCM-SHA256",
///             value: "true",
///         },
///         {
///             name: "EDH-RSA-DES-CBC3-SHA",
///             value: "false",
///         },
///     ],
///     name: "foo-policy",
///     loadBalancer: lb.id,
///     lbPort: 443,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lb = aws.elb.LoadBalancer("lb",
///     listeners=[{
///         "instance_port": 8000,
///         "instance_protocol": "https",
///         "lb_port": 443,
///         "lb_protocol": "https",
///         "ssl_certificate_id": "arn:aws:iam::123456789012:server-certificate/certName",
///     }],
///     name="test-lb",
///     availability_zones=["us-east-1a"])
/// foo = aws.elb.SslNegotiationPolicy("foo",
///     attributes=[
///         {
///             "name": "Protocol-TLSv1",
///             "value": "false",
///         },
///         {
///             "name": "Protocol-TLSv1.1",
///             "value": "false",
///         },
///         {
///             "name": "Protocol-TLSv1.2",
///             "value": "true",
///         },
///         {
///             "name": "Server-Defined-Cipher-Order",
///             "value": "true",
///         },
///         {
///             "name": "ECDHE-RSA-AES128-GCM-SHA256",
///             "value": "true",
///         },
///         {
///             "name": "AES128-GCM-SHA256",
///             "value": "true",
///         },
///         {
///             "name": "EDH-RSA-DES-CBC3-SHA",
///             "value": "false",
///         },
///     ],
///     name="foo-policy",
///     load_balancer=lb.id,
///     lb_port=443)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lb = new Aws.Elb.LoadBalancer("lb", new()
///     {
///         Listeners = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerListenerArgs
///             {
///                 InstancePort = 8000,
///                 InstanceProtocol = "https",
///                 LbPort = 443,
///                 LbProtocol = "https",
///                 SslCertificateId = "arn:aws:iam::123456789012:server-certificate/certName",
///             },
///         },
///         Name = "test-lb",
///         AvailabilityZones = new[]
///         {
///             "us-east-1a",
///         },
///     });
///
///     var foo = new Aws.Elb.SslNegotiationPolicy("foo", new()
///     {
///         Attributes = new[]
///         {
///             new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
///             {
///                 Name = "Protocol-TLSv1",
///                 Value = "false",
///             },
///             new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
///             {
///                 Name = "Protocol-TLSv1.1",
///                 Value = "false",
///             },
///             new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
///             {
///                 Name = "Protocol-TLSv1.2",
///                 Value = "true",
///             },
///             new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
///             {
///                 Name = "Server-Defined-Cipher-Order",
///                 Value = "true",
///             },
///             new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
///             {
///                 Name = "ECDHE-RSA-AES128-GCM-SHA256",
///                 Value = "true",
///             },
///             new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
///             {
///                 Name = "AES128-GCM-SHA256",
///                 Value = "true",
///             },
///             new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
///             {
///                 Name = "EDH-RSA-DES-CBC3-SHA",
///                 Value = "false",
///             },
///         },
///         Name = "foo-policy",
///         LoadBalancer = lb.Id,
///         LbPort = 443,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		lb, err := elb.NewLoadBalancer(ctx, "lb", &elb.LoadBalancerArgs{
/// 			Listeners: elb.LoadBalancerListenerArray{
/// 				&elb.LoadBalancerListenerArgs{
/// 					InstancePort:     pulumi.Int(8000),
/// 					InstanceProtocol: pulumi.String("https"),
/// 					LbPort:           pulumi.Int(443),
/// 					LbProtocol:       pulumi.String("https"),
/// 					SslCertificateId: pulumi.String("arn:aws:iam::123456789012:server-certificate/certName"),
/// 				},
/// 			},
/// 			Name: pulumi.String("test-lb"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-east-1a"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elb.NewSslNegotiationPolicy(ctx, "foo", &elb.SslNegotiationPolicyArgs{
/// 			Attributes: elb.SslNegotiationPolicyAttributeArray{
/// 				&elb.SslNegotiationPolicyAttributeArgs{
/// 					Name:  pulumi.String("Protocol-TLSv1"),
/// 					Value: pulumi.String("false"),
/// 				},
/// 				&elb.SslNegotiationPolicyAttributeArgs{
/// 					Name:  pulumi.String("Protocol-TLSv1.1"),
/// 					Value: pulumi.String("false"),
/// 				},
/// 				&elb.SslNegotiationPolicyAttributeArgs{
/// 					Name:  pulumi.String("Protocol-TLSv1.2"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 				&elb.SslNegotiationPolicyAttributeArgs{
/// 					Name:  pulumi.String("Server-Defined-Cipher-Order"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 				&elb.SslNegotiationPolicyAttributeArgs{
/// 					Name:  pulumi.String("ECDHE-RSA-AES128-GCM-SHA256"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 				&elb.SslNegotiationPolicyAttributeArgs{
/// 					Name:  pulumi.String("AES128-GCM-SHA256"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 				&elb.SslNegotiationPolicyAttributeArgs{
/// 					Name:  pulumi.String("EDH-RSA-DES-CBC3-SHA"),
/// 					Value: pulumi.String("false"),
/// 				},
/// 			},
/// 			Name:         pulumi.String("foo-policy"),
/// 			LoadBalancer: lb.ID().ToIDOutput().ToStringOutput(),
/// 			LbPort:       pulumi.Int(443),
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
/// resource "aws_elb_loadbalancer" "lb" {
///   listeners {
///     instance_port      = 8000
///     instance_protocol  = "https"
///     lb_port            = 443
///     lb_protocol        = "https"
///     ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
///   }
///   name               = "test-lb"
///   availability_zones = ["us-east-1a"]
/// }
/// resource "aws_elb_sslnegotiationpolicy" "foo" {
///   attributes {
///     name  = "Protocol-TLSv1"
///     value = "false"
///   }
///   attributes {
///     name  = "Protocol-TLSv1.1"
///     value = "false"
///   }
///   attributes {
///     name  = "Protocol-TLSv1.2"
///     value = "true"
///   }
///   attributes {
///     name  = "Server-Defined-Cipher-Order"
///     value = "true"
///   }
///   attributes {
///     name  = "ECDHE-RSA-AES128-GCM-SHA256"
///     value = "true"
///   }
///   attributes {
///     name  = "AES128-GCM-SHA256"
///     value = "true"
///   }
///   attributes {
///     name  = "EDH-RSA-DES-CBC3-SHA"
///     value = "false"
///   }
///   name          = "foo-policy"
///   load_balancer = aws_elb_loadbalancer.lb.id
///   lb_port       = 443
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
/// import com.pulumi.aws.elb.SslNegotiationPolicy;
/// import com.pulumi.aws.elb.SslNegotiationPolicyArgs;
/// import com.pulumi.aws.elb.inputs.SslNegotiationPolicyAttributeArgs;
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
///         var lb = new LoadBalancer("lb", LoadBalancerArgs.builder()
///             .listeners(LoadBalancerListenerArgs.builder()
///                 .instancePort(8000)
///                 .instanceProtocol("https")
///                 .lbPort(443)
///                 .lbProtocol("https")
///                 .sslCertificateId("arn:aws:iam::123456789012:server-certificate/certName")
///                 .build())
///             .name("test-lb")
///             .availabilityZones("us-east-1a")
///             .build());
///
///         var foo = new SslNegotiationPolicy("foo", SslNegotiationPolicyArgs.builder()
///             .attributes(
///                 SslNegotiationPolicyAttributeArgs.builder()
///                     .name("Protocol-TLSv1")
///                     .value("false")
///                     .build(),
///                 SslNegotiationPolicyAttributeArgs.builder()
///                     .name("Protocol-TLSv1.1")
///                     .value("false")
///                     .build(),
///                 SslNegotiationPolicyAttributeArgs.builder()
///                     .name("Protocol-TLSv1.2")
///                     .value("true")
///                     .build(),
///                 SslNegotiationPolicyAttributeArgs.builder()
///                     .name("Server-Defined-Cipher-Order")
///                     .value("true")
///                     .build(),
///                 SslNegotiationPolicyAttributeArgs.builder()
///                     .name("ECDHE-RSA-AES128-GCM-SHA256")
///                     .value("true")
///                     .build(),
///                 SslNegotiationPolicyAttributeArgs.builder()
///                     .name("AES128-GCM-SHA256")
///                     .value("true")
///                     .build(),
///                 SslNegotiationPolicyAttributeArgs.builder()
///                     .name("EDH-RSA-DES-CBC3-SHA")
///                     .value("false")
///                     .build())
///             .name("foo-policy")
///             .loadBalancer(lb.id())
///             .lbPort(443)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lb:
///     type: aws:elb:LoadBalancer
///     properties:
///       listeners:
///         - instancePort: 8000
///           instanceProtocol: https
///           lbPort: 443
///           lbProtocol: https
///           sslCertificateId: arn:aws:iam::123456789012:server-certificate/certName
///       name: test-lb
///       availabilityZones:
///         - us-east-1a
///   foo:
///     type: aws:elb:SslNegotiationPolicy
///     properties:
///       attributes:
///         - name: Protocol-TLSv1
///           value: 'false'
///         - name: Protocol-TLSv1.1
///           value: 'false'
///         - name: Protocol-TLSv1.2
///           value: 'true'
///         - name: Server-Defined-Cipher-Order
///           value: 'true'
///         - name: ECDHE-RSA-AES128-GCM-SHA256
///           value: 'true'
///         - name: AES128-GCM-SHA256
///           value: 'true'
///         - name: EDH-RSA-DES-CBC3-SHA
///           value: 'false'
///       name: foo-policy
///       loadBalancer: ${lb.id}
///       lbPort: 443
/// ```
class SslNegotiationPolicy extends pulumi.CustomResource {
  /// An SSL Negotiation policy attribute. Each has two properties:
  late final pulumi.Output<List<SslNegotiationPolicyAttribute>?> attributes;
  /// The load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  late final pulumi.Output<int> lbPort;
  /// The load balancer to which the policy
  /// should be attached.
  late final pulumi.Output<String> loadBalancer;
  /// The name of the SSL negotiation policy.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  ///
  /// To set your attributes, please see the [AWS Elastic Load Balancing Developer Guide](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-security-policy-table.html) for a listing of the supported SSL protocols, SSL options, and SSL ciphers.
  ///
  /// &gt; **NOTE:** The AWS documentation references Server Order Preference, which the AWS Elastic Load Balancing API refers to as `Server-Defined-Cipher-Order`. If you wish to set Server Order Preference, use this value instead.
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [SslNegotiationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SslNegotiationPolicy]. {@macro pulumi_elb_ssl_negotiation_policy_ssl_negotiation_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SslNegotiationPolicy(
    String name, {
    SslNegotiationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/sslNegotiationPolicy:SslNegotiationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    attributes = registerOutput<List<SslNegotiationPolicyAttribute>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SslNegotiationPolicyAttribute>(guardedValue, (value) => SslNegotiationPolicyAttribute.fromMap((value as Map).cast<String, dynamic>())); });
    lbPort = registerOutput<int>('lbPort');
    loadBalancer = registerOutput<String>('loadBalancer');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    triggers = registerOutput<Map<String, String>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [SslNegotiationPolicy] resource's state with the given [name] and [id].
  static SslNegotiationPolicy get(
    String name,
    pulumi.Input<String> id, {
    SslNegotiationPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SslNegotiationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SslNegotiationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/sslNegotiationPolicy:SslNegotiationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributes = registerOutput<List<SslNegotiationPolicyAttribute>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SslNegotiationPolicyAttribute>(guardedValue, (value) => SslNegotiationPolicyAttribute.fromMap((value as Map).cast<String, dynamic>())); });
    lbPort = registerOutput<int>('lbPort');
    loadBalancer = registerOutput<String>('loadBalancer');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    triggers = registerOutput<Map<String, String>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [SslNegotiationPolicy] resource.
  SslNegotiationPolicy.reference(String urn)
    : super(
        'aws:elb/sslNegotiationPolicy:SslNegotiationPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attributes = registerOutput<List<SslNegotiationPolicyAttribute>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SslNegotiationPolicyAttribute>(guardedValue, (value) => SslNegotiationPolicyAttribute.fromMap((value as Map).cast<String, dynamic>())); });
    lbPort = registerOutput<int>('lbPort');
    loadBalancer = registerOutput<String>('loadBalancer');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    triggers = registerOutput<Map<String, String>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
