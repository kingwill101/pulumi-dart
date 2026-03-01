import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_args.dart';
import 'workload_identity_pool_inline_certificate_issuance_config.dart';
import 'workload_identity_pool_inline_trust_config.dart';

/// Represents a collection of external workload identities. You can define IAM policies to
/// grant these identities access to Google Cloud resources.
///
///
/// To get more information about WorkloadIdentityPool, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools)
/// * How-to Guides
/// * [Configure managed workload identity authentication for Compute Engine](https://cloud.google.com/iam/docs/create-managed-workload-identities)
/// * [Configure managed workload identity authentication for GKE](https://cloud.google.com/iam/docs/create-managed-workload-identities-gke)
/// * [Managing workload identity pools](https://cloud.google.com/iam/docs/manage-workload-identity-pools-providers#pools)
///
/// ## Example Usage
///
/// ### Iam Workload Identity Pool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.iam.WorkloadIdentityPool("example", {workloadIdentityPoolId: "example-pool"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.iam.WorkloadIdentityPool("example", workload_identity_pool_id="example-pool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Iam.WorkloadIdentityPool("example", new()
///     {
///         WorkloadIdentityPoolId = "example-pool",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewWorkloadIdentityPool(ctx, "example", &iam.WorkloadIdentityPoolArgs{
/// 			WorkloadIdentityPoolId: pulumi.String("example-pool"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
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
///         var example = new WorkloadIdentityPool("example", WorkloadIdentityPoolArgs.builder()
///             .workloadIdentityPoolId("example-pool")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:iam:WorkloadIdentityPool
///     properties:
///       workloadIdentityPoolId: example-pool
/// ```
///
/// ### Iam Workload Identity Pool Full Federation Only Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.iam.WorkloadIdentityPool("example", {
///     workloadIdentityPoolId: "example-pool",
///     displayName: "Name of the pool",
///     description: "Identity pool operates in FEDERATION_ONLY mode",
///     disabled: true,
///     mode: "FEDERATION_ONLY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.iam.WorkloadIdentityPool("example",
///     workload_identity_pool_id="example-pool",
///     display_name="Name of the pool",
///     description="Identity pool operates in FEDERATION_ONLY mode",
///     disabled=True,
///     mode="FEDERATION_ONLY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Iam.WorkloadIdentityPool("example", new()
///     {
///         WorkloadIdentityPoolId = "example-pool",
///         DisplayName = "Name of the pool",
///         Description = "Identity pool operates in FEDERATION_ONLY mode",
///         Disabled = true,
///         Mode = "FEDERATION_ONLY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewWorkloadIdentityPool(ctx, "example", &iam.WorkloadIdentityPoolArgs{
/// 			WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// 			DisplayName:            pulumi.String("Name of the pool"),
/// 			Description:            pulumi.String("Identity pool operates in FEDERATION_ONLY mode"),
/// 			Disabled:               pulumi.Bool(true),
/// 			Mode:                   pulumi.String("FEDERATION_ONLY"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
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
///         var example = new WorkloadIdentityPool("example", WorkloadIdentityPoolArgs.builder()
///             .workloadIdentityPoolId("example-pool")
///             .displayName("Name of the pool")
///             .description("Identity pool operates in FEDERATION_ONLY mode")
///             .disabled(true)
///             .mode("FEDERATION_ONLY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:iam:WorkloadIdentityPool
///     properties:
///       workloadIdentityPoolId: example-pool
///       displayName: Name of the pool
///       description: Identity pool operates in FEDERATION_ONLY mode
///       disabled: true
///       mode: FEDERATION_ONLY
/// ```
///
/// ### Iam Workload Identity Pool Full Trust Domain Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const example = new gcp.iam.WorkloadIdentityPool("example", {
///     workloadIdentityPoolId: "example-pool",
///     displayName: "Name of the pool",
///     description: "Identity pool operates in TRUST_DOMAIN mode",
///     disabled: true,
///     mode: "TRUST_DOMAIN",
///     inlineCertificateIssuanceConfig: {
///         caPools: {
///             "us-central1": "projects/project-bar/locations/us-central1/caPools/ca-pool-bar",
///             "asia-east2": "projects/project-foo/locations/asia-east2/caPools/ca-pool-foo",
///         },
///         lifetime: "86400s",
///         rotationWindowPercentage: 50,
///         keyAlgorithm: "ECDSA_P256",
///     },
///     inlineTrustConfig: {
///         additionalTrustBundles: [
///             {
///                 trustDomain: "example.com",
///                 trustAnchors: [
///                     {
///                         pemCertificate: std.file({
///                             input: "test-fixtures/trust_anchor_1.pem",
///                         }).then(invoke => invoke.result),
///                     },
///                     {
///                         pemCertificate: std.file({
///                             input: "test-fixtures/trust_anchor_2.pem",
///                         }).then(invoke => invoke.result),
///                     },
///                 ],
///             },
///             {
///                 trustDomain: "example.net",
///                 trustAnchors: [
///                     {
///                         pemCertificate: std.file({
///                             input: "test-fixtures/trust_anchor_3.pem",
///                         }).then(invoke => invoke.result),
///                     },
///                     {
///                         pemCertificate: std.file({
///                             input: "test-fixtures/trust_anchor_4.pem",
///                         }).then(invoke => invoke.result),
///                     },
///                 ],
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// example = gcp.iam.WorkloadIdentityPool("example",
///     workload_identity_pool_id="example-pool",
///     display_name="Name of the pool",
///     description="Identity pool operates in TRUST_DOMAIN mode",
///     disabled=True,
///     mode="TRUST_DOMAIN",
///     inline_certificate_issuance_config={
///         "ca_pools": {
///             "us-central1": "projects/project-bar/locations/us-central1/caPools/ca-pool-bar",
///             "asia-east2": "projects/project-foo/locations/asia-east2/caPools/ca-pool-foo",
///         },
///         "lifetime": "86400s",
///         "rotation_window_percentage": 50,
///         "key_algorithm": "ECDSA_P256",
///     },
///     inline_trust_config={
///         "additional_trust_bundles": [
///             {
///                 "trust_domain": "example.com",
///                 "trust_anchors": [
///                     {
///                         "pem_certificate": std.file(input="test-fixtures/trust_anchor_1.pem").result,
///                     },
///                     {
///                         "pem_certificate": std.file(input="test-fixtures/trust_anchor_2.pem").result,
///                     },
///                 ],
///             },
///             {
///                 "trust_domain": "example.net",
///                 "trust_anchors": [
///                     {
///                         "pem_certificate": std.file(input="test-fixtures/trust_anchor_3.pem").result,
///                     },
///                     {
///                         "pem_certificate": std.file(input="test-fixtures/trust_anchor_4.pem").result,
///                     },
///                 ],
///             },
///         ],
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
///     var example = new Gcp.Iam.WorkloadIdentityPool("example", new()
///     {
///         WorkloadIdentityPoolId = "example-pool",
///         DisplayName = "Name of the pool",
///         Description = "Identity pool operates in TRUST_DOMAIN mode",
///         Disabled = true,
///         Mode = "TRUST_DOMAIN",
///         InlineCertificateIssuanceConfig = new Gcp.Iam.Inputs.WorkloadIdentityPoolInlineCertificateIssuanceConfigArgs
///         {
///             CaPools =
///             {
///                 { "us-central1", "projects/project-bar/locations/us-central1/caPools/ca-pool-bar" },
///                 { "asia-east2", "projects/project-foo/locations/asia-east2/caPools/ca-pool-foo" },
///             },
///             Lifetime = "86400s",
///             RotationWindowPercentage = 50,
///             KeyAlgorithm = "ECDSA_P256",
///         },
///         InlineTrustConfig = new Gcp.Iam.Inputs.WorkloadIdentityPoolInlineTrustConfigArgs
///         {
///             AdditionalTrustBundles = new[]
///             {
///                 new Gcp.Iam.Inputs.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleArgs
///                 {
///                     TrustDomain = "example.com",
///                     TrustAnchors = new[]
///                     {
///                         new Gcp.Iam.Inputs.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs
///                         {
///                             PemCertificate = Std.File.Invoke(new()
///                             {
///                                 Input = "test-fixtures/trust_anchor_1.pem",
///                             }).Apply(invoke => invoke.Result),
///                         },
///                         new Gcp.Iam.Inputs.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs
///                         {
///                             PemCertificate = Std.File.Invoke(new()
///                             {
///                                 Input = "test-fixtures/trust_anchor_2.pem",
///                             }).Apply(invoke => invoke.Result),
///                         },
///                     },
///                 },
///                 new Gcp.Iam.Inputs.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleArgs
///                 {
///                     TrustDomain = "example.net",
///                     TrustAnchors = new[]
///                     {
///                         new Gcp.Iam.Inputs.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs
///                         {
///                             PemCertificate = Std.File.Invoke(new()
///                             {
///                                 Input = "test-fixtures/trust_anchor_3.pem",
///                             }).Apply(invoke => invoke.Result),
///                         },
///                         new Gcp.Iam.Inputs.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs
///                         {
///                             PemCertificate = Std.File.Invoke(new()
///                             {
///                                 Input = "test-fixtures/trust_anchor_4.pem",
///                             }).Apply(invoke => invoke.Result),
///                         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/trust_anchor_1.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/trust_anchor_2.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile2, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/trust_anchor_3.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile3, err := std.File(ctx, &std.FileArgs{
/// 			Input: "test-fixtures/trust_anchor_4.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewWorkloadIdentityPool(ctx, "example", &iam.WorkloadIdentityPoolArgs{
/// 			WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// 			DisplayName:            pulumi.String("Name of the pool"),
/// 			Description:            pulumi.String("Identity pool operates in TRUST_DOMAIN mode"),
/// 			Disabled:               pulumi.Bool(true),
/// 			Mode:                   pulumi.String("TRUST_DOMAIN"),
/// 			InlineCertificateIssuanceConfig: &iam.WorkloadIdentityPoolInlineCertificateIssuanceConfigArgs{
/// 				CaPools: pulumi.StringMap{
/// 					"us-central1": pulumi.String("projects/project-bar/locations/us-central1/caPools/ca-pool-bar"),
/// 					"asia-east2":  pulumi.String("projects/project-foo/locations/asia-east2/caPools/ca-pool-foo"),
/// 				},
/// 				Lifetime:                 pulumi.String("86400s"),
/// 				RotationWindowPercentage: pulumi.Int(50),
/// 				KeyAlgorithm:             pulumi.String("ECDSA_P256"),
/// 			},
/// 			InlineTrustConfig: &iam.WorkloadIdentityPoolInlineTrustConfigArgs{
/// 				AdditionalTrustBundles: iam.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleArray{
/// 					&iam.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleArgs{
/// 						TrustDomain: pulumi.String("example.com"),
/// 						TrustAnchors: iam.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArray{
/// 							&iam.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs{
/// 								PemCertificate: pulumi.String(invokeFile.Result),
/// 							},
/// 							&iam.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs{
/// 								PemCertificate: pulumi.String(invokeFile1.Result),
/// 							},
/// 						},
/// 					},
/// 					&iam.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleArgs{
/// 						TrustDomain: pulumi.String("example.net"),
/// 						TrustAnchors: iam.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArray{
/// 							&iam.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs{
/// 								PemCertificate: pulumi.String(invokeFile2.Result),
/// 							},
/// 							&iam.WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs{
/// 								PemCertificate: pulumi.String(invokeFile3.Result),
/// 							},
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolInlineCertificateIssuanceConfigArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolInlineTrustConfigArgs;
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
///         var example = new WorkloadIdentityPool("example", WorkloadIdentityPoolArgs.builder()
///             .workloadIdentityPoolId("example-pool")
///             .displayName("Name of the pool")
///             .description("Identity pool operates in TRUST_DOMAIN mode")
///             .disabled(true)
///             .mode("TRUST_DOMAIN")
///             .inlineCertificateIssuanceConfig(WorkloadIdentityPoolInlineCertificateIssuanceConfigArgs.builder()
///                 .caPools(Map.ofEntries(
///                     Map.entry("us-central1", "projects/project-bar/locations/us-central1/caPools/ca-pool-bar"),
///                     Map.entry("asia-east2", "projects/project-foo/locations/asia-east2/caPools/ca-pool-foo")
///                 ))
///                 .lifetime("86400s")
///                 .rotationWindowPercentage(50)
///                 .keyAlgorithm("ECDSA_P256")
///                 .build())
///             .inlineTrustConfig(WorkloadIdentityPoolInlineTrustConfigArgs.builder()
///                 .additionalTrustBundles(
///                     WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleArgs.builder()
///                         .trustDomain("example.com")
///                         .trustAnchors(
///                             WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs.builder()
///                                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                                     .input("test-fixtures/trust_anchor_1.pem")
///                                     .build()).result())
///                                 .build(),
///                             WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs.builder()
///                                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                                     .input("test-fixtures/trust_anchor_2.pem")
///                                     .build()).result())
///                                 .build())
///                         .build(),
///                     WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleArgs.builder()
///                         .trustDomain("example.net")
///                         .trustAnchors(
///                             WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs.builder()
///                                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                                     .input("test-fixtures/trust_anchor_3.pem")
///                                     .build()).result())
///                                 .build(),
///                             WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchorArgs.builder()
///                                 .pemCertificate(StdFunctions.file(FileArgs.builder()
///                                     .input("test-fixtures/trust_anchor_4.pem")
///                                     .build()).result())
///                                 .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:iam:WorkloadIdentityPool
///     properties:
///       workloadIdentityPoolId: example-pool
///       displayName: Name of the pool
///       description: Identity pool operates in TRUST_DOMAIN mode
///       disabled: true
///       mode: TRUST_DOMAIN
///       inlineCertificateIssuanceConfig:
///         caPools:
///           us-central1: projects/project-bar/locations/us-central1/caPools/ca-pool-bar
///           asia-east2: projects/project-foo/locations/asia-east2/caPools/ca-pool-foo
///         lifetime: 86400s
///         rotationWindowPercentage: 50
///         keyAlgorithm: ECDSA_P256
///       inlineTrustConfig:
///         additionalTrustBundles:
///           - trustDomain: example.com
///             trustAnchors:
///               - pemCertificate:
///                   fn::invoke:
///                     function: std:file
///                     arguments:
///                       input: test-fixtures/trust_anchor_1.pem
///                     return: result
///               - pemCertificate:
///                   fn::invoke:
///                     function: std:file
///                     arguments:
///                       input: test-fixtures/trust_anchor_2.pem
///                     return: result
///           - trustDomain: example.net
///             trustAnchors:
///               - pemCertificate:
///                   fn::invoke:
///                     function: std:file
///                     arguments:
///                       input: test-fixtures/trust_anchor_3.pem
///                     return: result
///               - pemCertificate:
///                   fn::invoke:
///                     function: std:file
///                     arguments:
///                       input: test-fixtures/trust_anchor_4.pem
///                     return: result
/// ```
///
///
/// ## Import
///
/// WorkloadIdentityPool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}`
///
/// * `{{project}}/{{workload_identity_pool_id}}`
///
/// * `{{workload_identity_pool_id}}`
///
/// When using the `pulumi import` command, WorkloadIdentityPool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPool:WorkloadIdentityPool default projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPool:WorkloadIdentityPool default {{project}}/{{workload_identity_pool_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPool:WorkloadIdentityPool default {{workload_identity_pool_id}}
/// ```
class WorkloadIdentityPool extends pulumi.CustomResource {
  /// A description of the pool. Cannot exceed 256 characters.
  late final pulumi.Output<String?> description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use
  /// existing tokens to access resources. If the pool is re-enabled, existing tokens grant
  /// access again.
  late final pulumi.Output<bool?> disabled;

  /// A display name for the pool. Cannot exceed 32 characters.
  late final pulumi.Output<String?> displayName;

  /// Represents configuration for generating mutual TLS (mTLS) certificates for the identities
  /// within this pool. Defines the Certificate Authority (CA) pool resources and configurations
  /// required for issuance and rotation of mTLS workload certificates.
  /// Structure is documented below.
  late final pulumi.Output<WorkloadIdentityPoolInlineCertificateIssuanceConfig?>
  inlineCertificateIssuanceConfig;

  /// Represents config to add additional trusted trust domains. Defines configuration for extending
  /// trust to additional trust domains. By establishing trust with another domain, the current
  /// domain will recognize and accept certificates issued by entities within the trusted domains.
  /// Note that a trust domain automatically trusts itself, eliminating the need for explicit
  /// configuration.
  /// Structure is documented below.
  late final pulumi.Output<WorkloadIdentityPoolInlineTrustConfig?>
  inlineTrustConfig;

  /// The mode for the pool is operating in. Pools with an unspecified mode will operate as if they
  /// are in `FEDERATION_ONLY` mode.
  ///
  /// > **Note** This field cannot be changed after the Workload Identity Pool is created. While
  /// `pulumi preview` may show an update if you change this field's value, `pulumi up`
  /// **will fail with an API error** (such as `Error 400: Attempted to update an immutable field.`).
  /// To specify a different `mode`, please create a new Workload Identity Pool resource.
  /// * `FEDERATION_ONLY`: Pools can only be used for federating external workload identities into
  /// Google Cloud. Unless otherwise noted, no structure or format constraints are applied to
  /// workload identities in a `FEDERATION_ONLY` mode pool, and you may not create any resources
  /// within the pool besides providers.
  /// * `TRUST_DOMAIN`: Pools can be used to assign identities to Google Cloud workloads. All
  /// identities within a `TRUST_DOMAIN` mode pool must consist of a single namespace and individual
  /// workload identifier. The subject identifier for all identities must conform to the following
  /// format: `ns/<namespace>/sa/<workload_identifier>`.
  /// `gcp.iam.WorkloadIdentityPoolProvider`s cannot be created within `TRUST_DOMAIN`
  /// mode pools.
  /// Possible values are: `FEDERATION_ONLY`, `TRUST_DOMAIN`.
  late final pulumi.Output<String?> mode;

  /// The resource name of the pool as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The state of the pool.
  /// * `STATE_UNSPECIFIED`: State unspecified.
  /// * `ACTIVE`: The pool is active, and may be used in Google Cloud policies.
  /// * `DELETED`: The pool is soft-deleted. Soft-deleted pools are permanently deleted after
  /// approximately 30 days. You can restore a soft-deleted pool using
  /// `UndeleteWorkloadIdentityPool`. You cannot reuse the ID of a soft-deleted pool until it is
  /// permanently deleted. While a pool is deleted, you cannot use it to exchange tokens, or
  /// use existing tokens to access resources. If the pool is undeleted, existing tokens grant
  /// access again.
  late final pulumi.Output<String> state;

  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final pulumi.Output<String> workloadIdentityPoolId;

  /// Creates a new [WorkloadIdentityPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadIdentityPool]. {@macro pulumi_iam_workload_identity_pool_workload_identity_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadIdentityPool(
    String name, {
    WorkloadIdentityPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:iam/workloadIdentityPool:WorkloadIdentityPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.inlineCertificateIssuanceConfig =
        registerOutput<WorkloadIdentityPoolInlineCertificateIssuanceConfig?>(
          'inlineCertificateIssuanceConfig',
        );
    this.inlineTrustConfig =
        registerOutput<WorkloadIdentityPoolInlineTrustConfig?>(
          'inlineTrustConfig',
        );
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId = registerOutput<String>(
      'workloadIdentityPoolId',
    );
  }
}
