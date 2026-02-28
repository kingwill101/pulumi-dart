import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_tls_policy_args.dart';
import 'server_tls_policy_mtls_policy.dart';
import 'server_tls_policy_server_certificate.dart';

/// ServerTlsPolicy is a resource that specifies how a server should authenticate incoming requests. This resource itself does not affect configuration unless it is attached to a target HTTPS proxy or endpoint config selector resource.
///
///
/// To get more information about ServerTlsPolicy, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-security/rest/v1beta1/projects.locations.serverTlsPolicies)
/// * How-to Guides
/// * [Use ServerTlsPolicy](https://cloud.google.com/load-balancing/docs/mtls)
///
/// ## Example Usage
///
/// ### Network Security Server Tls Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.ServerTlsPolicy("default", {
///     name: "my-server-tls-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     allowOpen: false,
///     serverCertificate: {
///         certificateProviderInstance: {
///             pluginInstance: "google_cloud_private_spiffe",
///         },
///     },
///     mtlsPolicy: {
///         clientValidationCas: [{
///             grpcEndpoint: {
///                 targetUri: "unix:mypath",
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.ServerTlsPolicy("default",
///     name="my-server-tls-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     allow_open=False,
///     server_certificate={
///         "certificate_provider_instance": {
///             "plugin_instance": "google_cloud_private_spiffe",
///         },
///     },
///     mtls_policy={
///         "client_validation_cas": [{
///             "grpc_endpoint": {
///                 "target_uri": "unix:mypath",
///             },
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.ServerTlsPolicy("default", new()
///     {
///         Name = "my-server-tls-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         AllowOpen = false,
///         ServerCertificate = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyServerCertificateArgs
///         {
///             CertificateProviderInstance = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyServerCertificateCertificateProviderInstanceArgs
///             {
///                 PluginInstance = "google_cloud_private_spiffe",
///             },
///         },
///         MtlsPolicy = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyMtlsPolicyArgs
///         {
///             ClientValidationCas = new[]
///             {
///                 new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyMtlsPolicyClientValidationCaArgs
///                 {
///                     GrpcEndpoint = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpointArgs
///                     {
///                         TargetUri = "unix:mypath",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewServerTlsPolicy(ctx, "default", &networksecurity.ServerTlsPolicyArgs{
/// 			Name: pulumi.String("my-server-tls-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			AllowOpen:   pulumi.Bool(false),
/// 			ServerCertificate: &networksecurity.ServerTlsPolicyServerCertificateArgs{
/// 				CertificateProviderInstance: &networksecurity.ServerTlsPolicyServerCertificateCertificateProviderInstanceArgs{
/// 					PluginInstance: pulumi.String("google_cloud_private_spiffe"),
/// 				},
/// 			},
/// 			MtlsPolicy: &networksecurity.ServerTlsPolicyMtlsPolicyArgs{
/// 				ClientValidationCas: networksecurity.ServerTlsPolicyMtlsPolicyClientValidationCaArray{
/// 					&networksecurity.ServerTlsPolicyMtlsPolicyClientValidationCaArgs{
/// 						GrpcEndpoint: &networksecurity.ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpointArgs{
/// 							TargetUri: pulumi.String("unix:mypath"),
/// 						},
/// 					},
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
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicy;
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ServerTlsPolicyServerCertificateArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ServerTlsPolicyServerCertificateCertificateProviderInstanceArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ServerTlsPolicyMtlsPolicyArgs;
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
///         var default_ = new ServerTlsPolicy("default", ServerTlsPolicyArgs.builder()
///             .name("my-server-tls-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .allowOpen(false)
///             .serverCertificate(ServerTlsPolicyServerCertificateArgs.builder()
///                 .certificateProviderInstance(ServerTlsPolicyServerCertificateCertificateProviderInstanceArgs.builder()
///                     .pluginInstance("google_cloud_private_spiffe")
///                     .build())
///                 .build())
///             .mtlsPolicy(ServerTlsPolicyMtlsPolicyArgs.builder()
///                 .clientValidationCas(ServerTlsPolicyMtlsPolicyClientValidationCaArgs.builder()
///                     .grpcEndpoint(ServerTlsPolicyMtlsPolicyClientValidationCaGrpcEndpointArgs.builder()
///                         .targetUri("unix:mypath")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:ServerTlsPolicy
///     properties:
///       name: my-server-tls-policy
///       labels:
///         foo: bar
///       description: my description
///       allowOpen: 'false'
///       serverCertificate:
///         certificateProviderInstance:
///           pluginInstance: google_cloud_private_spiffe
///       mtlsPolicy:
///         clientValidationCas:
///           - grpcEndpoint:
///               targetUri: unix:mypath
/// ```
///
/// ### Network Security Server Tls Policy Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.ServerTlsPolicy("default", {
///     name: "my-server-tls-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     location: "global",
///     allowOpen: false,
///     mtlsPolicy: {
///         clientValidationMode: "ALLOW_INVALID_OR_MISSING_CLIENT_CERT",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.ServerTlsPolicy("default",
///     name="my-server-tls-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     location="global",
///     allow_open=False,
///     mtls_policy={
///         "client_validation_mode": "ALLOW_INVALID_OR_MISSING_CLIENT_CERT",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.ServerTlsPolicy("default", new()
///     {
///         Name = "my-server-tls-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Location = "global",
///         AllowOpen = false,
///         MtlsPolicy = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyMtlsPolicyArgs
///         {
///             ClientValidationMode = "ALLOW_INVALID_OR_MISSING_CLIENT_CERT",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewServerTlsPolicy(ctx, "default", &networksecurity.ServerTlsPolicyArgs{
/// 			Name: pulumi.String("my-server-tls-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Location:    pulumi.String("global"),
/// 			AllowOpen:   pulumi.Bool(false),
/// 			MtlsPolicy: &networksecurity.ServerTlsPolicyMtlsPolicyArgs{
/// 				ClientValidationMode: pulumi.String("ALLOW_INVALID_OR_MISSING_CLIENT_CERT"),
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
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicy;
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ServerTlsPolicyMtlsPolicyArgs;
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
///         var default_ = new ServerTlsPolicy("default", ServerTlsPolicyArgs.builder()
///             .name("my-server-tls-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .location("global")
///             .allowOpen(false)
///             .mtlsPolicy(ServerTlsPolicyMtlsPolicyArgs.builder()
///                 .clientValidationMode("ALLOW_INVALID_OR_MISSING_CLIENT_CERT")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:ServerTlsPolicy
///     properties:
///       name: my-server-tls-policy
///       labels:
///         foo: bar
///       description: my description
///       location: global
///       allowOpen: 'false'
///       mtlsPolicy:
///         clientValidationMode: ALLOW_INVALID_OR_MISSING_CLIENT_CERT
/// ```
///
/// ### Network Security Server Tls Policy Server Cert
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.ServerTlsPolicy("default", {
///     name: "my-server-tls-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     location: "global",
///     allowOpen: false,
///     serverCertificate: {
///         grpcEndpoint: {
///             targetUri: "unix:mypath",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.ServerTlsPolicy("default",
///     name="my-server-tls-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     location="global",
///     allow_open=False,
///     server_certificate={
///         "grpc_endpoint": {
///             "target_uri": "unix:mypath",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.ServerTlsPolicy("default", new()
///     {
///         Name = "my-server-tls-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Location = "global",
///         AllowOpen = false,
///         ServerCertificate = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyServerCertificateArgs
///         {
///             GrpcEndpoint = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyServerCertificateGrpcEndpointArgs
///             {
///                 TargetUri = "unix:mypath",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewServerTlsPolicy(ctx, "default", &networksecurity.ServerTlsPolicyArgs{
/// 			Name: pulumi.String("my-server-tls-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Location:    pulumi.String("global"),
/// 			AllowOpen:   pulumi.Bool(false),
/// 			ServerCertificate: &networksecurity.ServerTlsPolicyServerCertificateArgs{
/// 				GrpcEndpoint: &networksecurity.ServerTlsPolicyServerCertificateGrpcEndpointArgs{
/// 					TargetUri: pulumi.String("unix:mypath"),
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
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicy;
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ServerTlsPolicyServerCertificateArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ServerTlsPolicyServerCertificateGrpcEndpointArgs;
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
///         var default_ = new ServerTlsPolicy("default", ServerTlsPolicyArgs.builder()
///             .name("my-server-tls-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .location("global")
///             .allowOpen(false)
///             .serverCertificate(ServerTlsPolicyServerCertificateArgs.builder()
///                 .grpcEndpoint(ServerTlsPolicyServerCertificateGrpcEndpointArgs.builder()
///                     .targetUri("unix:mypath")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:ServerTlsPolicy
///     properties:
///       name: my-server-tls-policy
///       labels:
///         foo: bar
///       description: my description
///       location: global
///       allowOpen: 'false'
///       serverCertificate:
///         grpcEndpoint:
///           targetUri: unix:mypath
/// ```
///
/// ### Network Security Server Tls Policy Mtls
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = gcp.organizations.getProject({});
/// const defaultTrustConfig = new gcp.certificatemanager.TrustConfig("default", {
///     name: "my-trust-config",
///     description: "sample trust config description",
///     location: "global",
///     trustStores: [{
///         trustAnchors: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/ca_cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///         intermediateCas: [{
///             pemCertificate: std.file({
///                 input: "test-fixtures/ca_cert.pem",
///             }).then(invoke => invoke.result),
///         }],
///     }],
///     labels: {
///         foo: "bar",
///     },
/// });
/// const _default = new gcp.networksecurity.ServerTlsPolicy("default", {
///     name: "my-server-tls-policy",
///     description: "my description",
///     location: "global",
///     allowOpen: false,
///     mtlsPolicy: {
///         clientValidationMode: "REJECT_INVALID",
///         clientValidationTrustConfig: pulumi.all([project, defaultTrustConfig.name]).apply(([project, name]) => `projects/${project.number}/locations/global/trustConfigs/${name}`),
///     },
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.get_project()
/// default_trust_config = gcp.certificatemanager.TrustConfig("default",
///     name="my-trust-config",
///     description="sample trust config description",
///     location="global",
///     trust_stores=[{
///         "trust_anchors": [{
///             "pem_certificate": std.file(input="test-fixtures/ca_cert.pem").result,
///         }],
///         "intermediate_cas": [{
///             "pem_certificate": std.file(input="test-fixtures/ca_cert.pem").result,
///         }],
///     }],
///     labels={
///         "foo": "bar",
///     })
/// default = gcp.networksecurity.ServerTlsPolicy("default",
///     name="my-server-tls-policy",
///     description="my description",
///     location="global",
///     allow_open=False,
///     mtls_policy={
///         "client_validation_mode": "REJECT_INVALID",
///         "client_validation_trust_config": default_trust_config.name.apply(lambda name: f"projects/{project.number}/locations/global/trustConfigs/{name}"),
///     },
///     labels={
///         "foo": "bar",
///     })
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var defaultTrustConfig = new Gcp.CertificateManager.TrustConfig("default", new()
///     {
///         Name = "my-trust-config",
///         Description = "sample trust config description",
///         Location = "global",
///         TrustStores = new[]
///         {
///             new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreArgs
///             {
///                 TrustAnchors = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreTrustAnchorArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/ca_cert.pem",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///                 IntermediateCas = new[]
///                 {
///                     new Gcp.CertificateManager.Inputs.TrustConfigTrustStoreIntermediateCaArgs
///                     {
///                         PemCertificate = Std.File.Invoke(new()
///                         {
///                             Input = "test-fixtures/ca_cert.pem",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///             },
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     var @default = new Gcp.NetworkSecurity.ServerTlsPolicy("default", new()
///     {
///         Name = "my-server-tls-policy",
///         Description = "my description",
///         Location = "global",
///         AllowOpen = false,
///         MtlsPolicy = new Gcp.NetworkSecurity.Inputs.ServerTlsPolicyMtlsPolicyArgs
///         {
///             ClientValidationMode = "REJECT_INVALID",
///             ClientValidationTrustConfig = Output.Tuple(project, defaultTrustConfig.Name).Apply(values =>
///             {
///                 var project = values.Item1;
///                 var name = values.Item2;
///                 return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/global/trustConfigs/{name}";
///             }),
///         },
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/ca_cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/ca_cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTrustConfig, err := certificatemanager.NewTrustConfig(ctx, "default", &certificatemanager.TrustConfigArgs{
/// 			Name:        pulumi.String("my-trust-config"),
/// 			Description: pulumi.String("sample trust config description"),
/// 			Location:    pulumi.String("global"),
/// 			TrustStores: certificatemanager.TrustConfigTrustStoreArray{
/// 				&certificatemanager.TrustConfigTrustStoreArgs{
/// 					TrustAnchors: certificatemanager.TrustConfigTrustStoreTrustAnchorArray{
/// 						&certificatemanager.TrustConfigTrustStoreTrustAnchorArgs{
/// 							PemCertificate: pulumi.String(invokeFile.Result),
/// 						},
/// 					},
/// 					IntermediateCas: certificatemanager.TrustConfigTrustStoreIntermediateCaArray{
/// 						&certificatemanager.TrustConfigTrustStoreIntermediateCaArgs{
/// 							PemCertificate: pulumi.String(invokeFile1.Result),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewServerTlsPolicy(ctx, "default", &networksecurity.ServerTlsPolicyArgs{
/// 			Name:        pulumi.String("my-server-tls-policy"),
/// 			Description: pulumi.String("my description"),
/// 			Location:    pulumi.String("global"),
/// 			AllowOpen:   pulumi.Bool(false),
/// 			MtlsPolicy: &networksecurity.ServerTlsPolicyMtlsPolicyArgs{
/// 				ClientValidationMode: pulumi.String("REJECT_INVALID"),
/// 				ClientValidationTrustConfig: defaultTrustConfig.Name.ApplyT(func(name string) (string, error) {
/// 					return fmt.Sprintf("projects/%v/locations/global/trustConfigs/%v", project.Number, name), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.certificatemanager.TrustConfig;
/// import com.pulumi.gcp.certificatemanager.TrustConfigArgs;
/// import com.pulumi.gcp.certificatemanager.inputs.TrustConfigTrustStoreArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicy;
/// import com.pulumi.gcp.networksecurity.ServerTlsPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.ServerTlsPolicyMtlsPolicyArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var defaultTrustConfig = new TrustConfig("defaultTrustConfig", TrustConfigArgs.builder()
///             .name("my-trust-config")
///             .description("sample trust config description")
///             .location("global")
///             .trustStores(TrustConfigTrustStoreArgs.builder()
///                 .trustAnchors(TrustConfigTrustStoreTrustAnchorArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/ca_cert.pem")
///                         .build()).result())
///                     .build())
///                 .intermediateCas(TrustConfigTrustStoreIntermediateCaArgs.builder()
///                     .pemCertificate(StdFunctions.file(FileArgs.builder()
///                         .input("test-fixtures/ca_cert.pem")
///                         .build()).result())
///                     .build())
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///         var default_ = new ServerTlsPolicy("default", ServerTlsPolicyArgs.builder()
///             .name("my-server-tls-policy")
///             .description("my description")
///             .location("global")
///             .allowOpen(false)
///             .mtlsPolicy(ServerTlsPolicyMtlsPolicyArgs.builder()
///                 .clientValidationMode("REJECT_INVALID")
///                 .clientValidationTrustConfig(defaultTrustConfig.name().applyValue(_name -> String.format("projects/%s/locations/global/trustConfigs/%s", project.number(),_name)))
///                 .build())
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:ServerTlsPolicy
///     properties:
///       name: my-server-tls-policy
///       description: my description
///       location: global
///       allowOpen: 'false'
///       mtlsPolicy:
///         clientValidationMode: REJECT_INVALID
///         clientValidationTrustConfig: projects/${project.number}/locations/global/trustConfigs/${defaultTrustConfig.name}
///       labels:
///         foo: bar
///   defaultTrustConfig:
///     type: gcp:certificatemanager:TrustConfig
///     name: default
///     properties:
///       name: my-trust-config
///       description: sample trust config description
///       location: global
///       trustStores:
///         - trustAnchors:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/ca_cert.pem
///                   return: result
///           intermediateCas:
///             - pemCertificate:
///                 fn::invoke:
///                   function: std:file
///                   arguments:
///                     input: test-fixtures/ca_cert.pem
///                   return: result
///       labels:
///         foo: bar
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ServerTlsPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serverTlsPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ServerTlsPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/serverTlsPolicy:ServerTlsPolicy default projects/{{project}}/locations/{{location}}/serverTlsPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/serverTlsPolicy:ServerTlsPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/serverTlsPolicy:ServerTlsPolicy default {{location}}/{{name}}
/// ```
class ServerTlsPolicy extends pulumi.CustomResource {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
  /// Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility.
  /// Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  late final pulumi.Output<bool?> allowOpen;

  /// Time the ServerTlsPolicy was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the ServerTlsPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the server tls policy.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.
  /// Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections.
  /// Structure is documented below.
  late final pulumi.Output<ServerTlsPolicyMtlsPolicy?> mtlsPolicy;

  /// Name of the ServerTlsPolicy resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  late final pulumi.Output<ServerTlsPolicyServerCertificate?> serverCertificate;

  /// Time the ServerTlsPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServerTlsPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerTlsPolicy]. {@macro pulumi_networksecurity_server_tls_policy_server_tls_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerTlsPolicy(
    String name, {
    ServerTlsPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/serverTlsPolicy:ServerTlsPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowOpen = registerOutput<bool?>('allowOpen');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.mtlsPolicy = registerOutput<ServerTlsPolicyMtlsPolicy?>('mtlsPolicy');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serverCertificate =
        registerOutput<ServerTlsPolicyServerCertificate?>('serverCertificate');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
