import 'package:pulumi/pulumi.dart';
import '../firewall_endpoint_endpoint_settings/firewall_endpoint_endpoint_settings.dart';
import 'firewall_endpoint_args.dart';

/// A Firewall endpoint is a Cloud Firewall resource that enables
/// layer 7 advanced protection capabilities, such as intrusion prevention,
/// in your network.
///
///
/// To get more information about FirewallEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/firewall/docs/reference/network-security/rest/v1/organizations.locations.firewallEndpoints)
/// * How-to Guides
/// * [Create and associate firewall endpoints](https://cloud.google.com/firewall/docs/configure-firewall-endpoints)
/// * [Firewall endpoint overview](https://cloud.google.com/firewall/docs/about-firewall-endpoints)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a <span pulumi-lang-nodejs="`billingProjectId`" pulumi-lang-dotnet="`BillingProjectId`" pulumi-lang-go="`billingProjectId`" pulumi-lang-python="`billing_project_id`" pulumi-lang-yaml="`billingProjectId`" pulumi-lang-java="`billingProjectId`">`billing_project_id`</span> and set <span pulumi-lang-nodejs="`userProjectOverride`" pulumi-lang-dotnet="`UserProjectOverride`" pulumi-lang-go="`userProjectOverride`" pulumi-lang-python="`user_project_override`" pulumi-lang-yaml="`userProjectOverride`" pulumi-lang-java="`userProjectOverride`">`user_project_override`</span> to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// <span pulumi-lang-nodejs="`billingProjectId`" pulumi-lang-dotnet="`BillingProjectId`" pulumi-lang-go="`billingProjectId`" pulumi-lang-python="`billing_project_id`" pulumi-lang-yaml="`billingProjectId`" pulumi-lang-java="`billingProjectId`">`billing_project_id`</span> you defined.
///
/// ## Example Usage
///
/// ### Network Security Firewall Endpoint Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.FirewallEndpoint("default", {
/// name: "my-firewall-endpoint",
/// parent: "organizations/123456789",
/// location: "us-central1-a",
/// billingProjectId: "my-project-name",
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.FirewallEndpoint("default",
/// name="my-firewall-endpoint",
/// parent="organizations/123456789",
/// location="us-central1-a",
/// billing_project_id="my-project-name",
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
/// var @default = new Gcp.NetworkSecurity.FirewallEndpoint("default", new()
/// {
/// Name = "my-firewall-endpoint",
/// Parent = "organizations/123456789",
/// Location = "us-central1-a",
/// BillingProjectId = "my-project-name",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networksecurity.NewFirewallEndpoint(ctx, "default", &networksecurity.FirewallEndpointArgs{
/// Name:             pulumi.String("my-firewall-endpoint"),
/// Parent:           pulumi.String("organizations/123456789"),
/// Location:         pulumi.String("us-central1-a"),
/// BillingProjectId: pulumi.String("my-project-name"),
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
/// import com.pulumi.gcp.networksecurity.FirewallEndpoint;
/// import com.pulumi.gcp.networksecurity.FirewallEndpointArgs;
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
/// var default_ = new FirewallEndpoint("default", FirewallEndpointArgs.builder()
/// .name("my-firewall-endpoint")
/// .parent("organizations/123456789")
/// .location("us-central1-a")
/// .billingProjectId("my-project-name")
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:FirewallEndpoint
/// properties:
/// name: my-firewall-endpoint
/// parent: organizations/123456789
/// location: us-central1-a
/// billingProjectId: my-project-name
/// labels:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// FirewallEndpoint can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/firewallEndpoints/{{name}}`
///
/// When using the `pulumi import` command, FirewallEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/firewallEndpoint:FirewallEndpoint default {{parent}}/locations/{{location}}/firewallEndpoints/{{name}}
/// ```
class FirewallEndpoint extends CustomResource {
  /// List of networks that are associated with this endpoint in the local zone.
  /// This is a projection of the FirewallEndpointAssociations pointing at this
  /// endpoint. A network will only appear in this list after traffic routing is
  /// fully configured. Format: projects/{project}/global/networks/{name}.
  late final Output<List<String>> associatedNetworks;

  /// Project to bill on endpoint uptime usage.
  late final Output<String> billingProjectId;

  /// Time the firewall endpoint was created in UTC.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Settings for the endpoint.
  /// Structure is documented below.
  late final Output<FirewallEndpointEndpointSettings?> endpointSettings;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location (zone) of the firewall endpoint.
  late final Output<String> location;

  /// The name of the firewall endpoint resource.
  late final Output<String> name;

  /// The name of the parent this firewall endpoint belongs to.
  /// Format: organizations/{organization_id}.
  late final Output<String> parent;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  late final Output<bool> reconciling;

  /// Server-defined URL of this resource.
  late final Output<String> selfLink;

  /// The current state of the endpoint.
  late final Output<String> state;

  /// Time the firewall endpoint was updated in UTC.
  late final Output<String> updateTime;

  FirewallEndpoint(
    String name, {
    FirewallEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/firewallEndpoint:FirewallEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.associatedNetworks = Output.createUnknown<List<String>>();
    this.billingProjectId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.endpointSettings =
        Output.createUnknown<FirewallEndpointEndpointSettings?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parent = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.reconciling = Output.createUnknown<bool>();
    this.selfLink = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
