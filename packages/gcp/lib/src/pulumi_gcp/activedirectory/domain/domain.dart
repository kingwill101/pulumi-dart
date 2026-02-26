import 'package:pulumi/pulumi.dart';
import 'domain_args.dart';

/// Creates a Microsoft AD domain
///
///
/// To get more information about Domain, see:
///
/// * [API documentation](https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains)
/// * How-to Guides
/// * [Managed Microsoft Active Directory Quickstart](https://cloud.google.com/managed-microsoft-ad/docs/quickstarts)
///
/// ## Example Usage
///
/// ### Active Directory Domain Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const ad_domain = new gcp.activedirectory.Domain("ad-domain", {
/// domainName: "tfgen.org.com",
/// locations: ["us-central1"],
/// reservedIpRange: "192.168.255.0/24",
/// deletionProtection: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ad_domain = gcp.activedirectory.Domain("ad-domain",
/// domain_name="tfgen.org.com",
/// locations=["us-central1"],
/// reserved_ip_range="192.168.255.0/24",
/// deletion_protection=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ad_domain = new Gcp.ActiveDirectory.Domain("ad-domain", new()
/// {
/// DomainName = "tfgen.org.com",
/// Locations = new[]
/// {
/// "us-central1",
/// },
/// ReservedIpRange = "192.168.255.0/24",
/// DeletionProtection = false,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/activedirectory"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := activedirectory.NewDomain(ctx, "ad-domain", &activedirectory.DomainArgs{
/// DomainName: pulumi.String("tfgen.org.com"),
/// Locations: pulumi.StringArray{
/// pulumi.String("us-central1"),
/// },
/// ReservedIpRange:    pulumi.String("192.168.255.0/24"),
/// DeletionProtection: pulumi.Bool(false),
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
/// import com.pulumi.gcp.activedirectory.Domain;
/// import com.pulumi.gcp.activedirectory.DomainArgs;
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
/// var ad_domain = new Domain("ad-domain", DomainArgs.builder()
/// .domainName("tfgen.org.com")
/// .locations("us-central1")
/// .reservedIpRange("192.168.255.0/24")
/// .deletionProtection(false)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ad-domain:
/// type: gcp:activedirectory:Domain
/// properties:
/// domainName: tfgen.org.com
/// locations:
/// - us-central1
/// reservedIpRange: 192.168.255.0/24
/// deletionProtection: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Domain can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Domain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domain:Domain default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domain:Domain default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:activedirectory/domain:Domain default {{name}}
/// ```
class Domain extends CustomResource {
  /// The name of delegated administrator account used to perform Active Directory operations.
  /// If not specified, setupadmin will be used.
  late final Output<String?> admin;

  /// The full names of the Google Compute Engine networks the domain instance is connected to. The domain is only available on networks listed in authorizedNetworks.
  /// If CIDR subnets overlap between networks, domain creation will fail.
  late final Output<List<String>?> authorizedNetworks;
  late final Output<bool?> deletionProtection;

  /// The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions
  /// of https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  late final Output<String> domainName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The fully-qualified domain name of the exposed domain used by clients to connect to the service.
  /// Similar to what would be chosen for an Active Directory set up on an internal network.
  late final Output<String> fqdn;

  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Locations where domain needs to be provisioned. [regions][compute/docs/regions-zones/]
  /// e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  late final Output<List<String>> locations;

  /// The unique name of the domain using the format: `projects/{project}/locations/global/domains/{domainName}`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger.
  /// Ranges must be unique and non-overlapping with existing subnets in authorizedNetworks
  late final Output<String> reservedIpRange;

  Domain(
    String name, {
    DomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:activedirectory/domain:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.admin = Output.createUnknown<String?>();
    this.authorizedNetworks = Output.createUnknown<List<String>?>();
    this.deletionProtection = Output.createUnknown<bool?>();
    this.domainName = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.fqdn = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.locations = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.reservedIpRange = Output.createUnknown<String>();
  }
}
