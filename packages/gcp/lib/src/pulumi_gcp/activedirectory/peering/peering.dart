import 'package:pulumi/pulumi.dart';
import 'peering_args.dart';

/// Creates a Peering for Managed AD instance.
///
/// To get more information about Peering, see:
///
/// * [API documentation](https://cloud.google.com/managed-microsoft-ad/reference/rest/v1beta1/projects.locations.global.peerings)
/// * How-to Guides
/// * [Active Directory Domain Peering](https://cloud.google.com/managed-microsoft-ad/docs/domain-peering)
///
/// ## Example Usage
///
/// ### Active Directory Peering Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const source_network = new gcp.compute.Network("source-network", {name: "ad-network"});
/// const ad_domain = new gcp.activedirectory.Domain("ad-domain", {
/// domainName: "ad.test.hashicorptest.com",
/// locations: ["us-central1"],
/// reservedIpRange: "192.168.255.0/24",
/// authorizedNetworks: [source_network.id],
/// deletionProtection: false,
/// });
/// const peered_project = new gcp.organizations.Project("peered-project", {
/// name: "my-peered-project",
/// projectId: "my-peered-project",
/// orgId: "123456789",
/// billingAccount: "000000-0000000-0000000-000000",
/// deletionPolicy: "DELETE",
/// });
/// const compute = new gcp.projects.Service("compute", {
/// project: peered_project.projectId,
/// service: "compute.googleapis.com",
/// });
/// const peered_network = new gcp.compute.Network("peered-network", {
/// project: compute.project,
/// name: "ad-peered-network",
/// });
/// const ad_domain_peering = new gcp.activedirectory.Peering("ad-domain-peering", {
/// domainResource: ad_domain.name,
/// peeringId: "ad-domain-peering",
/// authorizedNetwork: peered_network.id,
/// deletionProtection: false,
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// source_network = gcp.compute.Network("source-network", name="ad-network")
/// ad_domain = gcp.activedirectory.Domain("ad-domain",
/// domain_name="ad.test.hashicorptest.com",
/// locations=["us-central1"],
/// reserved_ip_range="192.168.255.0/24",
/// authorized_networks=[source_network.id],
/// deletion_protection=False)
/// peered_project = gcp.organizations.Project("peered-project",
/// name="my-peered-project",
/// project_id="my-peered-project",
/// org_id="123456789",
/// billing_account="000000-0000000-0000000-000000",
/// deletion_policy="DELETE")
/// compute = gcp.projects.Service("compute",
/// project=peered_project.project_id,
/// service="compute.googleapis.com")
/// peered_network = gcp.compute.Network("peered-network",
/// project=compute.project,
/// name="ad-peered-network")
/// ad_domain_peering = gcp.activedirectory.Peering("ad-domain-peering",
/// domain_resource=ad_domain.name,
/// peering_id="ad-domain-peering",
/// authorized_network=peered_network.id,
/// deletion_protection=False,
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
/// var source_network = new Gcp.Compute.Network("source-network", new()
/// {
/// Name = "ad-network",
/// });
///
/// var ad_domain = new Gcp.ActiveDirectory.Domain("ad-domain", new()
/// {
/// DomainName = "ad.test.hashicorptest.com",
/// Locations = new[]
/// {
/// "us-central1",
/// },
/// ReservedIpRange = "192.168.255.0/24",
/// AuthorizedNetworks = new[]
/// {
/// source_network.Id,
/// },
/// DeletionProtection = false,
/// });
///
/// var peered_project = new Gcp.Organizations.Project("peered-project", new()
/// {
/// Name = "my-peered-project",
/// ProjectId = "my-peered-project",
/// OrgId = "123456789",
/// BillingAccount = "000000-0000000-0000000-000000",
/// DeletionPolicy = "DELETE",
/// });
///
/// var compute = new Gcp.Projects.Service("compute", new()
/// {
/// Project = peered_project.ProjectId,
/// ServiceName = "compute.googleapis.com",
/// });
///
/// var peered_network = new Gcp.Compute.Network("peered-network", new()
/// {
/// Project = compute.Project,
/// Name = "ad-peered-network",
/// });
///
/// var ad_domain_peering = new Gcp.ActiveDirectory.Peering("ad-domain-peering", new()
/// {
/// DomainResource = ad_domain.Name,
/// PeeringId = "ad-domain-peering",
/// AuthorizedNetwork = peered_network.Id,
/// DeletionProtection = false,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/activedirectory"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// source_network, err := compute.NewNetwork(ctx, "source-network", &compute.NetworkArgs{
/// Name: pulumi.String("ad-network"),
/// })
/// if err != nil {
/// return err
/// }
/// ad_domain, err := activedirectory.NewDomain(ctx, "ad-domain", &activedirectory.DomainArgs{
/// DomainName: pulumi.String("ad.test.hashicorptest.com"),
/// Locations: pulumi.StringArray{
/// pulumi.String("us-central1"),
/// },
/// ReservedIpRange: pulumi.String("192.168.255.0/24"),
/// AuthorizedNetworks: pulumi.StringArray{
/// source_network.ID(),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// peered_project, err := organizations.NewProject(ctx, "peered-project", &organizations.ProjectArgs{
/// Name:           pulumi.String("my-peered-project"),
/// ProjectId:      pulumi.String("my-peered-project"),
/// OrgId:          pulumi.String("123456789"),
/// BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// compute, err := projects.NewService(ctx, "compute", &projects.ServiceArgs{
/// Project: peered_project.ProjectId,
/// Service: pulumi.String("compute.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// peered_network, err := compute.NewNetwork(ctx, "peered-network", &compute.NetworkArgs{
/// Project: compute.Project,
/// Name:    pulumi.String("ad-peered-network"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = activedirectory.NewPeering(ctx, "ad-domain-peering", &activedirectory.PeeringArgs{
/// DomainResource:     ad_domain.Name,
/// PeeringId:          pulumi.String("ad-domain-peering"),
/// AuthorizedNetwork:  peered_network.ID(),
/// DeletionProtection: false,
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
/// import com.pulumi.gcp.activedirectory.Domain;
/// import com.pulumi.gcp.activedirectory.DomainArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.activedirectory.Peering;
/// import com.pulumi.gcp.activedirectory.PeeringArgs;
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
/// var source_network = new Network("source-network", NetworkArgs.builder()
/// .name("ad-network")
/// .build());
///
/// var ad_domain = new Domain("ad-domain", DomainArgs.builder()
/// .domainName("ad.test.hashicorptest.com")
/// .locations("us-central1")
/// .reservedIpRange("192.168.255.0/24")
/// .authorizedNetworks(source_network.id())
/// .deletionProtection(false)
/// .build());
///
/// var peered_project = new Project("peered-project", ProjectArgs.builder()
/// .name("my-peered-project")
/// .projectId("my-peered-project")
/// .orgId("123456789")
/// .billingAccount("000000-0000000-0000000-000000")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var compute = new Service("compute", ServiceArgs.builder()
/// .project(peered_project.projectId())
/// .service("compute.googleapis.com")
/// .build());
///
/// var peered_network = new Network("peered-network", NetworkArgs.builder()
/// .project(compute.project())
/// .name("ad-peered-network")
/// .build());
///
/// var ad_domain_peering = new Peering("ad-domain-peering", PeeringArgs.builder()
/// .domainResource(ad_domain.name())
/// .peeringId("ad-domain-peering")
/// .authorizedNetwork(peered_network.id())
/// .deletionProtection(false)
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ad-domain-peering:
/// type: gcp:activedirectory:Peering
/// properties:
/// domainResource: ${["ad-domain"].name}
/// peeringId: ad-domain-peering
/// authorizedNetwork: ${["peered-network"].id}
/// deletionProtection: false
/// labels:
/// foo: bar
/// ad-domain:
/// type: gcp:activedirectory:Domain
/// properties:
/// domainName: ad.test.hashicorptest.com
/// locations:
/// - us-central1
/// reservedIpRange: 192.168.255.0/24
/// authorizedNetworks:
/// - ${["source-network"].id}
/// deletionProtection: false
/// peered-network:
/// type: gcp:compute:Network
/// properties:
/// project: ${compute.project}
/// name: ad-peered-network
/// source-network:
/// type: gcp:compute:Network
/// properties:
/// name: ad-network
/// compute:
/// type: gcp:projects:Service
/// properties:
/// project: ${["peered-project"].projectId}
/// service: compute.googleapis.com
/// peered-project:
/// type: gcp:organizations:Project
/// properties:
/// name: my-peered-project
/// projectId: my-peered-project
/// orgId: '123456789'
/// billingAccount: 000000-0000000-0000000-000000
/// deletionPolicy: DELETE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// This resource does not support import.
class Peering extends CustomResource {
  /// The full names of the Google Compute Engine networks to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.
  late final Output<String> authorizedNetwork;

  /// Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form projects/{projectId}/locations/global/domains/{domainName}
  late final Output<String> domainResource;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Resource labels that can contain user-provided metadata
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Unique name of the peering in this scope including projects and location using the form: projects/{projectId}/locations/global/peerings/{peeringId}.
  late final Output<String> name;

  /// (Required)
  late final Output<String> peeringId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current state of this Peering.
  late final Output<String?> status;

  /// Additional information about the current status of this peering, if available.
  late final Output<String?> statusMessage;

  Peering(
    String name, {
    PeeringArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:activedirectory/peering:Peering',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authorizedNetwork = Output.createUnknown<String>();
    this.domainResource = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.peeringId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.status = Output.createUnknown<String?>();
    this.statusMessage = Output.createUnknown<String?>();
  }
}
