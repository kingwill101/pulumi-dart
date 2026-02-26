import 'package:pulumi/pulumi.dart';
import '../target_server_ssl_info/target_server_ssl_info.dart';
import 'target_server_args.dart';

/// TargetServer configuration. TargetServers are used to decouple a proxy TargetEndpoint HTTPTargetConnections from concrete URLs for backend services.
///
///
/// To get more information about TargetServer, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.targetservers/create)
/// * How-to Guides
/// * [Load balancing across backend servers](https://cloud.google.com/apigee/docs/api-platform/deploy/load-balancing-across-backend-servers)
///
/// ## Example Usage
///
/// ### Apigee Target Server Test Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
/// projectId: "my-project",
/// name: "my-project",
/// orgId: "123456789",
/// billingAccount: "000000-0000000-0000000-000000",
/// deletionPolicy: "DELETE",
/// });
/// const apigee = new gcp.projects.Service("apigee", {
/// project: project.projectId,
/// service: "apigee.googleapis.com",
/// });
/// const servicenetworking = new gcp.projects.Service("servicenetworking", {
/// project: project.projectId,
/// service: "servicenetworking.googleapis.com",
/// }, {
/// dependsOn: [apigee],
/// });
/// const compute = new gcp.projects.Service("compute", {
/// project: project.projectId,
/// service: "compute.googleapis.com",
/// }, {
/// dependsOn: [servicenetworking],
/// });
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {
/// name: "apigee-network",
/// project: project.projectId,
/// }, {
/// dependsOn: [compute],
/// });
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
/// name: "apigee-range",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 16,
/// network: apigeeNetwork.id,
/// project: project.projectId,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
/// network: apigeeNetwork.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [apigeeRange.name],
/// }, {
/// dependsOn: [servicenetworking],
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
/// analyticsRegion: "us-central1",
/// projectId: project.projectId,
/// authorizedNetwork: apigeeNetwork.id,
/// }, {
/// dependsOn: [
/// apigeeVpcConnection,
/// apigee,
/// ],
/// });
/// const apigeeEnvironment = new gcp.apigee.Environment("apigee_environment", {
/// orgId: apigeeOrg.id,
/// name: "my-environment-name",
/// description: "Apigee Environment",
/// displayName: "environment-1",
/// });
/// const apigeeTargetServer = new gcp.apigee.TargetServer("apigee_target_server", {
/// name: "my-target-server",
/// description: "Apigee Target Server",
/// protocol: "HTTP",
/// host: "abc.foo.com",
/// port: 8080,
/// envId: apigeeEnvironment.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
/// project_id="my-project",
/// name="my-project",
/// org_id="123456789",
/// billing_account="000000-0000000-0000000-000000",
/// deletion_policy="DELETE")
/// apigee = gcp.projects.Service("apigee",
/// project=project.project_id,
/// service="apigee.googleapis.com")
/// servicenetworking = gcp.projects.Service("servicenetworking",
/// project=project.project_id,
/// service="servicenetworking.googleapis.com",
/// opts = pulumi.ResourceOptions(depends_on=[apigee]))
/// compute = gcp.projects.Service("compute",
/// project=project.project_id,
/// service="compute.googleapis.com",
/// opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// apigee_network = gcp.compute.Network("apigee_network",
/// name="apigee-network",
/// project=project.project_id,
/// opts = pulumi.ResourceOptions(depends_on=[compute]))
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
/// name="apigee-range",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=16,
/// network=apigee_network.id,
/// project=project.project_id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
/// network=apigee_network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[apigee_range.name],
/// opts = pulumi.ResourceOptions(depends_on=[servicenetworking]))
/// apigee_org = gcp.apigee.Organization("apigee_org",
/// analytics_region="us-central1",
/// project_id=project.project_id,
/// authorized_network=apigee_network.id,
/// opts = pulumi.ResourceOptions(depends_on=[
/// apigee_vpc_connection,
/// apigee,
/// ]))
/// apigee_environment = gcp.apigee.Environment("apigee_environment",
/// org_id=apigee_org.id,
/// name="my-environment-name",
/// description="Apigee Environment",
/// display_name="environment-1")
/// apigee_target_server = gcp.apigee.TargetServer("apigee_target_server",
/// name="my-target-server",
/// description="Apigee Target Server",
/// protocol="HTTP",
/// host="abc.foo.com",
/// port=8080,
/// env_id=apigee_environment.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Organizations.Project("project", new()
/// {
/// ProjectId = "my-project",
/// Name = "my-project",
/// OrgId = "123456789",
/// BillingAccount = "000000-0000000-0000000-000000",
/// DeletionPolicy = "DELETE",
/// });
///
/// var apigee = new Gcp.Projects.Service("apigee", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "apigee.googleapis.com",
/// });
///
/// var servicenetworking = new Gcp.Projects.Service("servicenetworking", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "servicenetworking.googleapis.com",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apigee,
/// },
/// });
///
/// var compute = new Gcp.Projects.Service("compute", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "compute.googleapis.com",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// servicenetworking,
/// },
/// });
///
/// var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
/// {
/// Name = "apigee-network",
/// Project = project.ProjectId,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// compute,
/// },
/// });
///
/// var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
/// {
/// Name = "apigee-range",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 16,
/// Network = apigeeNetwork.Id,
/// Project = project.ProjectId,
/// });
///
/// var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
/// {
/// Network = apigeeNetwork.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// apigeeRange.Name,
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// servicenetworking,
/// },
/// });
///
/// var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
/// {
/// AnalyticsRegion = "us-central1",
/// ProjectId = project.ProjectId,
/// AuthorizedNetwork = apigeeNetwork.Id,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apigeeVpcConnection,
/// apigee,
/// },
/// });
///
/// var apigeeEnvironment = new Gcp.Apigee.Environment("apigee_environment", new()
/// {
/// OrgId = apigeeOrg.Id,
/// Name = "my-environment-name",
/// Description = "Apigee Environment",
/// DisplayName = "environment-1",
/// });
///
/// var apigeeTargetServer = new Gcp.Apigee.TargetServer("apigee_target_server", new()
/// {
/// Name = "my-target-server",
/// Description = "Apigee Target Server",
/// Protocol = "HTTP",
/// Host = "abc.foo.com",
/// Port = 8080,
/// EnvId = apigeeEnvironment.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("my-project"),
/// Name:           pulumi.String("my-project"),
/// OrgId:          pulumi.String("123456789"),
/// BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// apigee, err := projects.NewService(ctx, "apigee", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("apigee.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// servicenetworking, err := projects.NewService(ctx, "servicenetworking", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apigee,
/// }))
/// if err != nil {
/// return err
/// }
/// compute, err := projects.NewService(ctx, "compute", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("compute.googleapis.com"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// servicenetworking,
/// }))
/// if err != nil {
/// return err
/// }
/// apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// Name:    pulumi.String("apigee-network"),
/// Project: project.ProjectId,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// compute,
/// }))
/// if err != nil {
/// return err
/// }
/// apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("apigee-range"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(16),
/// Network:      apigeeNetwork.ID(),
/// Project:      project.ProjectId,
/// })
/// if err != nil {
/// return err
/// }
/// apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: apigeeNetwork.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// apigeeRange.Name,
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// servicenetworking,
/// }))
/// if err != nil {
/// return err
/// }
/// apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// AnalyticsRegion:   pulumi.String("us-central1"),
/// ProjectId:         project.ProjectId,
/// AuthorizedNetwork: apigeeNetwork.ID(),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apigeeVpcConnection,
/// apigee,
/// }))
/// if err != nil {
/// return err
/// }
/// apigeeEnvironment, err := apigee.NewEnvironment(ctx, "apigee_environment", &apigee.EnvironmentArgs{
/// OrgId:       apigeeOrg.ID(),
/// Name:        pulumi.String("my-environment-name"),
/// Description: pulumi.String("Apigee Environment"),
/// DisplayName: pulumi.String("environment-1"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigee.NewTargetServer(ctx, "apigee_target_server", &apigee.TargetServerArgs{
/// Name:        pulumi.String("my-target-server"),
/// Description: pulumi.String("Apigee Target Server"),
/// Protocol:    pulumi.String("HTTP"),
/// Host:        pulumi.String("abc.foo.com"),
/// Port:        pulumi.Int(8080),
/// EnvId:       apigeeEnvironment.ID(),
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.Environment;
/// import com.pulumi.gcp.apigee.EnvironmentArgs;
/// import com.pulumi.gcp.apigee.TargetServer;
/// import com.pulumi.gcp.apigee.TargetServerArgs;
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
/// var project = new Project("project", ProjectArgs.builder()
/// .projectId("my-project")
/// .name("my-project")
/// .orgId("123456789")
/// .billingAccount("000000-0000000-0000000-000000")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var apigee = new Service("apigee", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("apigee.googleapis.com")
/// .build());
///
/// var servicenetworking = new Service("servicenetworking", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("servicenetworking.googleapis.com")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(apigee)
/// .build());
///
/// var compute = new Service("compute", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("compute.googleapis.com")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(servicenetworking)
/// .build());
///
/// var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
/// .name("apigee-network")
/// .project(project.projectId())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(compute)
/// .build());
///
/// var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
/// .name("apigee-range")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(16)
/// .network(apigeeNetwork.id())
/// .project(project.projectId())
/// .build());
///
/// var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
/// .network(apigeeNetwork.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(apigeeRange.name())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(servicenetworking)
/// .build());
///
/// var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
/// .analyticsRegion("us-central1")
/// .projectId(project.projectId())
/// .authorizedNetwork(apigeeNetwork.id())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// apigeeVpcConnection,
/// apigee)
/// .build());
///
/// var apigeeEnvironment = new Environment("apigeeEnvironment", EnvironmentArgs.builder()
/// .orgId(apigeeOrg.id())
/// .name("my-environment-name")
/// .description("Apigee Environment")
/// .displayName("environment-1")
/// .build());
///
/// var apigeeTargetServer = new TargetServer("apigeeTargetServer", TargetServerArgs.builder()
/// .name("my-target-server")
/// .description("Apigee Target Server")
/// .protocol("HTTP")
/// .host("abc.foo.com")
/// .port(8080)
/// .envId(apigeeEnvironment.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:organizations:Project
/// properties:
/// projectId: my-project
/// name: my-project
/// orgId: '123456789'
/// billingAccount: 000000-0000000-0000000-000000
/// deletionPolicy: DELETE
/// apigee:
/// type: gcp:projects:Service
/// properties:
/// project: ${project.projectId}
/// service: apigee.googleapis.com
/// servicenetworking:
/// type: gcp:projects:Service
/// properties:
/// project: ${project.projectId}
/// service: servicenetworking.googleapis.com
/// options:
/// dependsOn:
/// - ${apigee}
/// compute:
/// type: gcp:projects:Service
/// properties:
/// project: ${project.projectId}
/// service: compute.googleapis.com
/// options:
/// dependsOn:
/// - ${servicenetworking}
/// apigeeNetwork:
/// type: gcp:compute:Network
/// name: apigee_network
/// properties:
/// name: apigee-network
/// project: ${project.projectId}
/// options:
/// dependsOn:
/// - ${compute}
/// apigeeRange:
/// type: gcp:compute:GlobalAddress
/// name: apigee_range
/// properties:
/// name: apigee-range
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 16
/// network: ${apigeeNetwork.id}
/// project: ${project.projectId}
/// apigeeVpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: apigee_vpc_connection
/// properties:
/// network: ${apigeeNetwork.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${apigeeRange.name}
/// options:
/// dependsOn:
/// - ${servicenetworking}
/// apigeeOrg:
/// type: gcp:apigee:Organization
/// name: apigee_org
/// properties:
/// analyticsRegion: us-central1
/// projectId: ${project.projectId}
/// authorizedNetwork: ${apigeeNetwork.id}
/// options:
/// dependsOn:
/// - ${apigeeVpcConnection}
/// - ${apigee}
/// apigeeEnvironment:
/// type: gcp:apigee:Environment
/// name: apigee_environment
/// properties:
/// orgId: ${apigeeOrg.id}
/// name: my-environment-name
/// description: Apigee Environment
/// displayName: environment-1
/// apigeeTargetServer:
/// type: gcp:apigee:TargetServer
/// name: apigee_target_server
/// properties:
/// name: my-target-server
/// description: Apigee Target Server
/// protocol: HTTP
/// host: abc.foo.com
/// port: 8080
/// envId: ${apigeeEnvironment.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// TargetServer can be imported using any of these accepted formats:
///
/// * `{{env_id}}/targetservers/{{name}}`
///
/// * `{{env_id}}/{{name}}`
///
/// When using the `pulumi import` command, TargetServer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/targetServer:TargetServer default {{env_id}}/targetservers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/targetServer:TargetServer default {{env_id}}/{{name}}
/// ```
class TargetServer extends CustomResource {
  /// A human-readable description of this TargetServer.
  late final Output<String?> description;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final Output<String> envId;

  /// The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  late final Output<String> host;

  /// Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.
  late final Output<bool?> isEnabled;

  /// The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  late final Output<String> name;

  /// The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  late final Output<int> port;

  /// Immutable. The protocol used by this TargetServer.
  /// Possible values are: `HTTP`, `HTTP2`, `GRPC_TARGET`, `GRPC`, `EXTERNAL_CALLOUT`.
  late final Output<String> protocol;

  /// Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.
  /// Structure is documented below.
  late final Output<TargetServerSSlInfo?> sSlInfo;

  TargetServer(
    String name, {
    TargetServerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/targetServer:TargetServer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.envId = registerOutput<String>('envId');
    this.host = registerOutput<String>('host');
    this.isEnabled = registerOutput<bool?>('isEnabled');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int>('port');
    this.protocol = registerOutput<String>('protocol');
    this.sSlInfo = registerOutput<TargetServerSSlInfo?>('sSlInfo');
  }
}
