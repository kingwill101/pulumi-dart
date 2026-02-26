import 'package:pulumi/pulumi.dart';
import '../cmek_config_single_region_key/cmek_config_single_region_key.dart';
import 'cmek_config_args.dart';

/// CmekConfig represents configurations used to enable CMEK data encryption with
/// Cloud KMS keys.
///
///
/// To get more information about CmekConfig, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.cmekConfigs)
///
/// ## Example Usage
///
/// ### Discoveryengine Cmekconfig Default
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
/// cryptoKeyId: "kms-key-name",
/// role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-discoveryengine.iam.gserviceaccount.com`),
/// });
/// const _default = new gcp.discoveryengine.CmekConfig("default", {
/// location: "us",
/// cmekConfigId: "cmek-config-id",
/// kmsKey: "kms-key-name",
/// }, {
/// dependsOn: [cryptoKey],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
/// crypto_key_id="kms-key-name",
/// role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member=f"serviceAccount:service-{project.number}@gcp-sa-discoveryengine.iam.gserviceaccount.com")
/// default = gcp.discoveryengine.CmekConfig("default",
/// location="us",
/// cmek_config_id="cmek-config-id",
/// kms_key="kms-key-name",
/// opts = pulumi.ResourceOptions(depends_on=[crypto_key]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
/// {
/// CryptoKeyId = "kms-key-name",
/// Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-discoveryengine.iam.gserviceaccount.com",
/// });
///
/// var @default = new Gcp.DiscoveryEngine.CmekConfig("default", new()
/// {
/// Location = "us",
/// CmekConfigId = "cmek-config-id",
/// KmsKey = "kms-key-name",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// cryptoKey,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// cryptoKey, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.String("kms-key-name"),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-discoveryengine.iam.gserviceaccount.com", project.Number),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = discoveryengine.NewCmekConfig(ctx, "default", &discoveryengine.CmekConfigArgs{
/// Location:     pulumi.String("us"),
/// CmekConfigId: pulumi.String("cmek-config-id"),
/// KmsKey:       pulumi.String("kms-key-name"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// cryptoKey,
/// }))
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.discoveryengine.CmekConfig;
/// import com.pulumi.gcp.discoveryengine.CmekConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId("kms-key-name")
/// .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
/// .member(String.format("serviceAccount:service-%s@gcp-sa-discoveryengine.iam.gserviceaccount.com", project.number()))
/// .build());
///
/// var default_ = new CmekConfig("default", CmekConfigArgs.builder()
/// .location("us")
/// .cmekConfigId("cmek-config-id")
/// .kmsKey("kms-key-name")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(cryptoKey)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:discoveryengine:CmekConfig
/// properties:
/// location: us
/// cmekConfigId: cmek-config-id
/// kmsKey: kms-key-name
/// options:
/// dependsOn:
/// - ${cryptoKey}
/// cryptoKey:
/// type: gcp:kms:CryptoKeyIAMMember
/// name: crypto_key
/// properties:
/// cryptoKeyId: kms-key-name
/// role: roles/cloudkms.cryptoKeyEncrypterDecrypter
/// member: serviceAccount:service-${project.number}@gcp-sa-discoveryengine.iam.gserviceaccount.com
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// CmekConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/cmekConfigs/{{cmek_config_id}}`
///
/// * `{{project}}/{{location}}/{{cmek_config_id}}`
///
/// * `{{location}}/{{cmek_config_id}}`
///
/// When using the `pulumi import` command, CmekConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/cmekConfig:CmekConfig default projects/{{project}}/locations/{{location}}/cmekConfigs/{{cmek_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/cmekConfig:CmekConfig default {{project}}/{{location}}/{{cmek_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/cmekConfig:CmekConfig default {{location}}/{{cmek_config_id}}
/// ```
class CmekConfig extends CustomResource {
  /// The unique id of the cmek config.
  late final Output<String> cmekConfigId;

  /// The default CmekConfig for the Customer.
  late final Output<bool> isDefault;

  /// KMS key resource name which will be used to encrypt resources
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  late final Output<String> kmsKey;

  /// KMS key version resource name which will be used to encrypt resources
  /// `<kms_key>/cryptoKeyVersions/{keyVersion}`.
  late final Output<String> kmsKeyVersion;

  /// The timestamp of the last key rotation.
  late final Output<int> lastRotationTimestampMicros;

  /// The geographic location where the CMEK config should reside. The value can
  /// only be one of "us" and "eu".
  late final Output<String> location;

  /// The unique full resource name of the cmek config. Values are of the format
  /// `projects/{project}/locations/{location}/cmekConfigs/{cmek_config_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final Output<String> name;

  /// Whether the NotebookLM Corpus is ready to be used.
  late final Output<String> notebooklmState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Set the following CmekConfig as the default to be used for child resources
  /// if one is not specified. The default value is true.
  late final Output<bool?> setDefault;

  /// Single-regional CMEKs that are required for some VAIS features.
  /// Structure is documented below.
  late final Output<List<CmekConfigSingleRegionKey>?> singleRegionKeys;

  /// The state of the CmekConfig.
  late final Output<String> state;

  CmekConfig(
    String name, {
    CmekConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/cmekConfig:CmekConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cmekConfigId = Output.createUnknown<String>();
    this.isDefault = Output.createUnknown<bool>();
    this.kmsKey = Output.createUnknown<String>();
    this.kmsKeyVersion = Output.createUnknown<String>();
    this.lastRotationTimestampMicros = Output.createUnknown<int>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notebooklmState = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.setDefault = Output.createUnknown<bool?>();
    this.singleRegionKeys =
        Output.createUnknown<List<CmekConfigSingleRegionKey>?>();
    this.state = Output.createUnknown<String>();
  }
}
