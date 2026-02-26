import 'package:pulumi/pulumi.dart';
import 'dns_threat_detector_args.dart';

/// DNS Armor is a fully-managed service that provides DNS-layer security for your Google Cloud workloads.
///
///
/// To get more information about DnsThreatDetector, see:
///
/// * [API documentation](https://cloud.google.com/dns/docs/create-threat-detector)
/// * How-to Guides
/// * [DNS Threat Detector](https://cloud.google.com/dns/docs/threat-detection)
///
/// ## Example Usage
///
/// ### Network Security Dns Threat Detector Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.Network("foobar", {
/// name: "my-vpc",
/// autoCreateSubnetworks: false,
/// });
/// const _default = new gcp.networksecurity.DnsThreatDetector("default", {
/// name: "my-threat-detector",
/// location: "global",
/// threatDetectorProvider: "INFOBLOX",
/// excludedNetworks: [foobar.id],
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.Network("foobar",
/// name="my-vpc",
/// auto_create_subnetworks=False)
/// default = gcp.networksecurity.DnsThreatDetector("default",
/// name="my-threat-detector",
/// location="global",
/// threat_detector_provider="INFOBLOX",
/// excluded_networks=[foobar.id],
/// labels={
/// "foo": "bar",
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
/// var foobar = new Gcp.Compute.Network("foobar", new()
/// {
/// Name = "my-vpc",
/// AutoCreateSubnetworks = false,
/// });
///
/// var @default = new Gcp.NetworkSecurity.DnsThreatDetector("default", new()
/// {
/// Name = "my-threat-detector",
/// Location = "global",
/// ThreatDetectorProvider = "INFOBLOX",
/// ExcludedNetworks = new[]
/// {
/// foobar.Id,
/// },
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// foobar, err := compute.NewNetwork(ctx, "foobar", &compute.NetworkArgs{
/// Name:                  pulumi.String("my-vpc"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networksecurity.NewDnsThreatDetector(ctx, "default", &networksecurity.DnsThreatDetectorArgs{
/// Name:                   pulumi.String("my-threat-detector"),
/// Location:               pulumi.String("global"),
/// ThreatDetectorProvider: pulumi.String("INFOBLOX"),
/// ExcludedNetworks: pulumi.StringArray{
/// foobar.ID(),
/// },
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.networksecurity.DnsThreatDetector;
/// import com.pulumi.gcp.networksecurity.DnsThreatDetectorArgs;
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
/// var foobar = new Network("foobar", NetworkArgs.builder()
/// .name("my-vpc")
/// .autoCreateSubnetworks(false)
/// .build());
///
/// var default_ = new DnsThreatDetector("default", DnsThreatDetectorArgs.builder()
/// .name("my-threat-detector")
/// .location("global")
/// .threatDetectorProvider("INFOBLOX")
/// .excludedNetworks(foobar.id())
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: gcp:compute:Network
/// properties:
/// name: my-vpc
/// autoCreateSubnetworks: false
/// default:
/// type: gcp:networksecurity:DnsThreatDetector
/// properties:
/// name: my-threat-detector
/// location: global
/// threatDetectorProvider: INFOBLOX
/// excludedNetworks:
/// - ${foobar.id}
/// labels:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// DnsThreatDetector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dnsThreatDetectors/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, DnsThreatDetector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default projects/{{project}}/locations/{{location}}/dnsThreatDetectors/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default {{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/dnsThreatDetector:DnsThreatDetector default {{name}}
/// ```
class DnsThreatDetector extends CustomResource {
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// List of networks that are excluded from detection. Format: projects/{project}/global/networks/{name}.
  late final Output<List<String>?> excludedNetworks;

  /// Set of label tags associated with the DNS Threat Detector resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the DNS Threat Detector. The only supported value is <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  late final Output<String?> location;

  /// Name of the DnsThreatDetector resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// DNS Threat Detection provider. The only supported value is `INFOBLOX`.
  late final Output<String?> threatDetectorProvider;

  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  DnsThreatDetector(
    String name, {
    DnsThreatDetectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/dnsThreatDetector:DnsThreatDetector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.excludedNetworks = Output.createUnknown<List<String>?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.threatDetectorProvider = Output.createUnknown<String?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
