import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';

/// Gateway represents the configuration for a proxy, typically a load balancer.
/// It captures the ip:port over which the services are exposed by the proxy,
/// along with any policy configurations. Routes have reference to to Gateways
/// to dictate how requests should be routed by this Gateway.
///
///
/// To get more information about Gateway, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1/projects.locations.gateways)
///
/// ## Example Usage
///
/// ### Network Services Gateway Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.Gateway("default", {
///     name: "my-gateway",
///     scope: "default-scope-basic",
///     type: "OPEN_MESH",
///     ports: [443],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.Gateway("default",
///     name="my-gateway",
///     scope="default-scope-basic",
///     type="OPEN_MESH",
///     ports=[443])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.Gateway("default", new()
///     {
///         Name = "my-gateway",
///         Scope = "default-scope-basic",
///         Type = "OPEN_MESH",
///         Ports = new[]
///         {
///             443,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewGateway(ctx, "default", &networkservices.GatewayArgs{
/// 			Name:  pulumi.String("my-gateway"),
/// 			Scope: pulumi.String("default-scope-basic"),
/// 			Type:  pulumi.String("OPEN_MESH"),
/// 			Ports: pulumi.IntArray{
/// 				pulumi.Int(443),
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
/// import com.pulumi.gcp.networkservices.Gateway;
/// import com.pulumi.gcp.networkservices.GatewayArgs;
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
///         var default_ = new Gateway("default", GatewayArgs.builder()
///             .name("my-gateway")
///             .scope("default-scope-basic")
///             .type("OPEN_MESH")
///             .ports(443)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:Gateway
///     properties:
///       name: my-gateway
///       scope: default-scope-basic
///       type: OPEN_MESH
///       ports:
///         - 443
/// ```
///
/// ### Network Services Gateway Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.Gateway("default", {
///     name: "my-gateway",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     type: "OPEN_MESH",
///     ports: [443],
///     scope: "default-scope-advance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.Gateway("default",
///     name="my-gateway",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     type="OPEN_MESH",
///     ports=[443],
///     scope="default-scope-advance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkServices.Gateway("default", new()
///     {
///         Name = "my-gateway",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Type = "OPEN_MESH",
///         Ports = new[]
///         {
///             443,
///         },
///         Scope = "default-scope-advance",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewGateway(ctx, "default", &networkservices.GatewayArgs{
/// 			Name: pulumi.String("my-gateway"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Type:        pulumi.String("OPEN_MESH"),
/// 			Ports: pulumi.IntArray{
/// 				pulumi.Int(443),
/// 			},
/// 			Scope: pulumi.String("default-scope-advance"),
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
/// import com.pulumi.gcp.networkservices.Gateway;
/// import com.pulumi.gcp.networkservices.GatewayArgs;
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
///         var default_ = new Gateway("default", GatewayArgs.builder()
///             .name("my-gateway")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .type("OPEN_MESH")
///             .ports(443)
///             .scope("default-scope-advance")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:Gateway
///     properties:
///       name: my-gateway
///       labels:
///         foo: bar
///       description: my description
///       type: OPEN_MESH
///       ports:
///         - 443
///       scope: default-scope-advance
/// ```
///
/// ### Network Services Gateway Secure Web Proxy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "my-certificate",
///     location: "us-central1",
///     selfManaged: {
///         pemCertificate: std.file({
///             input: "test-fixtures/cert.pem",
///         }).then(invoke => invoke.result),
///         pemPrivateKey: std.file({
///             input: "test-fixtures/private-key.pem",
///         }).then(invoke => invoke.result),
///     },
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "my-network",
///     routingMode: "REGIONAL",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "my-subnetwork-name",
///     purpose: "PRIVATE",
///     ipCidrRange: "10.128.0.0/20",
///     region: "us-central1",
///     network: defaultNetwork.id,
///     role: "ACTIVE",
/// });
/// const proxyonlysubnet = new gcp.compute.Subnetwork("proxyonlysubnet", {
///     name: "my-proxy-only-subnetwork",
///     purpose: "REGIONAL_MANAGED_PROXY",
///     ipCidrRange: "192.168.0.0/23",
///     region: "us-central1",
///     network: defaultNetwork.id,
///     role: "ACTIVE",
/// });
/// const defaultGatewaySecurityPolicy = new gcp.networksecurity.GatewaySecurityPolicy("default", {
///     name: "my-policy-name",
///     location: "us-central1",
/// });
/// const defaultGatewaySecurityPolicyRule = new gcp.networksecurity.GatewaySecurityPolicyRule("default", {
///     name: "my-policyrule-name",
///     location: "us-central1",
///     gatewaySecurityPolicy: defaultGatewaySecurityPolicy.name,
///     enabled: true,
///     priority: 1,
///     sessionMatcher: "host() == 'example.com'",
///     basicProfile: "ALLOW",
/// });
/// const defaultGateway = new gcp.networkservices.Gateway("default", {
///     name: "my-gateway1",
///     location: "us-central1",
///     addresses: ["10.128.0.99"],
///     type: "SECURE_WEB_GATEWAY",
///     ports: [443],
///     scope: "my-default-scope1",
///     certificateUrls: [_default.id],
///     gatewaySecurityPolicy: defaultGatewaySecurityPolicy.id,
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     deleteSwgAutogenRouterOnDestroy: true,
/// }, {
///     dependsOn: [proxyonlysubnet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificatemanager.Certificate("default",
///     name="my-certificate",
///     location="us-central1",
///     self_managed={
///         "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         "pem_private_key": std.file(input="test-fixtures/private-key.pem").result,
///     })
/// default_network = gcp.compute.Network("default",
///     name="my-network",
///     routing_mode="REGIONAL",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="my-subnetwork-name",
///     purpose="PRIVATE",
///     ip_cidr_range="10.128.0.0/20",
///     region="us-central1",
///     network=default_network.id,
///     role="ACTIVE")
/// proxyonlysubnet = gcp.compute.Subnetwork("proxyonlysubnet",
///     name="my-proxy-only-subnetwork",
///     purpose="REGIONAL_MANAGED_PROXY",
///     ip_cidr_range="192.168.0.0/23",
///     region="us-central1",
///     network=default_network.id,
///     role="ACTIVE")
/// default_gateway_security_policy = gcp.networksecurity.GatewaySecurityPolicy("default",
///     name="my-policy-name",
///     location="us-central1")
/// default_gateway_security_policy_rule = gcp.networksecurity.GatewaySecurityPolicyRule("default",
///     name="my-policyrule-name",
///     location="us-central1",
///     gateway_security_policy=default_gateway_security_policy.name,
///     enabled=True,
///     priority=1,
///     session_matcher="host() == 'example.com'",
///     basic_profile="ALLOW")
/// default_gateway = gcp.networkservices.Gateway("default",
///     name="my-gateway1",
///     location="us-central1",
///     addresses=["10.128.0.99"],
///     type="SECURE_WEB_GATEWAY",
///     ports=[443],
///     scope="my-default-scope1",
///     certificate_urls=[default.id],
///     gateway_security_policy=default_gateway_security_policy.id,
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     delete_swg_autogen_router_on_destroy=True,
///     opts = pulumi.ResourceOptions(depends_on=[proxyonlysubnet]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "my-certificate",
///         Location = "us-central1",
///         SelfManaged = new Gcp.CertificateManager.Inputs.CertificateSelfManagedArgs
///         {
///             PemCertificate = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/cert.pem",
///             }).Apply(invoke => invoke.Result),
///             PemPrivateKey = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/private-key.pem",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         RoutingMode = "REGIONAL",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "my-subnetwork-name",
///         Purpose = "PRIVATE",
///         IpCidrRange = "10.128.0.0/20",
///         Region = "us-central1",
///         Network = defaultNetwork.Id,
///         Role = "ACTIVE",
///     });
///
///     var proxyonlysubnet = new Gcp.Compute.Subnetwork("proxyonlysubnet", new()
///     {
///         Name = "my-proxy-only-subnetwork",
///         Purpose = "REGIONAL_MANAGED_PROXY",
///         IpCidrRange = "192.168.0.0/23",
///         Region = "us-central1",
///         Network = defaultNetwork.Id,
///         Role = "ACTIVE",
///     });
///
///     var defaultGatewaySecurityPolicy = new Gcp.NetworkSecurity.GatewaySecurityPolicy("default", new()
///     {
///         Name = "my-policy-name",
///         Location = "us-central1",
///     });
///
///     var defaultGatewaySecurityPolicyRule = new Gcp.NetworkSecurity.GatewaySecurityPolicyRule("default", new()
///     {
///         Name = "my-policyrule-name",
///         Location = "us-central1",
///         GatewaySecurityPolicy = defaultGatewaySecurityPolicy.Name,
///         Enabled = true,
///         Priority = 1,
///         SessionMatcher = "host() == 'example.com'",
///         BasicProfile = "ALLOW",
///     });
///
///     var defaultGateway = new Gcp.NetworkServices.Gateway("default", new()
///     {
///         Name = "my-gateway1",
///         Location = "us-central1",
///         Addresses = new[]
///         {
///             "10.128.0.99",
///         },
///         Type = "SECURE_WEB_GATEWAY",
///         Ports = new[]
///         {
///             443,
///         },
///         Scope = "my-default-scope1",
///         CertificateUrls = new[]
///         {
///             @default.Id,
///         },
///         GatewaySecurityPolicy = defaultGatewaySecurityPolicy.Id,
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         DeleteSwgAutogenRouterOnDestroy = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             proxyonlysubnet,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:     pulumi.String("my-certificate"),
/// 			Location: pulumi.String("us-central1"),
/// 			SelfManaged: &certificatemanager.CertificateSelfManagedArgs{
/// 				PemCertificate: pulumi.String(invokeFile.Result),
/// 				PemPrivateKey:  pulumi.String(invokeFile1.Result),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			RoutingMode:           pulumi.String("REGIONAL"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork-name"),
/// 			Purpose:     pulumi.String("PRIVATE"),
/// 			IpCidrRange: pulumi.String("10.128.0.0/20"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.ID(),
/// 			Role:        pulumi.String("ACTIVE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		proxyonlysubnet, err := compute.NewSubnetwork(ctx, "proxyonlysubnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-proxy-only-subnetwork"),
/// 			Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// 			IpCidrRange: pulumi.String("192.168.0.0/23"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     defaultNetwork.ID(),
/// 			Role:        pulumi.String("ACTIVE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGatewaySecurityPolicy, err := networksecurity.NewGatewaySecurityPolicy(ctx, "default", &networksecurity.GatewaySecurityPolicyArgs{
/// 			Name:     pulumi.String("my-policy-name"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewGatewaySecurityPolicyRule(ctx, "default", &networksecurity.GatewaySecurityPolicyRuleArgs{
/// 			Name:                  pulumi.String("my-policyrule-name"),
/// 			Location:              pulumi.String("us-central1"),
/// 			GatewaySecurityPolicy: defaultGatewaySecurityPolicy.Name,
/// 			Enabled:               pulumi.Bool(true),
/// 			Priority:              pulumi.Int(1),
/// 			SessionMatcher:        pulumi.String("host() == 'example.com'"),
/// 			BasicProfile:          pulumi.String("ALLOW"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewGateway(ctx, "default", &networkservices.GatewayArgs{
/// 			Name:     pulumi.String("my-gateway1"),
/// 			Location: pulumi.String("us-central1"),
/// 			Addresses: pulumi.StringArray{
/// 				pulumi.String("10.128.0.99"),
/// 			},
/// 			Type: pulumi.String("SECURE_WEB_GATEWAY"),
/// 			Ports: pulumi.IntArray{
/// 				pulumi.Int(443),
/// 			},
/// 			Scope: pulumi.String("my-default-scope1"),
/// 			CertificateUrls: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 			GatewaySecurityPolicy:           defaultGatewaySecurityPolicy.ID(),
/// 			Network:                         defaultNetwork.ID(),
/// 			Subnetwork:                      defaultSubnetwork.ID(),
/// 			DeleteSwgAutogenRouterOnDestroy: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			proxyonlysubnet,
/// 		}))
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
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateSelfManagedArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicy;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyArgs;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRule;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRuleArgs;
/// import com.pulumi.gcp.networkservices.Gateway;
/// import com.pulumi.gcp.networkservices.GatewayArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("my-certificate")
///             .location("us-central1")
///             .selfManaged(CertificateSelfManagedArgs.builder()
///                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/cert.pem")
///                     .build()).result())
///                 .pemPrivateKey(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/private-key.pem")
///                     .build()).result())
///                 .build())
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .routingMode("REGIONAL")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("my-subnetwork-name")
///             .purpose("PRIVATE")
///             .ipCidrRange("10.128.0.0/20")
///             .region("us-central1")
///             .network(defaultNetwork.id())
///             .role("ACTIVE")
///             .build());
///
///         var proxyonlysubnet = new Subnetwork("proxyonlysubnet", SubnetworkArgs.builder()
///             .name("my-proxy-only-subnetwork")
///             .purpose("REGIONAL_MANAGED_PROXY")
///             .ipCidrRange("192.168.0.0/23")
///             .region("us-central1")
///             .network(defaultNetwork.id())
///             .role("ACTIVE")
///             .build());
///
///         var defaultGatewaySecurityPolicy = new GatewaySecurityPolicy("defaultGatewaySecurityPolicy", GatewaySecurityPolicyArgs.builder()
///             .name("my-policy-name")
///             .location("us-central1")
///             .build());
///
///         var defaultGatewaySecurityPolicyRule = new GatewaySecurityPolicyRule("defaultGatewaySecurityPolicyRule", GatewaySecurityPolicyRuleArgs.builder()
///             .name("my-policyrule-name")
///             .location("us-central1")
///             .gatewaySecurityPolicy(defaultGatewaySecurityPolicy.name())
///             .enabled(true)
///             .priority(1)
///             .sessionMatcher("host() == 'example.com'")
///             .basicProfile("ALLOW")
///             .build());
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .name("my-gateway1")
///             .location("us-central1")
///             .addresses("10.128.0.99")
///             .type("SECURE_WEB_GATEWAY")
///             .ports(443)
///             .scope("my-default-scope1")
///             .certificateUrls(default_.id())
///             .gatewaySecurityPolicy(defaultGatewaySecurityPolicy.id())
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .deleteSwgAutogenRouterOnDestroy(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(proxyonlysubnet)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: my-certificate
///       location: us-central1
///       selfManaged:
///         pemCertificate:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/cert.pem
///             return: result
///         pemPrivateKey:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/private-key.pem
///             return: result
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: my-network
///       routingMode: REGIONAL
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: my-subnetwork-name
///       purpose: PRIVATE
///       ipCidrRange: 10.128.0.0/20
///       region: us-central1
///       network: ${defaultNetwork.id}
///       role: ACTIVE
///   proxyonlysubnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-proxy-only-subnetwork
///       purpose: REGIONAL_MANAGED_PROXY
///       ipCidrRange: 192.168.0.0/23
///       region: us-central1
///       network: ${defaultNetwork.id}
///       role: ACTIVE
///   defaultGatewaySecurityPolicy:
///     type: gcp:networksecurity:GatewaySecurityPolicy
///     name: default
///     properties:
///       name: my-policy-name
///       location: us-central1
///   defaultGatewaySecurityPolicyRule:
///     type: gcp:networksecurity:GatewaySecurityPolicyRule
///     name: default
///     properties:
///       name: my-policyrule-name
///       location: us-central1
///       gatewaySecurityPolicy: ${defaultGatewaySecurityPolicy.name}
///       enabled: true
///       priority: 1
///       sessionMatcher: host() == 'example.com'
///       basicProfile: ALLOW
///   defaultGateway:
///     type: gcp:networkservices:Gateway
///     name: default
///     properties:
///       name: my-gateway1
///       location: us-central1
///       addresses:
///         - 10.128.0.99
///       type: SECURE_WEB_GATEWAY
///       ports:
///         - 443
///       scope: my-default-scope1
///       certificateUrls:
///         - ${default.id}
///       gatewaySecurityPolicy: ${defaultGatewaySecurityPolicy.id}
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       deleteSwgAutogenRouterOnDestroy: true
///     options:
///       dependsOn:
///         - ${proxyonlysubnet}
/// ```
///
/// ### Network Services Gateway Multiple Swp Same Network
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const _default = new gcp.certificatemanager.Certificate("default", {
///     name: "my-certificate",
///     location: "us-south1",
///     selfManaged: {
///         pemCertificate: std.file({
///             input: "test-fixtures/cert.pem",
///         }).then(invoke => invoke.result),
///         pemPrivateKey: std.file({
///             input: "test-fixtures/private-key.pem",
///         }).then(invoke => invoke.result),
///     },
/// });
/// const defaultNetwork = new gcp.compute.Network("default", {
///     name: "my-network",
///     routingMode: "REGIONAL",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "my-subnetwork-name",
///     purpose: "PRIVATE",
///     ipCidrRange: "10.128.0.0/20",
///     region: "us-south1",
///     network: defaultNetwork.id,
///     role: "ACTIVE",
/// });
/// const proxyonlysubnet = new gcp.compute.Subnetwork("proxyonlysubnet", {
///     name: "my-proxy-only-subnetwork",
///     purpose: "REGIONAL_MANAGED_PROXY",
///     ipCidrRange: "192.168.0.0/23",
///     region: "us-south1",
///     network: defaultNetwork.id,
///     role: "ACTIVE",
/// });
/// const defaultGatewaySecurityPolicy = new gcp.networksecurity.GatewaySecurityPolicy("default", {
///     name: "my-policy-name",
///     location: "us-south1",
/// });
/// const defaultGatewaySecurityPolicyRule = new gcp.networksecurity.GatewaySecurityPolicyRule("default", {
///     name: "my-policyrule-name",
///     location: "us-south1",
///     gatewaySecurityPolicy: defaultGatewaySecurityPolicy.name,
///     enabled: true,
///     priority: 1,
///     sessionMatcher: "host() == 'example.com'",
///     basicProfile: "ALLOW",
/// });
/// const defaultGateway = new gcp.networkservices.Gateway("default", {
///     name: "my-gateway1",
///     location: "us-south1",
///     addresses: ["10.128.0.99"],
///     type: "SECURE_WEB_GATEWAY",
///     ports: [443],
///     scope: "my-default-scope1",
///     certificateUrls: [_default.id],
///     gatewaySecurityPolicy: defaultGatewaySecurityPolicy.id,
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     deleteSwgAutogenRouterOnDestroy: true,
/// }, {
///     dependsOn: [proxyonlysubnet],
/// });
/// const gateway2 = new gcp.networkservices.Gateway("gateway2", {
///     name: "my-gateway2",
///     location: "us-south1",
///     addresses: ["10.128.0.98"],
///     type: "SECURE_WEB_GATEWAY",
///     ports: [443],
///     scope: "my-default-scope2",
///     certificateUrls: [_default.id],
///     gatewaySecurityPolicy: defaultGatewaySecurityPolicy.id,
///     network: defaultNetwork.id,
///     subnetwork: defaultSubnetwork.id,
///     deleteSwgAutogenRouterOnDestroy: true,
/// }, {
///     dependsOn: [proxyonlysubnet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// default = gcp.certificatemanager.Certificate("default",
///     name="my-certificate",
///     location="us-south1",
///     self_managed={
///         "pem_certificate": std.file(input="test-fixtures/cert.pem").result,
///         "pem_private_key": std.file(input="test-fixtures/private-key.pem").result,
///     })
/// default_network = gcp.compute.Network("default",
///     name="my-network",
///     routing_mode="REGIONAL",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="my-subnetwork-name",
///     purpose="PRIVATE",
///     ip_cidr_range="10.128.0.0/20",
///     region="us-south1",
///     network=default_network.id,
///     role="ACTIVE")
/// proxyonlysubnet = gcp.compute.Subnetwork("proxyonlysubnet",
///     name="my-proxy-only-subnetwork",
///     purpose="REGIONAL_MANAGED_PROXY",
///     ip_cidr_range="192.168.0.0/23",
///     region="us-south1",
///     network=default_network.id,
///     role="ACTIVE")
/// default_gateway_security_policy = gcp.networksecurity.GatewaySecurityPolicy("default",
///     name="my-policy-name",
///     location="us-south1")
/// default_gateway_security_policy_rule = gcp.networksecurity.GatewaySecurityPolicyRule("default",
///     name="my-policyrule-name",
///     location="us-south1",
///     gateway_security_policy=default_gateway_security_policy.name,
///     enabled=True,
///     priority=1,
///     session_matcher="host() == 'example.com'",
///     basic_profile="ALLOW")
/// default_gateway = gcp.networkservices.Gateway("default",
///     name="my-gateway1",
///     location="us-south1",
///     addresses=["10.128.0.99"],
///     type="SECURE_WEB_GATEWAY",
///     ports=[443],
///     scope="my-default-scope1",
///     certificate_urls=[default.id],
///     gateway_security_policy=default_gateway_security_policy.id,
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     delete_swg_autogen_router_on_destroy=True,
///     opts = pulumi.ResourceOptions(depends_on=[proxyonlysubnet]))
/// gateway2 = gcp.networkservices.Gateway("gateway2",
///     name="my-gateway2",
///     location="us-south1",
///     addresses=["10.128.0.98"],
///     type="SECURE_WEB_GATEWAY",
///     ports=[443],
///     scope="my-default-scope2",
///     certificate_urls=[default.id],
///     gateway_security_policy=default_gateway_security_policy.id,
///     network=default_network.id,
///     subnetwork=default_subnetwork.id,
///     delete_swg_autogen_router_on_destroy=True,
///     opts = pulumi.ResourceOptions(depends_on=[proxyonlysubnet]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CertificateManager.Certificate("default", new()
///     {
///         Name = "my-certificate",
///         Location = "us-south1",
///         SelfManaged = new Gcp.CertificateManager.Inputs.CertificateSelfManagedArgs
///         {
///             PemCertificate = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/cert.pem",
///             }).Apply(invoke => invoke.Result),
///             PemPrivateKey = Std.File.Invoke(new()
///             {
///                 Input = "test-fixtures/private-key.pem",
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "my-network",
///         RoutingMode = "REGIONAL",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "my-subnetwork-name",
///         Purpose = "PRIVATE",
///         IpCidrRange = "10.128.0.0/20",
///         Region = "us-south1",
///         Network = defaultNetwork.Id,
///         Role = "ACTIVE",
///     });
///
///     var proxyonlysubnet = new Gcp.Compute.Subnetwork("proxyonlysubnet", new()
///     {
///         Name = "my-proxy-only-subnetwork",
///         Purpose = "REGIONAL_MANAGED_PROXY",
///         IpCidrRange = "192.168.0.0/23",
///         Region = "us-south1",
///         Network = defaultNetwork.Id,
///         Role = "ACTIVE",
///     });
///
///     var defaultGatewaySecurityPolicy = new Gcp.NetworkSecurity.GatewaySecurityPolicy("default", new()
///     {
///         Name = "my-policy-name",
///         Location = "us-south1",
///     });
///
///     var defaultGatewaySecurityPolicyRule = new Gcp.NetworkSecurity.GatewaySecurityPolicyRule("default", new()
///     {
///         Name = "my-policyrule-name",
///         Location = "us-south1",
///         GatewaySecurityPolicy = defaultGatewaySecurityPolicy.Name,
///         Enabled = true,
///         Priority = 1,
///         SessionMatcher = "host() == 'example.com'",
///         BasicProfile = "ALLOW",
///     });
///
///     var defaultGateway = new Gcp.NetworkServices.Gateway("default", new()
///     {
///         Name = "my-gateway1",
///         Location = "us-south1",
///         Addresses = new[]
///         {
///             "10.128.0.99",
///         },
///         Type = "SECURE_WEB_GATEWAY",
///         Ports = new[]
///         {
///             443,
///         },
///         Scope = "my-default-scope1",
///         CertificateUrls = new[]
///         {
///             @default.Id,
///         },
///         GatewaySecurityPolicy = defaultGatewaySecurityPolicy.Id,
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         DeleteSwgAutogenRouterOnDestroy = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             proxyonlysubnet,
///         },
///     });
///
///     var gateway2 = new Gcp.NetworkServices.Gateway("gateway2", new()
///     {
///         Name = "my-gateway2",
///         Location = "us-south1",
///         Addresses = new[]
///         {
///             "10.128.0.98",
///         },
///         Type = "SECURE_WEB_GATEWAY",
///         Ports = new[]
///         {
///             443,
///         },
///         Scope = "my-default-scope2",
///         CertificateUrls = new[]
///         {
///             @default.Id,
///         },
///         GatewaySecurityPolicy = defaultGatewaySecurityPolicy.Id,
///         Network = defaultNetwork.Id,
///         Subnetwork = defaultSubnetwork.Id,
///         DeleteSwgAutogenRouterOnDestroy = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             proxyonlysubnet,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/private-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := certificatemanager.NewCertificate(ctx, "default", &certificatemanager.CertificateArgs{
/// 			Name:     pulumi.String("my-certificate"),
/// 			Location: pulumi.String("us-south1"),
/// 			SelfManaged: &certificatemanager.CertificateSelfManagedArgs{
/// 				PemCertificate: pulumi.String(invokeFile.Result),
/// 				PemPrivateKey:  pulumi.String(invokeFile1.Result),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			RoutingMode:           pulumi.String("REGIONAL"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-subnetwork-name"),
/// 			Purpose:     pulumi.String("PRIVATE"),
/// 			IpCidrRange: pulumi.String("10.128.0.0/20"),
/// 			Region:      pulumi.String("us-south1"),
/// 			Network:     defaultNetwork.ID(),
/// 			Role:        pulumi.String("ACTIVE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		proxyonlysubnet, err := compute.NewSubnetwork(ctx, "proxyonlysubnet", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-proxy-only-subnetwork"),
/// 			Purpose:     pulumi.String("REGIONAL_MANAGED_PROXY"),
/// 			IpCidrRange: pulumi.String("192.168.0.0/23"),
/// 			Region:      pulumi.String("us-south1"),
/// 			Network:     defaultNetwork.ID(),
/// 			Role:        pulumi.String("ACTIVE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGatewaySecurityPolicy, err := networksecurity.NewGatewaySecurityPolicy(ctx, "default", &networksecurity.GatewaySecurityPolicyArgs{
/// 			Name:     pulumi.String("my-policy-name"),
/// 			Location: pulumi.String("us-south1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewGatewaySecurityPolicyRule(ctx, "default", &networksecurity.GatewaySecurityPolicyRuleArgs{
/// 			Name:                  pulumi.String("my-policyrule-name"),
/// 			Location:              pulumi.String("us-south1"),
/// 			GatewaySecurityPolicy: defaultGatewaySecurityPolicy.Name,
/// 			Enabled:               pulumi.Bool(true),
/// 			Priority:              pulumi.Int(1),
/// 			SessionMatcher:        pulumi.String("host() == 'example.com'"),
/// 			BasicProfile:          pulumi.String("ALLOW"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewGateway(ctx, "default", &networkservices.GatewayArgs{
/// 			Name:     pulumi.String("my-gateway1"),
/// 			Location: pulumi.String("us-south1"),
/// 			Addresses: pulumi.StringArray{
/// 				pulumi.String("10.128.0.99"),
/// 			},
/// 			Type: pulumi.String("SECURE_WEB_GATEWAY"),
/// 			Ports: pulumi.IntArray{
/// 				pulumi.Int(443),
/// 			},
/// 			Scope: pulumi.String("my-default-scope1"),
/// 			CertificateUrls: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 			GatewaySecurityPolicy:           defaultGatewaySecurityPolicy.ID(),
/// 			Network:                         defaultNetwork.ID(),
/// 			Subnetwork:                      defaultSubnetwork.ID(),
/// 			DeleteSwgAutogenRouterOnDestroy: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			proxyonlysubnet,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewGateway(ctx, "gateway2", &networkservices.GatewayArgs{
/// 			Name:     pulumi.String("my-gateway2"),
/// 			Location: pulumi.String("us-south1"),
/// 			Addresses: pulumi.StringArray{
/// 				pulumi.String("10.128.0.98"),
/// 			},
/// 			Type: pulumi.String("SECURE_WEB_GATEWAY"),
/// 			Ports: pulumi.IntArray{
/// 				pulumi.Int(443),
/// 			},
/// 			Scope: pulumi.String("my-default-scope2"),
/// 			CertificateUrls: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 			GatewaySecurityPolicy:           defaultGatewaySecurityPolicy.ID(),
/// 			Network:                         defaultNetwork.ID(),
/// 			Subnetwork:                      defaultSubnetwork.ID(),
/// 			DeleteSwgAutogenRouterOnDestroy: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			proxyonlysubnet,
/// 		}))
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
/// import com.pulumi.gcp.certificatemanager.Certificate;
/// import com.pulumi.gcp.certificatemanager.CertificateArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.CertificateSelfManagedArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicy;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyArgs;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRule;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRuleArgs;
/// import com.pulumi.gcp.networkservices.Gateway;
/// import com.pulumi.gcp.networkservices.GatewayArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .name("my-certificate")
///             .location("us-south1")
///             .selfManaged(CertificateSelfManagedArgs.builder()
///                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/cert.pem")
///                     .build()).result())
///                 .pemPrivateKey(StdFunctions.file(FileArgs.builder()
///                     .input("test-fixtures/private-key.pem")
///                     .build()).result())
///                 .build())
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .routingMode("REGIONAL")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("my-subnetwork-name")
///             .purpose("PRIVATE")
///             .ipCidrRange("10.128.0.0/20")
///             .region("us-south1")
///             .network(defaultNetwork.id())
///             .role("ACTIVE")
///             .build());
///
///         var proxyonlysubnet = new Subnetwork("proxyonlysubnet", SubnetworkArgs.builder()
///             .name("my-proxy-only-subnetwork")
///             .purpose("REGIONAL_MANAGED_PROXY")
///             .ipCidrRange("192.168.0.0/23")
///             .region("us-south1")
///             .network(defaultNetwork.id())
///             .role("ACTIVE")
///             .build());
///
///         var defaultGatewaySecurityPolicy = new GatewaySecurityPolicy("defaultGatewaySecurityPolicy", GatewaySecurityPolicyArgs.builder()
///             .name("my-policy-name")
///             .location("us-south1")
///             .build());
///
///         var defaultGatewaySecurityPolicyRule = new GatewaySecurityPolicyRule("defaultGatewaySecurityPolicyRule", GatewaySecurityPolicyRuleArgs.builder()
///             .name("my-policyrule-name")
///             .location("us-south1")
///             .gatewaySecurityPolicy(defaultGatewaySecurityPolicy.name())
///             .enabled(true)
///             .priority(1)
///             .sessionMatcher("host() == 'example.com'")
///             .basicProfile("ALLOW")
///             .build());
///
///         var defaultGateway = new Gateway("defaultGateway", GatewayArgs.builder()
///             .name("my-gateway1")
///             .location("us-south1")
///             .addresses("10.128.0.99")
///             .type("SECURE_WEB_GATEWAY")
///             .ports(443)
///             .scope("my-default-scope1")
///             .certificateUrls(default_.id())
///             .gatewaySecurityPolicy(defaultGatewaySecurityPolicy.id())
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .deleteSwgAutogenRouterOnDestroy(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(proxyonlysubnet)
///                 .build());
///
///         var gateway2 = new Gateway("gateway2", GatewayArgs.builder()
///             .name("my-gateway2")
///             .location("us-south1")
///             .addresses("10.128.0.98")
///             .type("SECURE_WEB_GATEWAY")
///             .ports(443)
///             .scope("my-default-scope2")
///             .certificateUrls(default_.id())
///             .gatewaySecurityPolicy(defaultGatewaySecurityPolicy.id())
///             .network(defaultNetwork.id())
///             .subnetwork(defaultSubnetwork.id())
///             .deleteSwgAutogenRouterOnDestroy(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(proxyonlysubnet)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:certificatemanager:Certificate
///     properties:
///       name: my-certificate
///       location: us-south1
///       selfManaged:
///         pemCertificate:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/cert.pem
///             return: result
///         pemPrivateKey:
///           fn::invoke:
///             function: std:file
///             arguments:
///               input: test-fixtures/private-key.pem
///             return: result
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: my-network
///       routingMode: REGIONAL
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: my-subnetwork-name
///       purpose: PRIVATE
///       ipCidrRange: 10.128.0.0/20
///       region: us-south1
///       network: ${defaultNetwork.id}
///       role: ACTIVE
///   proxyonlysubnet:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-proxy-only-subnetwork
///       purpose: REGIONAL_MANAGED_PROXY
///       ipCidrRange: 192.168.0.0/23
///       region: us-south1
///       network: ${defaultNetwork.id}
///       role: ACTIVE
///   defaultGatewaySecurityPolicy:
///     type: gcp:networksecurity:GatewaySecurityPolicy
///     name: default
///     properties:
///       name: my-policy-name
///       location: us-south1
///   defaultGatewaySecurityPolicyRule:
///     type: gcp:networksecurity:GatewaySecurityPolicyRule
///     name: default
///     properties:
///       name: my-policyrule-name
///       location: us-south1
///       gatewaySecurityPolicy: ${defaultGatewaySecurityPolicy.name}
///       enabled: true
///       priority: 1
///       sessionMatcher: host() == 'example.com'
///       basicProfile: ALLOW
///   defaultGateway:
///     type: gcp:networkservices:Gateway
///     name: default
///     properties:
///       name: my-gateway1
///       location: us-south1
///       addresses:
///         - 10.128.0.99
///       type: SECURE_WEB_GATEWAY
///       ports:
///         - 443
///       scope: my-default-scope1
///       certificateUrls:
///         - ${default.id}
///       gatewaySecurityPolicy: ${defaultGatewaySecurityPolicy.id}
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       deleteSwgAutogenRouterOnDestroy: true
///     options:
///       dependsOn:
///         - ${proxyonlysubnet}
///   gateway2:
///     type: gcp:networkservices:Gateway
///     properties:
///       name: my-gateway2
///       location: us-south1
///       addresses:
///         - 10.128.0.98
///       type: SECURE_WEB_GATEWAY
///       ports:
///         - 443
///       scope: my-default-scope2
///       certificateUrls:
///         - ${default.id}
///       gatewaySecurityPolicy: ${defaultGatewaySecurityPolicy.id}
///       network: ${defaultNetwork.id}
///       subnetwork: ${defaultSubnetwork.id}
///       deleteSwgAutogenRouterOnDestroy: true
///     options:
///       dependsOn:
///         - ${proxyonlysubnet}
/// ```
///
///
/// ## Import
///
/// Gateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gateways/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Gateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/gateway:Gateway default projects/{{project}}/locations/{{location}}/gateways/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/gateway:Gateway default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/gateway:Gateway default {{location}}/{{name}}
/// ```
class Gateway extends pulumi.CustomResource {
  /// Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic.
  /// When no address is provided, an IP from the subnetwork is allocated.
  /// This field only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  /// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6.
  late final pulumi.Output<List<String>> addresses;

  /// A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.
  /// This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'.
  late final pulumi.Output<List<String>?> certificateUrls;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// When deleting a gateway of type 'SECURE_WEB_GATEWAY', this boolean option will also delete auto generated router by the gateway creation.
  /// If there is no other gateway of type 'SECURE_WEB_GATEWAY' remaining for that region and network it will be deleted.
  late final pulumi.Output<bool?> deleteSwgAutogenRouterOnDestroy;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Determines if envoy will insert internal debug headers into upstream requests.
  /// Other Envoy headers may still be injected.
  /// By default, envoy will not insert any debug headers.
  /// Possible values are: `NONE`, `DEBUG_HEADERS`.
  late final pulumi.Output<String?> envoyHeaders;

  /// A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.
  /// For example: 'projects/*/locations/*/gatewaySecurityPolicies/swg-policy'.
  /// This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final pulumi.Output<String?> gatewaySecurityPolicy;

  /// The IP Version that will be used by this gateway.
  /// Possible values are: `IPV4`, `IPV6`.
  late final pulumi.Output<String?> ipVersion;

  /// Set of label tags associated with the Gateway resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the gateway.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// Name of the Gateway resource.
  late final pulumi.Output<String> name;

  /// The relative resource name identifying the VPC network that is using this configuration.
  /// For example: 'projects/*/global/networks/network-1'.
  /// Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final pulumi.Output<String?> network;

  /// One or more port numbers (1-65535), on which the Gateway will receive traffic.
  /// The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port.
  /// Gateways of type 'OPEN_MESH' listen on 0.0.0.0 for IPv4 and :: for IPv6 and support multiple ports.
  late final pulumi.Output<List<int>> ports;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The routing mode of the Gateway. This field is configurable only for gateways of type SECURE_WEB_GATEWAY. This field is required for gateways of type SECURE_WEB_GATEWAY.
  /// Possible values are: `NEXT_HOP_ROUTING_MODE`, `EXPLICIT_ROUTING_MODE`.
  late final pulumi.Output<String?> routingMode;

  /// Immutable. Scope determines how configuration across multiple Gateway instances are merged.
  /// The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer.
  /// Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.
  late final pulumi.Output<String?> scope;

  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;

  /// A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.
  late final pulumi.Output<String?> serverTlsPolicy;

  /// The relative resource name identifying the subnetwork in which this SWG is allocated.
  /// For example: projects/*/regions/us-central1/subnetworks/network-1.
  /// Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'.
  late final pulumi.Output<String?> subnetwork;

  /// Immutable. The type of the customer managed gateway.
  /// Possible values are: `OPEN_MESH`, `SECURE_WEB_GATEWAY`.
  late final pulumi.Output<String> type;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_networkservices_gateway_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:networkservices/gateway:Gateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.addresses = registerOutput<List<String>>('addresses');
    this.certificateUrls = registerOutput<List<String>?>('certificateUrls');
    this.createTime = registerOutput<String>('createTime');
    this.deleteSwgAutogenRouterOnDestroy = registerOutput<bool?>(
      'deleteSwgAutogenRouterOnDestroy',
    );
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.envoyHeaders = registerOutput<String?>('envoyHeaders');
    this.gatewaySecurityPolicy = registerOutput<String?>(
      'gatewaySecurityPolicy',
    );
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.ports = registerOutput<List<int>>('ports');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.routingMode = registerOutput<String?>('routingMode');
    this.scope = registerOutput<String?>('scope');
    this.selfLink = registerOutput<String>('selfLink');
    this.serverTlsPolicy = registerOutput<String?>('serverTlsPolicy');
    this.subnetwork = registerOutput<String?>('subnetwork');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
