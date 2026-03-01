import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';

/// Provides a DigitalOcean Certificate resource that allows you to manage
/// certificates for configuring TLS termination in Load Balancers.
/// Certificates created with this resource can be referenced in your
/// Load Balancer configuration via their ID. The certificate can either
/// be a custom one provided by you or automatically generated one with
/// Let's Encrypt.
///
/// ## Example Usage
///
/// ### Custom Certificate
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
/// import * as std from "@pulumi/std";
///
/// const cert = new digitalocean.Certificate("cert", {
///     name: "custom-terraform-example",
///     type: digitalocean.CertificateType.Custom,
///     privateKey: std.file({
///         input: "/Users/terraform/certs/privkey.pem",
///     }).then(invoke => invoke.result),
///     leafCertificate: std.file({
///         input: "/Users/terraform/certs/cert.pem",
///     }).then(invoke => invoke.result),
///     certificateChain: std.file({
///         input: "/Users/terraform/certs/fullchain.pem",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
/// import pulumi_std as std
///
/// cert = digitalocean.Certificate("cert",
///     name="custom-terraform-example",
///     type=digitalocean.CertificateType.CUSTOM,
///     private_key=std.file(input="/Users/terraform/certs/privkey.pem").result,
///     leaf_certificate=std.file(input="/Users/terraform/certs/cert.pem").result,
///     certificate_chain=std.file(input="/Users/terraform/certs/fullchain.pem").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cert = new DigitalOcean.Certificate("cert", new()
///     {
///         Name = "custom-terraform-example",
///         Type = DigitalOcean.CertificateType.Custom,
///         PrivateKey = Std.File.Invoke(new()
///         {
///             Input = "/Users/terraform/certs/privkey.pem",
///         }).Apply(invoke => invoke.Result),
///         LeafCertificate = Std.File.Invoke(new()
///         {
///             Input = "/Users/terraform/certs/cert.pem",
///         }).Apply(invoke => invoke.Result),
///         CertificateChain = Std.File.Invoke(new()
///         {
///             Input = "/Users/terraform/certs/fullchain.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "/Users/terraform/certs/privkey.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "/Users/terraform/certs/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile2, err := std.File(ctx, &std.FileArgs{
/// 			Input: "/Users/terraform/certs/fullchain.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewCertificate(ctx, "cert", &digitalocean.CertificateArgs{
/// 			Name:             pulumi.String("custom-terraform-example"),
/// 			Type:             pulumi.String(digitalocean.CertificateTypeCustom),
/// 			PrivateKey:       pulumi.String(invokeFile.Result),
/// 			LeafCertificate:  pulumi.String(invokeFile1.Result),
/// 			CertificateChain: pulumi.String(invokeFile2.Result),
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
/// import com.pulumi.digitalocean.Certificate;
/// import com.pulumi.digitalocean.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var cert = new Certificate("cert", CertificateArgs.builder()
///             .name("custom-terraform-example")
///             .type("custom")
///             .privateKey(StdFunctions.file(FileArgs.builder()
///                 .input("/Users/terraform/certs/privkey.pem")
///                 .build()).result())
///             .leafCertificate(StdFunctions.file(FileArgs.builder()
///                 .input("/Users/terraform/certs/cert.pem")
///                 .build()).result())
///             .certificateChain(StdFunctions.file(FileArgs.builder()
///                 .input("/Users/terraform/certs/fullchain.pem")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cert:
///     type: digitalocean:Certificate
///     properties:
///       name: custom-terraform-example
///       type: custom
///       privateKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /Users/terraform/certs/privkey.pem
///           return: result
///       leafCertificate:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /Users/terraform/certs/cert.pem
///           return: result
///       certificateChain:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: /Users/terraform/certs/fullchain.pem
///           return: result
/// ```
///
///
/// ### Let's Encrypt Certificate
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const cert = new digitalocean.Certificate("cert", {
///     name: "le-terraform-example",
///     type: digitalocean.CertificateType.LetsEncrypt,
///     domains: ["example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// cert = digitalocean.Certificate("cert",
///     name="le-terraform-example",
///     type=digitalocean.CertificateType.LETS_ENCRYPT,
///     domains=["example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cert = new DigitalOcean.Certificate("cert", new()
///     {
///         Name = "le-terraform-example",
///         Type = DigitalOcean.CertificateType.LetsEncrypt,
///         Domains = new[]
///         {
///             "example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewCertificate(ctx, "cert", &digitalocean.CertificateArgs{
/// 			Name: pulumi.String("le-terraform-example"),
/// 			Type: pulumi.String(digitalocean.CertificateTypeLetsEncrypt),
/// 			Domains: pulumi.StringArray{
/// 				pulumi.String("example.com"),
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
/// import com.pulumi.digitalocean.Certificate;
/// import com.pulumi.digitalocean.CertificateArgs;
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
///         var cert = new Certificate("cert", CertificateArgs.builder()
///             .name("le-terraform-example")
///             .type("lets_encrypt")
///             .domains("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cert:
///     type: digitalocean:Certificate
///     properties:
///       name: le-terraform-example
///       type: lets_encrypt
///       domains:
///         - example.com
/// ```
///
///
/// ### Use with Other Resources
///
/// Both custom and Let's Encrypt certificates can be used with other resources
/// including the `digitalocean.LoadBalancer` and `digitalocean.Cdn` resources.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const cert = new digitalocean.Certificate("cert", {
///     name: "le-terraform-example",
///     type: digitalocean.CertificateType.LetsEncrypt,
///     domains: ["example.com"],
/// });
/// // Create a new Load Balancer with TLS termination
/// const _public = new digitalocean.LoadBalancer("public", {
///     name: "secure-loadbalancer-1",
///     region: digitalocean.Region.NYC3,
///     dropletTag: "backend",
///     forwardingRules: [{
///         entryPort: 443,
///         entryProtocol: "https",
///         targetPort: 80,
///         targetProtocol: "http",
///         certificateName: cert.name,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// cert = digitalocean.Certificate("cert",
///     name="le-terraform-example",
///     type=digitalocean.CertificateType.LETS_ENCRYPT,
///     domains=["example.com"])
/// # Create a new Load Balancer with TLS termination
/// public = digitalocean.LoadBalancer("public",
///     name="secure-loadbalancer-1",
///     region=digitalocean.Region.NYC3,
///     droplet_tag="backend",
///     forwarding_rules=[{
///         "entry_port": 443,
///         "entry_protocol": "https",
///         "target_port": 80,
///         "target_protocol": "http",
///         "certificate_name": cert.name,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cert = new DigitalOcean.Certificate("cert", new()
///     {
///         Name = "le-terraform-example",
///         Type = DigitalOcean.CertificateType.LetsEncrypt,
///         Domains = new[]
///         {
///             "example.com",
///         },
///     });
///
///     // Create a new Load Balancer with TLS termination
///     var @public = new DigitalOcean.LoadBalancer("public", new()
///     {
///         Name = "secure-loadbalancer-1",
///         Region = DigitalOcean.Region.NYC3,
///         DropletTag = "backend",
///         ForwardingRules = new[]
///         {
///             new DigitalOcean.Inputs.LoadBalancerForwardingRuleArgs
///             {
///                 EntryPort = 443,
///                 EntryProtocol = "https",
///                 TargetPort = 80,
///                 TargetProtocol = "http",
///                 CertificateName = cert.Name,
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
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cert, err := digitalocean.NewCertificate(ctx, "cert", &digitalocean.CertificateArgs{
/// 			Name: pulumi.String("le-terraform-example"),
/// 			Type: pulumi.String(digitalocean.CertificateTypeLetsEncrypt),
/// 			Domains: pulumi.StringArray{
/// 				pulumi.String("example.com"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a new Load Balancer with TLS termination
/// 		_, err = digitalocean.NewLoadBalancer(ctx, "public", &digitalocean.LoadBalancerArgs{
/// 			Name:       pulumi.String("secure-loadbalancer-1"),
/// 			Region:     pulumi.String(digitalocean.RegionNYC3),
/// 			DropletTag: pulumi.String("backend"),
/// 			ForwardingRules: digitalocean.LoadBalancerForwardingRuleArray{
/// 				&digitalocean.LoadBalancerForwardingRuleArgs{
/// 					EntryPort:       pulumi.Int(443),
/// 					EntryProtocol:   pulumi.String("https"),
/// 					TargetPort:      pulumi.Int(80),
/// 					TargetProtocol:  pulumi.String("http"),
/// 					CertificateName: cert.Name,
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
/// import com.pulumi.digitalocean.Certificate;
/// import com.pulumi.digitalocean.CertificateArgs;
/// import com.pulumi.digitalocean.LoadBalancer;
/// import com.pulumi.digitalocean.LoadBalancerArgs;
/// import com.pulumi.digitalocean.inputs.LoadBalancerForwardingRuleArgs;
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
///         var cert = new Certificate("cert", CertificateArgs.builder()
///             .name("le-terraform-example")
///             .type("lets_encrypt")
///             .domains("example.com")
///             .build());
///
///         // Create a new Load Balancer with TLS termination
///         var public_ = new LoadBalancer("public", LoadBalancerArgs.builder()
///             .name("secure-loadbalancer-1")
///             .region("nyc3")
///             .dropletTag("backend")
///             .forwardingRules(LoadBalancerForwardingRuleArgs.builder()
///                 .entryPort(443)
///                 .entryProtocol("https")
///                 .targetPort(80)
///                 .targetProtocol("http")
///                 .certificateName(cert.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cert:
///     type: digitalocean:Certificate
///     properties:
///       name: le-terraform-example
///       type: lets_encrypt
///       domains:
///         - example.com
///   # Create a new Load Balancer with TLS termination
///   public:
///     type: digitalocean:LoadBalancer
///     properties:
///       name: secure-loadbalancer-1
///       region: nyc3
///       dropletTag: backend
///       forwardingRules:
///         - entryPort: 443
///           entryProtocol: https
///           targetPort: 80
///           targetProtocol: http
///           certificateName: ${cert.name}
/// ```
///
///
/// ## Import
///
/// Certificates can be imported using the certificate `name`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/certificate:Certificate mycertificate cert-01
/// ```
class Certificate extends pulumi.CustomResource {
  /// The full PEM-formatted trust chain
  /// between the certificate authority's certificate and your domain's TLS
  /// certificate. Only valid when type is `custom`.
  late final pulumi.Output<String?> certificateChain;
  /// List of fully qualified domain names (FQDNs) for
  /// which the certificate will be issued. The domains must be managed using
  /// DigitalOcean's DNS. Only valid when type is `lets_encrypt`.
  late final pulumi.Output<List<String>?> domains;
  /// The contents of a PEM-formatted public
  /// TLS certificate. Only valid when type is `custom`.
  late final pulumi.Output<String?> leafCertificate;
  /// The name of the certificate for identification.
  late final pulumi.Output<String> name;
  /// The expiration date of the certificate
  late final pulumi.Output<String> notAfter;
  /// The contents of a PEM-formatted private-key
  /// corresponding to the SSL certificate. Only valid when type is `custom`.
  late final pulumi.Output<String?> privateKey;
  /// The SHA-1 fingerprint of the certificate
  late final pulumi.Output<String> sha1Fingerprint;
  late final pulumi.Output<String> state;
  /// The type of certificate to provision. Can be either
  /// `custom` or `lets_encrypt`. Defaults to `custom`.
  late final pulumi.Output<String?> type;
  /// The UUID of the certificate
  late final pulumi.Output<String> uuid;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_index_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateChain = registerOutput<String?>('certificateChain');
    this.domains = registerOutput<List<String>?>('domains');
    this.leafCertificate = registerOutput<String?>('leafCertificate');
    this.name = registerOutput<String>('name');
    this.notAfter = registerOutput<String>('notAfter');
    this.privateKey = registerOutput<String?>('privateKey');
    this.sha1Fingerprint = registerOutput<String>('sha1Fingerprint');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String?>('type');
    this.uuid = registerOutput<String>('uuid');
  }
}
