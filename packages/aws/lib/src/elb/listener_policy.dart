import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_policy_args.dart';

/// Attaches a load balancer policy to an ELB Listener.
///
/// ## Example Usage
///
/// ### Custom Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const wu_tang = new aws.elb.LoadBalancer("wu-tang", {
///     name: "wu-tang",
///     availabilityZones: ["us-east-1a"],
///     listeners: [{
///         instancePort: 443,
///         instanceProtocol: "http",
///         lbPort: 443,
///         lbProtocol: "https",
///         sslCertificateId: "arn:aws:iam::000000000000:server-certificate/wu-tang.net",
///     }],
///     tags: {
///         Name: "wu-tang",
///     },
/// });
/// const wu_tang_ssl = new aws.elb.LoadBalancerPolicy("wu-tang-ssl", {
///     loadBalancerName: wu_tang.name,
///     policyName: "wu-tang-ssl",
///     policyTypeName: "SSLNegotiationPolicyType",
///     policyAttributes: [
///         {
///             name: "ECDHE-ECDSA-AES128-GCM-SHA256",
///             value: "true",
///         },
///         {
///             name: "Protocol-TLSv1.2",
///             value: "true",
///         },
///     ],
/// });
/// const wu_tang_listener_policies_443 = new aws.elb.ListenerPolicy("wu-tang-listener-policies-443", {
///     loadBalancerName: wu_tang.name,
///     loadBalancerPort: 443,
///     policyNames: [wu_tang_ssl.policyName],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// wu_tang = aws.elb.LoadBalancer("wu-tang",
///     name="wu-tang",
///     availability_zones=["us-east-1a"],
///     listeners=[{
///         "instance_port": 443,
///         "instance_protocol": "http",
///         "lb_port": 443,
///         "lb_protocol": "https",
///         "ssl_certificate_id": "arn:aws:iam::000000000000:server-certificate/wu-tang.net",
///     }],
///     tags={
///         "Name": "wu-tang",
///     })
/// wu_tang_ssl = aws.elb.LoadBalancerPolicy("wu-tang-ssl",
///     load_balancer_name=wu_tang.name,
///     policy_name="wu-tang-ssl",
///     policy_type_name="SSLNegotiationPolicyType",
///     policy_attributes=[
///         {
///             "name": "ECDHE-ECDSA-AES128-GCM-SHA256",
///             "value": "true",
///         },
///         {
///             "name": "Protocol-TLSv1.2",
///             "value": "true",
///         },
///     ])
/// wu_tang_listener_policies_443 = aws.elb.ListenerPolicy("wu-tang-listener-policies-443",
///     load_balancer_name=wu_tang.name,
///     load_balancer_port=443,
///     policy_names=[wu_tang_ssl.policy_name])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var wu_tang = new Aws.Elb.LoadBalancer("wu-tang", new()
///     {
///         Name = "wu-tang",
///         AvailabilityZones = new[]
///         {
///             "us-east-1a",
///         },
///         Listeners = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerListenerArgs
///             {
///                 InstancePort = 443,
///                 InstanceProtocol = "http",
///                 LbPort = 443,
///                 LbProtocol = "https",
///                 SslCertificateId = "arn:aws:iam::000000000000:server-certificate/wu-tang.net",
///             },
///         },
///         Tags =
///         {
///             { "Name", "wu-tang" },
///         },
///     });
///
///     var wu_tang_ssl = new Aws.Elb.LoadBalancerPolicy("wu-tang-ssl", new()
///     {
///         LoadBalancerName = wu_tang.Name,
///         PolicyName = "wu-tang-ssl",
///         PolicyTypeName = "SSLNegotiationPolicyType",
///         PolicyAttributes = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerPolicyPolicyAttributeArgs
///             {
///                 Name = "ECDHE-ECDSA-AES128-GCM-SHA256",
///                 Value = "true",
///             },
///             new Aws.Elb.Inputs.LoadBalancerPolicyPolicyAttributeArgs
///             {
///                 Name = "Protocol-TLSv1.2",
///                 Value = "true",
///             },
///         },
///     });
///
///     var wu_tang_listener_policies_443 = new Aws.Elb.ListenerPolicy("wu-tang-listener-policies-443", new()
///     {
///         LoadBalancerName = wu_tang.Name,
///         LoadBalancerPort = 443,
///         PolicyNames = new[]
///         {
///             wu_tang_ssl.PolicyName,
///         },
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
/// 		wu_tang, err := elb.NewLoadBalancer(ctx, "wu-tang", &elb.LoadBalancerArgs{
/// 			Name: pulumi.String("wu-tang"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-east-1a"),
/// 			},
/// 			Listeners: elb.LoadBalancerListenerArray{
/// 				&elb.LoadBalancerListenerArgs{
/// 					InstancePort:     pulumi.Int(443),
/// 					InstanceProtocol: pulumi.String("http"),
/// 					LbPort:           pulumi.Int(443),
/// 					LbProtocol:       pulumi.String("https"),
/// 					SslCertificateId: pulumi.String("arn:aws:iam::000000000000:server-certificate/wu-tang.net"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("wu-tang"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wu_tang_ssl, err := elb.NewLoadBalancerPolicy(ctx, "wu-tang-ssl", &elb.LoadBalancerPolicyArgs{
/// 			LoadBalancerName: wu_tang.Name,
/// 			PolicyName:       pulumi.String("wu-tang-ssl"),
/// 			PolicyTypeName:   pulumi.String("SSLNegotiationPolicyType"),
/// 			PolicyAttributes: elb.LoadBalancerPolicyPolicyAttributeArray{
/// 				&elb.LoadBalancerPolicyPolicyAttributeArgs{
/// 					Name:  pulumi.String("ECDHE-ECDSA-AES128-GCM-SHA256"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 				&elb.LoadBalancerPolicyPolicyAttributeArgs{
/// 					Name:  pulumi.String("Protocol-TLSv1.2"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elb.NewListenerPolicy(ctx, "wu-tang-listener-policies-443", &elb.ListenerPolicyArgs{
/// 			LoadBalancerName: wu_tang.Name,
/// 			LoadBalancerPort: pulumi.Int(443),
/// 			PolicyNames: pulumi.StringArray{
/// 				wu_tang_ssl.PolicyName,
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
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
/// import com.pulumi.aws.elb.LoadBalancerPolicy;
/// import com.pulumi.aws.elb.LoadBalancerPolicyArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerPolicyPolicyAttributeArgs;
/// import com.pulumi.aws.elb.ListenerPolicy;
/// import com.pulumi.aws.elb.ListenerPolicyArgs;
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
///         var wu_tang = new LoadBalancer("wu-tang", LoadBalancerArgs.builder()
///             .name("wu-tang")
///             .availabilityZones("us-east-1a")
///             .listeners(LoadBalancerListenerArgs.builder()
///                 .instancePort(443)
///                 .instanceProtocol("http")
///                 .lbPort(443)
///                 .lbProtocol("https")
///                 .sslCertificateId("arn:aws:iam::000000000000:server-certificate/wu-tang.net")
///                 .build())
///             .tags(Map.of("Name", "wu-tang"))
///             .build());
///
///         var wu_tang_ssl = new LoadBalancerPolicy("wu-tang-ssl", LoadBalancerPolicyArgs.builder()
///             .loadBalancerName(wu_tang.name())
///             .policyName("wu-tang-ssl")
///             .policyTypeName("SSLNegotiationPolicyType")
///             .policyAttributes(
///                 LoadBalancerPolicyPolicyAttributeArgs.builder()
///                     .name("ECDHE-ECDSA-AES128-GCM-SHA256")
///                     .value("true")
///                     .build(),
///                 LoadBalancerPolicyPolicyAttributeArgs.builder()
///                     .name("Protocol-TLSv1.2")
///                     .value("true")
///                     .build())
///             .build());
///
///         var wu_tang_listener_policies_443 = new ListenerPolicy("wu-tang-listener-policies-443", ListenerPolicyArgs.builder()
///             .loadBalancerName(wu_tang.name())
///             .loadBalancerPort(443)
///             .policyNames(wu_tang_ssl.policyName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   wu-tang:
///     type: aws:elb:LoadBalancer
///     properties:
///       name: wu-tang
///       availabilityZones:
///         - us-east-1a
///       listeners:
///         - instancePort: 443
///           instanceProtocol: http
///           lbPort: 443
///           lbProtocol: https
///           sslCertificateId: arn:aws:iam::000000000000:server-certificate/wu-tang.net
///       tags:
///         Name: wu-tang
///   wu-tang-ssl:
///     type: aws:elb:LoadBalancerPolicy
///     properties:
///       loadBalancerName: ${["wu-tang"].name}
///       policyName: wu-tang-ssl
///       policyTypeName: SSLNegotiationPolicyType
///       policyAttributes:
///         - name: ECDHE-ECDSA-AES128-GCM-SHA256
///           value: 'true'
///         - name: Protocol-TLSv1.2
///           value: 'true'
///   wu-tang-listener-policies-443:
///     type: aws:elb:ListenerPolicy
///     properties:
///       loadBalancerName: ${["wu-tang"].name}
///       loadBalancerPort: 443
///       policyNames:
///         - ${["wu-tang-ssl"].policyName}
/// ```
///
///
/// This example shows how to customize the TLS settings of an HTTPS listener.
///
/// ### AWS Predefined Security Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const wu_tang = new aws.elb.LoadBalancer("wu-tang", {
///     name: "wu-tang",
///     availabilityZones: ["us-east-1a"],
///     listeners: [{
///         instancePort: 443,
///         instanceProtocol: "http",
///         lbPort: 443,
///         lbProtocol: "https",
///         sslCertificateId: "arn:aws:iam::000000000000:server-certificate/wu-tang.net",
///     }],
///     tags: {
///         Name: "wu-tang",
///     },
/// });
/// const wu_tang_ssl_tls_1_1 = new aws.elb.LoadBalancerPolicy("wu-tang-ssl-tls-1-1", {
///     loadBalancerName: wu_tang.name,
///     policyName: "wu-tang-ssl",
///     policyTypeName: "SSLNegotiationPolicyType",
///     policyAttributes: [{
///         name: "Reference-Security-Policy",
///         value: "ELBSecurityPolicy-TLS-1-1-2017-01",
///     }],
/// });
/// const wu_tang_listener_policies_443 = new aws.elb.ListenerPolicy("wu-tang-listener-policies-443", {
///     loadBalancerName: wu_tang.name,
///     loadBalancerPort: 443,
///     policyNames: [wu_tang_ssl_tls_1_1.policyName],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// wu_tang = aws.elb.LoadBalancer("wu-tang",
///     name="wu-tang",
///     availability_zones=["us-east-1a"],
///     listeners=[{
///         "instance_port": 443,
///         "instance_protocol": "http",
///         "lb_port": 443,
///         "lb_protocol": "https",
///         "ssl_certificate_id": "arn:aws:iam::000000000000:server-certificate/wu-tang.net",
///     }],
///     tags={
///         "Name": "wu-tang",
///     })
/// wu_tang_ssl_tls_1_1 = aws.elb.LoadBalancerPolicy("wu-tang-ssl-tls-1-1",
///     load_balancer_name=wu_tang.name,
///     policy_name="wu-tang-ssl",
///     policy_type_name="SSLNegotiationPolicyType",
///     policy_attributes=[{
///         "name": "Reference-Security-Policy",
///         "value": "ELBSecurityPolicy-TLS-1-1-2017-01",
///     }])
/// wu_tang_listener_policies_443 = aws.elb.ListenerPolicy("wu-tang-listener-policies-443",
///     load_balancer_name=wu_tang.name,
///     load_balancer_port=443,
///     policy_names=[wu_tang_ssl_tls_1_1.policy_name])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var wu_tang = new Aws.Elb.LoadBalancer("wu-tang", new()
///     {
///         Name = "wu-tang",
///         AvailabilityZones = new[]
///         {
///             "us-east-1a",
///         },
///         Listeners = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerListenerArgs
///             {
///                 InstancePort = 443,
///                 InstanceProtocol = "http",
///                 LbPort = 443,
///                 LbProtocol = "https",
///                 SslCertificateId = "arn:aws:iam::000000000000:server-certificate/wu-tang.net",
///             },
///         },
///         Tags =
///         {
///             { "Name", "wu-tang" },
///         },
///     });
///
///     var wu_tang_ssl_tls_1_1 = new Aws.Elb.LoadBalancerPolicy("wu-tang-ssl-tls-1-1", new()
///     {
///         LoadBalancerName = wu_tang.Name,
///         PolicyName = "wu-tang-ssl",
///         PolicyTypeName = "SSLNegotiationPolicyType",
///         PolicyAttributes = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerPolicyPolicyAttributeArgs
///             {
///                 Name = "Reference-Security-Policy",
///                 Value = "ELBSecurityPolicy-TLS-1-1-2017-01",
///             },
///         },
///     });
///
///     var wu_tang_listener_policies_443 = new Aws.Elb.ListenerPolicy("wu-tang-listener-policies-443", new()
///     {
///         LoadBalancerName = wu_tang.Name,
///         LoadBalancerPort = 443,
///         PolicyNames = new[]
///         {
///             wu_tang_ssl_tls_1_1.PolicyName,
///         },
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
/// 		wu_tang, err := elb.NewLoadBalancer(ctx, "wu-tang", &elb.LoadBalancerArgs{
/// 			Name: pulumi.String("wu-tang"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-east-1a"),
/// 			},
/// 			Listeners: elb.LoadBalancerListenerArray{
/// 				&elb.LoadBalancerListenerArgs{
/// 					InstancePort:     pulumi.Int(443),
/// 					InstanceProtocol: pulumi.String("http"),
/// 					LbPort:           pulumi.Int(443),
/// 					LbProtocol:       pulumi.String("https"),
/// 					SslCertificateId: pulumi.String("arn:aws:iam::000000000000:server-certificate/wu-tang.net"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("wu-tang"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wu_tang_ssl_tls_1_1, err := elb.NewLoadBalancerPolicy(ctx, "wu-tang-ssl-tls-1-1", &elb.LoadBalancerPolicyArgs{
/// 			LoadBalancerName: wu_tang.Name,
/// 			PolicyName:       pulumi.String("wu-tang-ssl"),
/// 			PolicyTypeName:   pulumi.String("SSLNegotiationPolicyType"),
/// 			PolicyAttributes: elb.LoadBalancerPolicyPolicyAttributeArray{
/// 				&elb.LoadBalancerPolicyPolicyAttributeArgs{
/// 					Name:  pulumi.String("Reference-Security-Policy"),
/// 					Value: pulumi.String("ELBSecurityPolicy-TLS-1-1-2017-01"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elb.NewListenerPolicy(ctx, "wu-tang-listener-policies-443", &elb.ListenerPolicyArgs{
/// 			LoadBalancerName: wu_tang.Name,
/// 			LoadBalancerPort: pulumi.Int(443),
/// 			PolicyNames: pulumi.StringArray{
/// 				wu_tang_ssl_tls_1_1.PolicyName,
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
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
/// import com.pulumi.aws.elb.LoadBalancerPolicy;
/// import com.pulumi.aws.elb.LoadBalancerPolicyArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerPolicyPolicyAttributeArgs;
/// import com.pulumi.aws.elb.ListenerPolicy;
/// import com.pulumi.aws.elb.ListenerPolicyArgs;
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
///         var wu_tang = new LoadBalancer("wu-tang", LoadBalancerArgs.builder()
///             .name("wu-tang")
///             .availabilityZones("us-east-1a")
///             .listeners(LoadBalancerListenerArgs.builder()
///                 .instancePort(443)
///                 .instanceProtocol("http")
///                 .lbPort(443)
///                 .lbProtocol("https")
///                 .sslCertificateId("arn:aws:iam::000000000000:server-certificate/wu-tang.net")
///                 .build())
///             .tags(Map.of("Name", "wu-tang"))
///             .build());
///
///         var wu_tang_ssl_tls_1_1 = new LoadBalancerPolicy("wu-tang-ssl-tls-1-1", LoadBalancerPolicyArgs.builder()
///             .loadBalancerName(wu_tang.name())
///             .policyName("wu-tang-ssl")
///             .policyTypeName("SSLNegotiationPolicyType")
///             .policyAttributes(LoadBalancerPolicyPolicyAttributeArgs.builder()
///                 .name("Reference-Security-Policy")
///                 .value("ELBSecurityPolicy-TLS-1-1-2017-01")
///                 .build())
///             .build());
///
///         var wu_tang_listener_policies_443 = new ListenerPolicy("wu-tang-listener-policies-443", ListenerPolicyArgs.builder()
///             .loadBalancerName(wu_tang.name())
///             .loadBalancerPort(443)
///             .policyNames(wu_tang_ssl_tls_1_1.policyName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   wu-tang:
///     type: aws:elb:LoadBalancer
///     properties:
///       name: wu-tang
///       availabilityZones:
///         - us-east-1a
///       listeners:
///         - instancePort: 443
///           instanceProtocol: http
///           lbPort: 443
///           lbProtocol: https
///           sslCertificateId: arn:aws:iam::000000000000:server-certificate/wu-tang.net
///       tags:
///         Name: wu-tang
///   wu-tang-ssl-tls-1-1:
///     type: aws:elb:LoadBalancerPolicy
///     properties:
///       loadBalancerName: ${["wu-tang"].name}
///       policyName: wu-tang-ssl
///       policyTypeName: SSLNegotiationPolicyType
///       policyAttributes:
///         - name: Reference-Security-Policy
///           value: ELBSecurityPolicy-TLS-1-1-2017-01
///   wu-tang-listener-policies-443:
///     type: aws:elb:ListenerPolicy
///     properties:
///       loadBalancerName: ${["wu-tang"].name}
///       loadBalancerPort: 443
///       policyNames:
///         - ${["wu-tang-ssl-tls-1-1"].policyName}
/// ```
///
///
/// This example shows how to add a [Predefined Security Policy for ELBs](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-policy-table.html)
class ListenerPolicy extends pulumi.CustomResource {
  /// The load balancer to attach the policy to.
  late final pulumi.Output<String> loadBalancerName;
  /// The load balancer listener port to apply the policy to.
  late final pulumi.Output<int> loadBalancerPort;
  /// List of Policy Names to apply to the backend server.
  late final pulumi.Output<List<String>?> policyNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of arbitrary keys and values that, when changed, will trigger an update.
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [ListenerPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListenerPolicy]. {@macro pulumi_elb_listener_policy_listener_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListenerPolicy(
    String name, {
    ListenerPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/listenerPolicy:ListenerPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.loadBalancerName = registerOutput<String>('loadBalancerName');
    this.loadBalancerPort = registerOutput<int>('loadBalancerPort');
    this.policyNames = registerOutput<List<String>?>('policyNames');
    this.region = registerOutput<String>('region');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
