import 'package:pulumi/pulumi.dart' as pulumi;
import 'oci_link_account_args.dart';

/// Use this resource to link an Oracle Cloud Infrastructure (OCI) account to New Relic.
///
/// This setup is used to create a provider account with OCI credentials, establishing a relationship between Oracle and New Relic. Additionally, as part of this integration, we store WIF (Workload Identity Federation) credentials which are further used for fetching data and validations, and vault OCIDs corresponding to the vault resource where the New Relic ingest and user keys are stored in the OCI console.
///
/// ## Prerequisites
///
/// For the `newrelic.cloud.OciLinkAccount` resource to work properly, you need an OCI tenancy with IAM permissions to create and manage the identity artifacts (client/application, secrets, compartments, and service user) referenced below. OCI provides enterprise-grade cloud services across multiple global regions.
///
/// > NOTE: Before using this resource, ensure the New Relic provider is configured with valid credentials.
/// > See Getting Started: New Relic provider guide
///
/// If you encounter issues or bugs, please open an issue in the GitHub repository.
///
/// ### Workload Identity Federation (WIF) Attributes
///
/// The following arguments rely on an OCI Identity Domain OAuth2 client set up for workload identity federation (identity propagation): `oci_client_id`, `oci_client_secret` and `oci_domain_url`.
///
/// To create and retrieve these values, follow Oracle's guidance for configuring identity propagation / JWT token exchange:
///
/// [Oracle documentation: Create an identity propagation trust (JWT token exchange)](https://docs.oracle.com/en-us/iaas/Content/Identity/api-getstarted/json_web_token_exchange.htm#jwt_token_exchange__create-identity-propagation-trust)
///
/// WIF configuration steps:
/// 1. Create (or identify) an Identity Domain and register an OAuth2 confidential application (client) to represent New Relic ingestion.
/// 2. Generate / record the client ID (`oci_client_id`) and client secret (`oci_client_secret`). Store the secret securely (e.g., in OCI Vault; reference its OCID via `ingest_vault_ocid` / `user_vault_ocid` if desired).
/// 3. Use the Identity Domain base URL as `oci_domain_url` (format: `https://idcs-<hash>.identity.oraclecloud.com`).
/// 4. Ensure the client has the required scopes and the tenancy policies allow the token exchange.
///
/// > TIP: Rotating the OAuth2 client secret only requires updating `oci_client_secret`; it does not force resource replacement.
///
/// ## Example Usage
///
/// Minimal example (required arguments for creation):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const example = new newrelic.cloud.OciLinkAccount("example", {
///     accountId: "1234567",
///     tenantId: "ocid1.tenancy.oc1..aaaaaaaaexample",
///     name: "my-oci-link",
///     compartmentOcid: "ocid1.compartment.oc1..bbbbbbbbexample",
///     ociClientId: "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     ociClientSecret: ociClientSecret,
///     ociDomainUrl: "https://idcs-1234567890abcdef.identity.oraclecloud.com",
///     ociHomeRegion: "us-ashburn-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// example = newrelic.cloud.OciLinkAccount("example",
///     account_id="1234567",
///     tenant_id="ocid1.tenancy.oc1..aaaaaaaaexample",
///     name="my-oci-link",
///     compartment_ocid="ocid1.compartment.oc1..bbbbbbbbexample",
///     oci_client_id="aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     oci_client_secret=oci_client_secret,
///     oci_domain_url="https://idcs-1234567890abcdef.identity.oraclecloud.com",
///     oci_home_region="us-ashburn-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new NewRelic.Cloud.OciLinkAccount("example", new()
///     {
///         AccountId = "1234567",
///         TenantId = "ocid1.tenancy.oc1..aaaaaaaaexample",
///         Name = "my-oci-link",
///         CompartmentOcid = "ocid1.compartment.oc1..bbbbbbbbexample",
///         OciClientId = "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///         OciClientSecret = ociClientSecret,
///         OciDomainUrl = "https://idcs-1234567890abcdef.identity.oraclecloud.com",
///         OciHomeRegion = "us-ashburn-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/cloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloud.NewOciLinkAccount(ctx, "example", &cloud.OciLinkAccountArgs{
/// 			AccountId:       pulumi.String("1234567"),
/// 			TenantId:        pulumi.String("ocid1.tenancy.oc1..aaaaaaaaexample"),
/// 			Name:            pulumi.String("my-oci-link"),
/// 			CompartmentOcid: pulumi.String("ocid1.compartment.oc1..bbbbbbbbexample"),
/// 			OciClientId:     pulumi.String("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"),
/// 			OciClientSecret: pulumi.Any(ociClientSecret),
/// 			OciDomainUrl:    pulumi.String("https://idcs-1234567890abcdef.identity.oraclecloud.com"),
/// 			OciHomeRegion:   pulumi.String("us-ashburn-1"),
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
/// import com.pulumi.newrelic.cloud.OciLinkAccount;
/// import com.pulumi.newrelic.cloud.OciLinkAccountArgs;
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
///         var example = new OciLinkAccount("example", OciLinkAccountArgs.builder()
///             .accountId("1234567")
///             .tenantId("ocid1.tenancy.oc1..aaaaaaaaexample")
///             .name("my-oci-link")
///             .compartmentOcid("ocid1.compartment.oc1..bbbbbbbbexample")
///             .ociClientId("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
///             .ociClientSecret(ociClientSecret)
///             .ociDomainUrl("https://idcs-1234567890abcdef.identity.oraclecloud.com")
///             .ociHomeRegion("us-ashburn-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: newrelic:cloud:OciLinkAccount
///     properties:
///       accountId: 1.234567e+06 # Changing this forces replacement (ForceNew)
///       tenantId: ocid1.tenancy.oc1..aaaaaaaaexample
///       name: my-oci-link
///       compartmentOcid: ocid1.compartment.oc1..bbbbbbbbexample
///       ociClientId: aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
///       ociClientSecret: ${ociClientSecret}
///       ociDomainUrl: https://idcs-1234567890abcdef.identity.oraclecloud.com
///       ociHomeRegion: us-ashburn-1
/// ```
///
///
/// Example including optional secret references and update-only fields:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const full = new newrelic.cloud.OciLinkAccount("full", {
///     name: "my-oci-link-full",
///     tenantId: "ocid1.tenancy.oc1..aaaaaaaaexample",
///     compartmentOcid: "ocid1.compartment.oc1..bbbbbbbbexample",
///     ociClientId: "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     ociClientSecret: ociClientSecret,
///     ociDomainUrl: "https://idcs-1234567890abcdef.identity.oraclecloud.com",
///     ociHomeRegion: "us-ashburn-1",
///     ingestVaultOcid: "ocid1.vaultsecret.oc1..ccccccccexample",
///     userVaultOcid: "ocid1.vaultsecret.oc1..ddddddddexample",
///     instrumentationType: "METRICS,LOGS",
///     ociRegion: "us-phoenix-1",
///     metricStackOcid: "ocid1.stack.oc1..eeeeeeeeexample",
///     loggingStackOcid: "ocid1.stack.oc1..ffffffloggingstack",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// full = newrelic.cloud.OciLinkAccount("full",
///     name="my-oci-link-full",
///     tenant_id="ocid1.tenancy.oc1..aaaaaaaaexample",
///     compartment_ocid="ocid1.compartment.oc1..bbbbbbbbexample",
///     oci_client_id="aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///     oci_client_secret=oci_client_secret,
///     oci_domain_url="https://idcs-1234567890abcdef.identity.oraclecloud.com",
///     oci_home_region="us-ashburn-1",
///     ingest_vault_ocid="ocid1.vaultsecret.oc1..ccccccccexample",
///     user_vault_ocid="ocid1.vaultsecret.oc1..ddddddddexample",
///     instrumentation_type="METRICS,LOGS",
///     oci_region="us-phoenix-1",
///     metric_stack_ocid="ocid1.stack.oc1..eeeeeeeeexample",
///     logging_stack_ocid="ocid1.stack.oc1..ffffffloggingstack")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var full = new NewRelic.Cloud.OciLinkAccount("full", new()
///     {
///         Name = "my-oci-link-full",
///         TenantId = "ocid1.tenancy.oc1..aaaaaaaaexample",
///         CompartmentOcid = "ocid1.compartment.oc1..bbbbbbbbexample",
///         OciClientId = "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///         OciClientSecret = ociClientSecret,
///         OciDomainUrl = "https://idcs-1234567890abcdef.identity.oraclecloud.com",
///         OciHomeRegion = "us-ashburn-1",
///         IngestVaultOcid = "ocid1.vaultsecret.oc1..ccccccccexample",
///         UserVaultOcid = "ocid1.vaultsecret.oc1..ddddddddexample",
///         InstrumentationType = "METRICS,LOGS",
///         OciRegion = "us-phoenix-1",
///         MetricStackOcid = "ocid1.stack.oc1..eeeeeeeeexample",
///         LoggingStackOcid = "ocid1.stack.oc1..ffffffloggingstack",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/cloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloud.NewOciLinkAccount(ctx, "full", &cloud.OciLinkAccountArgs{
/// 			Name:                pulumi.String("my-oci-link-full"),
/// 			TenantId:            pulumi.String("ocid1.tenancy.oc1..aaaaaaaaexample"),
/// 			CompartmentOcid:     pulumi.String("ocid1.compartment.oc1..bbbbbbbbexample"),
/// 			OciClientId:         pulumi.String("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"),
/// 			OciClientSecret:     pulumi.Any(ociClientSecret),
/// 			OciDomainUrl:        pulumi.String("https://idcs-1234567890abcdef.identity.oraclecloud.com"),
/// 			OciHomeRegion:       pulumi.String("us-ashburn-1"),
/// 			IngestVaultOcid:     pulumi.String("ocid1.vaultsecret.oc1..ccccccccexample"),
/// 			UserVaultOcid:       pulumi.String("ocid1.vaultsecret.oc1..ddddddddexample"),
/// 			InstrumentationType: pulumi.String("METRICS,LOGS"),
/// 			OciRegion:           pulumi.String("us-phoenix-1"),
/// 			MetricStackOcid:     pulumi.String("ocid1.stack.oc1..eeeeeeeeexample"),
/// 			LoggingStackOcid:    pulumi.String("ocid1.stack.oc1..ffffffloggingstack"),
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
/// import com.pulumi.newrelic.cloud.OciLinkAccount;
/// import com.pulumi.newrelic.cloud.OciLinkAccountArgs;
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
///         var full = new OciLinkAccount("full", OciLinkAccountArgs.builder()
///             .name("my-oci-link-full")
///             .tenantId("ocid1.tenancy.oc1..aaaaaaaaexample")
///             .compartmentOcid("ocid1.compartment.oc1..bbbbbbbbexample")
///             .ociClientId("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
///             .ociClientSecret(ociClientSecret)
///             .ociDomainUrl("https://idcs-1234567890abcdef.identity.oraclecloud.com")
///             .ociHomeRegion("us-ashburn-1")
///             .ingestVaultOcid("ocid1.vaultsecret.oc1..ccccccccexample")
///             .userVaultOcid("ocid1.vaultsecret.oc1..ddddddddexample")
///             .instrumentationType("METRICS,LOGS")
///             .ociRegion("us-phoenix-1")
///             .metricStackOcid("ocid1.stack.oc1..eeeeeeeeexample")
///             .loggingStackOcid("ocid1.stack.oc1..ffffffloggingstack")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   full:
///     type: newrelic:cloud:OciLinkAccount
///     properties:
///       name: my-oci-link-full
///       tenantId: ocid1.tenancy.oc1..aaaaaaaaexample
///       compartmentOcid: ocid1.compartment.oc1..bbbbbbbbexample
///       ociClientId: aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
///       ociClientSecret: ${ociClientSecret}
///       ociDomainUrl: https://idcs-1234567890abcdef.identity.oraclecloud.com
///       ociHomeRegion: us-ashburn-1
///       ingestVaultOcid: ocid1.vaultsecret.oc1..ccccccccexample
///       userVaultOcid: ocid1.vaultsecret.oc1..ddddddddexample
///       instrumentationType: METRICS,LOGS
///       ociRegion: us-phoenix-1
///       metricStackOcid: ocid1.stack.oc1..eeeeeeeeexample
///       loggingStackOcid: ocid1.stack.oc1..ffffffloggingstack
/// ```
///
///
/// ## Import
///
/// Linked OCI accounts can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_cloud_oci_link_account.foo <id>
/// ```
class OciLinkAccount extends pulumi.CustomResource {
  /// New Relic account to operate on. Overrides the provider-level `account_id`. If omitted, use the provider default or `NEW_RELIC_ACCOUNT_ID`.
  late final pulumi.Output<String> accountId;
  /// OCI compartment OCID representing (or containing) the monitored resources/newrelic compartment.
  late final pulumi.Output<String> compartmentOcid;
  /// Vault secret OCID containing an ingest secret.
  late final pulumi.Output<String?> ingestVaultOcid;
  /// Specifies the type of integration, such as metrics, logs, or a combination of logs and metrics (e.g., `METRICS`, `LOGS`, `METRICS,LOGS`).
  late final pulumi.Output<String?> instrumentationType;
  /// The Logging stack identifier for the OCI account.
  late final pulumi.Output<String?> loggingStackOcid;
  /// Metric stack OCID (ignored on create, applied on update).
  late final pulumi.Output<String?> metricStackOcid;
  /// Display name for the linked account.
  late final pulumi.Output<String> name;
  /// OCI Identity Domain (IDCS) OAuth2 client ID used for workload identity federation.
  late final pulumi.Output<String> ociClientId;
  /// OAuth2 client secret. Not displayed in plans or state outputs.
  late final pulumi.Output<String> ociClientSecret;
  /// Base URL of the OCI Identity Domain (e.g. `https://idcs-<hash>.identity.oraclecloud.com`).
  late final pulumi.Output<String> ociDomainUrl;
  /// Home region of the tenancy (e.g. `us-ashburn-1`).
  late final pulumi.Output<String> ociHomeRegion;
  /// OCI region for the linkage (ignored on create, applied on update).
  late final pulumi.Output<String?> ociRegion;
  /// OCI tenancy OCID (root tenancy). Changing forces a new linked account.
  late final pulumi.Output<String> tenantId;
  /// Vault secret OCID containing a user or auxiliary secret.
  late final pulumi.Output<String?> userVaultOcid;

  /// Creates a new [OciLinkAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OciLinkAccount]. {@macro pulumi_cloud_oci_link_account_oci_link_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OciLinkAccount(
    String name, {
    OciLinkAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/ociLinkAccount:OciLinkAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.compartmentOcid = registerOutput<String>('compartmentOcid');
    this.ingestVaultOcid = registerOutput<String?>('ingestVaultOcid');
    this.instrumentationType = registerOutput<String?>('instrumentationType');
    this.loggingStackOcid = registerOutput<String?>('loggingStackOcid');
    this.metricStackOcid = registerOutput<String?>('metricStackOcid');
    this.name = registerOutput<String>('name');
    this.ociClientId = registerOutput<String>('ociClientId');
    this.ociClientSecret = registerOutput<String>('ociClientSecret');
    this.ociDomainUrl = registerOutput<String>('ociDomainUrl');
    this.ociHomeRegion = registerOutput<String>('ociHomeRegion');
    this.ociRegion = registerOutput<String?>('ociRegion');
    this.tenantId = registerOutput<String>('tenantId');
    this.userVaultOcid = registerOutput<String?>('userVaultOcid');
  }
}
