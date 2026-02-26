import 'package:pulumi/pulumi.dart';
import 'kmsconfig_args.dart';

/// NetApp Volumes always encrypts your data at rest using volume-specific keys.
///
/// A CMEK policy (customer-managed encryption key) warps such volume-specific keys in a key stored in Cloud Key Management Service (KMS).
///
///
/// To get more information about kmsconfig, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.kmsConfigs)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/cmek/cmek-overview)
///
/// ## Example Usage
///
/// ### Kms Config Create
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const kmsConfig = new gcp.netapp.Kmsconfig("kmsConfig", {
/// name: "kms-test",
/// description: "this is a test description",
/// cryptoKeyName: "crypto-name",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// kms_config = gcp.netapp.Kmsconfig("kmsConfig",
/// name="kms-test",
/// description="this is a test description",
/// crypto_key_name="crypto-name",
/// location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var kmsConfig = new Gcp.Netapp.Kmsconfig("kmsConfig", new()
/// {
/// Name = "kms-test",
/// Description = "this is a test description",
/// CryptoKeyName = "crypto-name",
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := netapp.NewKmsconfig(ctx, "kmsConfig", &netapp.KmsconfigArgs{
/// Name:          pulumi.String("kms-test"),
/// Description:   pulumi.String("this is a test description"),
/// CryptoKeyName: pulumi.String("crypto-name"),
/// Location:      pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.netapp.Kmsconfig;
/// import com.pulumi.gcp.netapp.KmsconfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var kmsConfig = new Kmsconfig("kmsConfig", KmsconfigArgs.builder()
/// .name("kms-test")
/// .description("this is a test description")
/// .cryptoKeyName("crypto-name")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// kmsConfig:
/// type: gcp:netapp:Kmsconfig
/// properties:
/// name: kms-test
/// description: this is a test description
/// cryptoKeyName: crypto-name
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// kmsconfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, kmsconfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/kmsconfig:Kmsconfig default projects/{{project}}/locations/{{location}}/kmsConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/kmsconfig:Kmsconfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/kmsconfig:Kmsconfig default {{location}}/{{name}}
/// ```
class Kmsconfig extends CustomResource {
  /// Resource name of the KMS key to use. Only regional keys are supported. Format: `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}`.
  late final Output<String> cryptoKeyName;

  /// Description for the CMEK policy.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Access to the key needs to be granted. The instructions contain gcloud commands to run to grant access.
  /// To make the policy work, a CMEK policy check is required, which verifies key access.
  late final Output<String> instructions;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the policy location. CMEK policies apply to the whole region.
  late final Output<String> location;

  /// Name of the CMEK policy.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The Service account which needs to have access to the  provided KMS key.
  late final Output<String> serviceAccount;

  Kmsconfig(
    String name, {
    KmsconfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/kmsconfig:Kmsconfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cryptoKeyName = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.instructions = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.serviceAccount = Output.createUnknown<String>();
  }
}
