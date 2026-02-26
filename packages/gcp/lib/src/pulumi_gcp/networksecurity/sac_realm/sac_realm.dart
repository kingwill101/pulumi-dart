import 'package:pulumi/pulumi.dart';
import '../sac_realm_pairing_key/sac_realm_pairing_key.dart';
import '../sac_realm_symantec_options/sac_realm_symantec_options.dart';
import 'sac_realm_args.dart';

/// Secure Access Connect Realm resource
///
/// To get more information about SacRealm, see:
///
/// * [API documentation](https://cloud.google.com/secure-access-connect/docs/reference/network-security/rest/v1beta1/projects.locations.sacRealms)
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://cloud.google.com/secure-access-connect/docs/overview)
///
/// ## Example Usage
///
/// ### Sac Realm Prisma Access
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.SacRealm("default", {
/// name: "sac-realm-name",
/// labels: {
/// "label-one": "value-one",
/// },
/// securityService: "PALO_ALTO_PRISMA_ACCESS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.SacRealm("default",
/// name="sac-realm-name",
/// labels={
/// "label-one": "value-one",
/// },
/// security_service="PALO_ALTO_PRISMA_ACCESS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.NetworkSecurity.SacRealm("default", new()
/// {
/// Name = "sac-realm-name",
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// SecurityService = "PALO_ALTO_PRISMA_ACCESS",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networksecurity.NewSacRealm(ctx, "default", &networksecurity.SacRealmArgs{
/// Name: pulumi.String("sac-realm-name"),
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// SecurityService: pulumi.String("PALO_ALTO_PRISMA_ACCESS"),
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
/// import com.pulumi.gcp.networksecurity.SacRealm;
/// import com.pulumi.gcp.networksecurity.SacRealmArgs;
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
/// var default_ = new SacRealm("default", SacRealmArgs.builder()
/// .name("sac-realm-name")
/// .labels(Map.of("label-one", "value-one"))
/// .securityService("PALO_ALTO_PRISMA_ACCESS")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:SacRealm
/// properties:
/// name: sac-realm-name
/// labels:
/// label-one: value-one
/// securityService: PALO_ALTO_PRISMA_ACCESS
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Sac Realm Symantec Cloud Swg
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.SacRealm("default", {
/// name: "sac-realm-name",
/// labels: {
/// "label-one": "value-one",
/// },
/// securityService: "SYMANTEC_CLOUD_SWG",
/// symantecOptions: {
/// secretPath: "secret-path",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.SacRealm("default",
/// name="sac-realm-name",
/// labels={
/// "label-one": "value-one",
/// },
/// security_service="SYMANTEC_CLOUD_SWG",
/// symantec_options={
/// "secret_path": "secret-path",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.NetworkSecurity.SacRealm("default", new()
/// {
/// Name = "sac-realm-name",
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// SecurityService = "SYMANTEC_CLOUD_SWG",
/// SymantecOptions = new Gcp.NetworkSecurity.Inputs.SacRealmSymantecOptionsArgs
/// {
/// SecretPath = "secret-path",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networksecurity.NewSacRealm(ctx, "default", &networksecurity.SacRealmArgs{
/// Name: pulumi.String("sac-realm-name"),
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// SecurityService: pulumi.String("SYMANTEC_CLOUD_SWG"),
/// SymantecOptions: &networksecurity.SacRealmSymantecOptionsArgs{
/// SecretPath: pulumi.String("secret-path"),
/// },
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
/// import com.pulumi.gcp.networksecurity.SacRealm;
/// import com.pulumi.gcp.networksecurity.SacRealmArgs;
/// import com.pulumi.gcp.networksecurity.inputs.SacRealmSymantecOptionsArgs;
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
/// var default_ = new SacRealm("default", SacRealmArgs.builder()
/// .name("sac-realm-name")
/// .labels(Map.of("label-one", "value-one"))
/// .securityService("SYMANTEC_CLOUD_SWG")
/// .symantecOptions(SacRealmSymantecOptionsArgs.builder()
/// .secretPath("secret-path")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:SacRealm
/// properties:
/// name: sac-realm-name
/// labels:
/// label-one: value-one
/// securityService: SYMANTEC_CLOUD_SWG
/// symantecOptions:
/// secretPath: secret-path
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// SacRealm can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/sacRealms/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, SacRealm can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/sacRealm:SacRealm default projects/{{project}}/locations/global/sacRealms/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/sacRealm:SacRealm default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/sacRealm:SacRealm default {{name}}
/// ```
class SacRealm extends CustomResource {
  /// Timestamp when the realm was created.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Identifier. Resource name.
  late final Output<String> name;

  /// Key to be shared with SSE service provider during pairing.
  /// Structure is documented below.
  late final Output<List<SacRealmPairingKey>> pairingKeys;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// SSE service provider associated with the realm.
  /// Possible values are: `SECURITY_SERVICE_UNSPECIFIED`, `PALO_ALTO_PRISMA_ACCESS`, `SYMANTEC_CLOUD_SWG`.
  late final Output<String> securityService;

  /// State of the realm.
  late final Output<String> state;

  /// Configuration required for Symantec realms.
  /// Structure is documented below.
  late final Output<SacRealmSymantecOptions?> symantecOptions;

  /// Timestamp when the realm was last updated.
  late final Output<String> updateTime;

  SacRealm(
    String name, {
    SacRealmArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/sacRealm:SacRealm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.pairingKeys = registerOutput<List<SacRealmPairingKey>>('pairingKeys');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.securityService = registerOutput<String>('securityService');
    this.state = registerOutput<String>('state');
    this.symantecOptions =
        registerOutput<SacRealmSymantecOptions?>('symantecOptions');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
