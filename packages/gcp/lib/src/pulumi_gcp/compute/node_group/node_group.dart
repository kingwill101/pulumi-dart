import 'package:pulumi/pulumi.dart';
import '../node_group_autoscaling_policy/node_group_autoscaling_policy.dart';
import '../node_group_maintenance_window/node_group_maintenance_window.dart';
import '../node_group_share_settings/node_group_share_settings.dart';
import 'node_group_args.dart';

/// Represents a NodeGroup resource to manage a group of sole-tenant nodes.
///
///
/// To get more information about NodeGroup, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups)
/// * How-to Guides
/// * [Sole-Tenant Nodes](https://cloud.google.com/compute/docs/nodes/)
///
/// > **Warning:** Due to limitations of the API, this provider cannot update the
/// number of nodes in a node group and changes to node group size either
/// through provider config or through external changes will cause
/// the provider to delete and recreate the node group.
///
/// ## Example Usage
///
/// ### Node Group Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const soletenant_tmpl = new gcp.compute.NodeTemplate("soletenant-tmpl", {
/// name: "soletenant-tmpl",
/// region: "us-central1",
/// nodeType: "n1-node-96-624",
/// });
/// const nodes = new gcp.compute.NodeGroup("nodes", {
/// name: "soletenant-group",
/// zone: "us-central1-a",
/// description: "example google_compute_node_group for the Google Provider",
/// initialSize: 1,
/// nodeTemplate: soletenant_tmpl.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// soletenant_tmpl = gcp.compute.NodeTemplate("soletenant-tmpl",
/// name="soletenant-tmpl",
/// region="us-central1",
/// node_type="n1-node-96-624")
/// nodes = gcp.compute.NodeGroup("nodes",
/// name="soletenant-group",
/// zone="us-central1-a",
/// description="example google_compute_node_group for the Google Provider",
/// initial_size=1,
/// node_template=soletenant_tmpl.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var soletenant_tmpl = new Gcp.Compute.NodeTemplate("soletenant-tmpl", new()
/// {
/// Name = "soletenant-tmpl",
/// Region = "us-central1",
/// NodeType = "n1-node-96-624",
/// });
///
/// var nodes = new Gcp.Compute.NodeGroup("nodes", new()
/// {
/// Name = "soletenant-group",
/// Zone = "us-central1-a",
/// Description = "example google_compute_node_group for the Google Provider",
/// InitialSize = 1,
/// NodeTemplate = soletenant_tmpl.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// soletenant_tmpl, err := compute.NewNodeTemplate(ctx, "soletenant-tmpl", &compute.NodeTemplateArgs{
/// Name:     pulumi.String("soletenant-tmpl"),
/// Region:   pulumi.String("us-central1"),
/// NodeType: pulumi.String("n1-node-96-624"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNodeGroup(ctx, "nodes", &compute.NodeGroupArgs{
/// Name:         pulumi.String("soletenant-group"),
/// Zone:         pulumi.String("us-central1-a"),
/// Description:  pulumi.String("example google_compute_node_group for the Google Provider"),
/// InitialSize:  pulumi.Int(1),
/// NodeTemplate: soletenant_tmpl.ID(),
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
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.NodeGroup;
/// import com.pulumi.gcp.compute.NodeGroupArgs;
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
/// var soletenant_tmpl = new NodeTemplate("soletenant-tmpl", NodeTemplateArgs.builder()
/// .name("soletenant-tmpl")
/// .region("us-central1")
/// .nodeType("n1-node-96-624")
/// .build());
///
/// var nodes = new NodeGroup("nodes", NodeGroupArgs.builder()
/// .name("soletenant-group")
/// .zone("us-central1-a")
/// .description("example google_compute_node_group for the Google Provider")
/// .initialSize(1)
/// .nodeTemplate(soletenant_tmpl.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// soletenant-tmpl:
/// type: gcp:compute:NodeTemplate
/// properties:
/// name: soletenant-tmpl
/// region: us-central1
/// nodeType: n1-node-96-624
/// nodes:
/// type: gcp:compute:NodeGroup
/// properties:
/// name: soletenant-group
/// zone: us-central1-a
/// description: example google_compute_node_group for the Google Provider
/// initialSize: 1
/// nodeTemplate: ${["soletenant-tmpl"].id}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Node Group Maintenance Interval
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const soletenant_tmpl = new gcp.compute.NodeTemplate("soletenant-tmpl", {
/// name: "soletenant-tmpl",
/// region: "us-central1",
/// nodeType: "c2-node-60-240",
/// });
/// const nodes = new gcp.compute.NodeGroup("nodes", {
/// name: "soletenant-group",
/// zone: "us-central1-a",
/// description: "example google_compute_node_group for Terraform Google Provider",
/// initialSize: 1,
/// nodeTemplate: soletenant_tmpl.id,
/// maintenanceInterval: "RECURRENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// soletenant_tmpl = gcp.compute.NodeTemplate("soletenant-tmpl",
/// name="soletenant-tmpl",
/// region="us-central1",
/// node_type="c2-node-60-240")
/// nodes = gcp.compute.NodeGroup("nodes",
/// name="soletenant-group",
/// zone="us-central1-a",
/// description="example google_compute_node_group for Terraform Google Provider",
/// initial_size=1,
/// node_template=soletenant_tmpl.id,
/// maintenance_interval="RECURRENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var soletenant_tmpl = new Gcp.Compute.NodeTemplate("soletenant-tmpl", new()
/// {
/// Name = "soletenant-tmpl",
/// Region = "us-central1",
/// NodeType = "c2-node-60-240",
/// });
///
/// var nodes = new Gcp.Compute.NodeGroup("nodes", new()
/// {
/// Name = "soletenant-group",
/// Zone = "us-central1-a",
/// Description = "example google_compute_node_group for Terraform Google Provider",
/// InitialSize = 1,
/// NodeTemplate = soletenant_tmpl.Id,
/// MaintenanceInterval = "RECURRENT",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// soletenant_tmpl, err := compute.NewNodeTemplate(ctx, "soletenant-tmpl", &compute.NodeTemplateArgs{
/// Name:     pulumi.String("soletenant-tmpl"),
/// Region:   pulumi.String("us-central1"),
/// NodeType: pulumi.String("c2-node-60-240"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNodeGroup(ctx, "nodes", &compute.NodeGroupArgs{
/// Name:                pulumi.String("soletenant-group"),
/// Zone:                pulumi.String("us-central1-a"),
/// Description:         pulumi.String("example google_compute_node_group for Terraform Google Provider"),
/// InitialSize:         pulumi.Int(1),
/// NodeTemplate:        soletenant_tmpl.ID(),
/// MaintenanceInterval: pulumi.String("RECURRENT"),
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
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.NodeGroup;
/// import com.pulumi.gcp.compute.NodeGroupArgs;
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
/// var soletenant_tmpl = new NodeTemplate("soletenant-tmpl", NodeTemplateArgs.builder()
/// .name("soletenant-tmpl")
/// .region("us-central1")
/// .nodeType("c2-node-60-240")
/// .build());
///
/// var nodes = new NodeGroup("nodes", NodeGroupArgs.builder()
/// .name("soletenant-group")
/// .zone("us-central1-a")
/// .description("example google_compute_node_group for Terraform Google Provider")
/// .initialSize(1)
/// .nodeTemplate(soletenant_tmpl.id())
/// .maintenanceInterval("RECURRENT")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// soletenant-tmpl:
/// type: gcp:compute:NodeTemplate
/// properties:
/// name: soletenant-tmpl
/// region: us-central1
/// nodeType: c2-node-60-240
/// nodes:
/// type: gcp:compute:NodeGroup
/// properties:
/// name: soletenant-group
/// zone: us-central1-a
/// description: example google_compute_node_group for Terraform Google Provider
/// initialSize: 1
/// nodeTemplate: ${["soletenant-tmpl"].id}
/// maintenanceInterval: RECURRENT
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Node Group Autoscaling Policy
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const soletenant_tmpl = new gcp.compute.NodeTemplate("soletenant-tmpl", {
/// name: "soletenant-tmpl",
/// region: "us-central1",
/// nodeType: "n1-node-96-624",
/// });
/// const nodes = new gcp.compute.NodeGroup("nodes", {
/// name: "soletenant-group",
/// zone: "us-central1-a",
/// description: "example google_compute_node_group for Google Provider",
/// maintenancePolicy: "RESTART_IN_PLACE",
/// maintenanceWindow: {
/// startTime: "08:00",
/// },
/// initialSize: 1,
/// nodeTemplate: soletenant_tmpl.id,
/// autoscalingPolicy: {
/// mode: "ONLY_SCALE_OUT",
/// minNodes: 1,
/// maxNodes: 10,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// soletenant_tmpl = gcp.compute.NodeTemplate("soletenant-tmpl",
/// name="soletenant-tmpl",
/// region="us-central1",
/// node_type="n1-node-96-624")
/// nodes = gcp.compute.NodeGroup("nodes",
/// name="soletenant-group",
/// zone="us-central1-a",
/// description="example google_compute_node_group for Google Provider",
/// maintenance_policy="RESTART_IN_PLACE",
/// maintenance_window={
/// "start_time": "08:00",
/// },
/// initial_size=1,
/// node_template=soletenant_tmpl.id,
/// autoscaling_policy={
/// "mode": "ONLY_SCALE_OUT",
/// "min_nodes": 1,
/// "max_nodes": 10,
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
/// var soletenant_tmpl = new Gcp.Compute.NodeTemplate("soletenant-tmpl", new()
/// {
/// Name = "soletenant-tmpl",
/// Region = "us-central1",
/// NodeType = "n1-node-96-624",
/// });
///
/// var nodes = new Gcp.Compute.NodeGroup("nodes", new()
/// {
/// Name = "soletenant-group",
/// Zone = "us-central1-a",
/// Description = "example google_compute_node_group for Google Provider",
/// MaintenancePolicy = "RESTART_IN_PLACE",
/// MaintenanceWindow = new Gcp.Compute.Inputs.NodeGroupMaintenanceWindowArgs
/// {
/// StartTime = "08:00",
/// },
/// InitialSize = 1,
/// NodeTemplate = soletenant_tmpl.Id,
/// AutoscalingPolicy = new Gcp.Compute.Inputs.NodeGroupAutoscalingPolicyArgs
/// {
/// Mode = "ONLY_SCALE_OUT",
/// MinNodes = 1,
/// MaxNodes = 10,
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// soletenant_tmpl, err := compute.NewNodeTemplate(ctx, "soletenant-tmpl", &compute.NodeTemplateArgs{
/// Name:     pulumi.String("soletenant-tmpl"),
/// Region:   pulumi.String("us-central1"),
/// NodeType: pulumi.String("n1-node-96-624"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNodeGroup(ctx, "nodes", &compute.NodeGroupArgs{
/// Name:              pulumi.String("soletenant-group"),
/// Zone:              pulumi.String("us-central1-a"),
/// Description:       pulumi.String("example google_compute_node_group for Google Provider"),
/// MaintenancePolicy: pulumi.String("RESTART_IN_PLACE"),
/// MaintenanceWindow: &compute.NodeGroupMaintenanceWindowArgs{
/// StartTime: pulumi.String("08:00"),
/// },
/// InitialSize:  pulumi.Int(1),
/// NodeTemplate: soletenant_tmpl.ID(),
/// AutoscalingPolicy: &compute.NodeGroupAutoscalingPolicyArgs{
/// Mode:     pulumi.String("ONLY_SCALE_OUT"),
/// MinNodes: pulumi.Int(1),
/// MaxNodes: pulumi.Int(10),
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
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.NodeGroup;
/// import com.pulumi.gcp.compute.NodeGroupArgs;
/// import com.pulumi.gcp.compute.inputs.NodeGroupMaintenanceWindowArgs;
/// import com.pulumi.gcp.compute.inputs.NodeGroupAutoscalingPolicyArgs;
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
/// var soletenant_tmpl = new NodeTemplate("soletenant-tmpl", NodeTemplateArgs.builder()
/// .name("soletenant-tmpl")
/// .region("us-central1")
/// .nodeType("n1-node-96-624")
/// .build());
///
/// var nodes = new NodeGroup("nodes", NodeGroupArgs.builder()
/// .name("soletenant-group")
/// .zone("us-central1-a")
/// .description("example google_compute_node_group for Google Provider")
/// .maintenancePolicy("RESTART_IN_PLACE")
/// .maintenanceWindow(NodeGroupMaintenanceWindowArgs.builder()
/// .startTime("08:00")
/// .build())
/// .initialSize(1)
/// .nodeTemplate(soletenant_tmpl.id())
/// .autoscalingPolicy(NodeGroupAutoscalingPolicyArgs.builder()
/// .mode("ONLY_SCALE_OUT")
/// .minNodes(1)
/// .maxNodes(10)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// soletenant-tmpl:
/// type: gcp:compute:NodeTemplate
/// properties:
/// name: soletenant-tmpl
/// region: us-central1
/// nodeType: n1-node-96-624
/// nodes:
/// type: gcp:compute:NodeGroup
/// properties:
/// name: soletenant-group
/// zone: us-central1-a
/// description: example google_compute_node_group for Google Provider
/// maintenancePolicy: RESTART_IN_PLACE
/// maintenanceWindow:
/// startTime: 08:00
/// initialSize: 1
/// nodeTemplate: ${["soletenant-tmpl"].id}
/// autoscalingPolicy:
/// mode: ONLY_SCALE_OUT
/// minNodes: 1
/// maxNodes: 10
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Node Group Share Settings
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const guestProject = new gcp.organizations.Project("guest_project", {
/// projectId: "project-id",
/// name: "project-name",
/// orgId: "123456789",
/// deletionPolicy: "DELETE",
/// });
/// const soletenant_tmpl = new gcp.compute.NodeTemplate("soletenant-tmpl", {
/// name: "soletenant-tmpl",
/// region: "us-central1",
/// nodeType: "n1-node-96-624",
/// });
/// const nodes = new gcp.compute.NodeGroup("nodes", {
/// name: "soletenant-group",
/// zone: "us-central1-f",
/// description: "example google_compute_node_group for Terraform Google Provider",
/// initialSize: 1,
/// nodeTemplate: soletenant_tmpl.id,
/// shareSettings: {
/// shareType: "SPECIFIC_PROJECTS",
/// projectMaps: [{
/// id: guestProject.projectId,
/// projectId: guestProject.projectId,
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// guest_project = gcp.organizations.Project("guest_project",
/// project_id="project-id",
/// name="project-name",
/// org_id="123456789",
/// deletion_policy="DELETE")
/// soletenant_tmpl = gcp.compute.NodeTemplate("soletenant-tmpl",
/// name="soletenant-tmpl",
/// region="us-central1",
/// node_type="n1-node-96-624")
/// nodes = gcp.compute.NodeGroup("nodes",
/// name="soletenant-group",
/// zone="us-central1-f",
/// description="example google_compute_node_group for Terraform Google Provider",
/// initial_size=1,
/// node_template=soletenant_tmpl.id,
/// share_settings={
/// "share_type": "SPECIFIC_PROJECTS",
/// "project_maps": [{
/// "id": guest_project.project_id,
/// "project_id": guest_project.project_id,
/// }],
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
/// var guestProject = new Gcp.Organizations.Project("guest_project", new()
/// {
/// ProjectId = "project-id",
/// Name = "project-name",
/// OrgId = "123456789",
/// DeletionPolicy = "DELETE",
/// });
///
/// var soletenant_tmpl = new Gcp.Compute.NodeTemplate("soletenant-tmpl", new()
/// {
/// Name = "soletenant-tmpl",
/// Region = "us-central1",
/// NodeType = "n1-node-96-624",
/// });
///
/// var nodes = new Gcp.Compute.NodeGroup("nodes", new()
/// {
/// Name = "soletenant-group",
/// Zone = "us-central1-f",
/// Description = "example google_compute_node_group for Terraform Google Provider",
/// InitialSize = 1,
/// NodeTemplate = soletenant_tmpl.Id,
/// ShareSettings = new Gcp.Compute.Inputs.NodeGroupShareSettingsArgs
/// {
/// ShareType = "SPECIFIC_PROJECTS",
/// ProjectMaps = new[]
/// {
/// new Gcp.Compute.Inputs.NodeGroupShareSettingsProjectMapArgs
/// {
/// Id = guestProject.ProjectId,
/// ProjectId = guestProject.ProjectId,
/// },
/// },
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// guestProject, err := organizations.NewProject(ctx, "guest_project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("project-id"),
/// Name:           pulumi.String("project-name"),
/// OrgId:          pulumi.String("123456789"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// soletenant_tmpl, err := compute.NewNodeTemplate(ctx, "soletenant-tmpl", &compute.NodeTemplateArgs{
/// Name:     pulumi.String("soletenant-tmpl"),
/// Region:   pulumi.String("us-central1"),
/// NodeType: pulumi.String("n1-node-96-624"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNodeGroup(ctx, "nodes", &compute.NodeGroupArgs{
/// Name:         pulumi.String("soletenant-group"),
/// Zone:         pulumi.String("us-central1-f"),
/// Description:  pulumi.String("example google_compute_node_group for Terraform Google Provider"),
/// InitialSize:  pulumi.Int(1),
/// NodeTemplate: soletenant_tmpl.ID(),
/// ShareSettings: &compute.NodeGroupShareSettingsArgs{
/// ShareType: pulumi.String("SPECIFIC_PROJECTS"),
/// ProjectMaps: compute.NodeGroupShareSettingsProjectMapArray{
/// &compute.NodeGroupShareSettingsProjectMapArgs{
/// Id:        guestProject.ProjectId,
/// ProjectId: guestProject.ProjectId,
/// },
/// },
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.compute.NodeTemplate;
/// import com.pulumi.gcp.compute.NodeTemplateArgs;
/// import com.pulumi.gcp.compute.NodeGroup;
/// import com.pulumi.gcp.compute.NodeGroupArgs;
/// import com.pulumi.gcp.compute.inputs.NodeGroupShareSettingsArgs;
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
/// var guestProject = new Project("guestProject", ProjectArgs.builder()
/// .projectId("project-id")
/// .name("project-name")
/// .orgId("123456789")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var soletenant_tmpl = new NodeTemplate("soletenant-tmpl", NodeTemplateArgs.builder()
/// .name("soletenant-tmpl")
/// .region("us-central1")
/// .nodeType("n1-node-96-624")
/// .build());
///
/// var nodes = new NodeGroup("nodes", NodeGroupArgs.builder()
/// .name("soletenant-group")
/// .zone("us-central1-f")
/// .description("example google_compute_node_group for Terraform Google Provider")
/// .initialSize(1)
/// .nodeTemplate(soletenant_tmpl.id())
/// .shareSettings(NodeGroupShareSettingsArgs.builder()
/// .shareType("SPECIFIC_PROJECTS")
/// .projectMaps(NodeGroupShareSettingsProjectMapArgs.builder()
/// .id(guestProject.projectId())
/// .projectId(guestProject.projectId())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// guestProject:
/// type: gcp:organizations:Project
/// name: guest_project
/// properties:
/// projectId: project-id
/// name: project-name
/// orgId: '123456789'
/// deletionPolicy: DELETE
/// soletenant-tmpl:
/// type: gcp:compute:NodeTemplate
/// properties:
/// name: soletenant-tmpl
/// region: us-central1
/// nodeType: n1-node-96-624
/// nodes:
/// type: gcp:compute:NodeGroup
/// properties:
/// name: soletenant-group
/// zone: us-central1-f
/// description: example google_compute_node_group for Terraform Google Provider
/// initialSize: 1
/// nodeTemplate: ${["soletenant-tmpl"].id}
/// shareSettings:
/// shareType: SPECIFIC_PROJECTS
/// projectMaps:
/// - id: ${guestProject.projectId}
/// projectId: ${guestProject.projectId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// NodeGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/nodeGroups/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, NodeGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default projects/{{project}}/zones/{{zone}}/nodeGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/nodeGroup:NodeGroup default {{name}}
/// ```
class NodeGroup extends CustomResource {
  /// If you use sole-tenant nodes for your workloads, you can use the node
  /// group autoscaler to automatically manage the sizes of your node groups.
  /// One of <span pulumi-lang-nodejs="`initialSize`" pulumi-lang-dotnet="`InitialSize`" pulumi-lang-go="`initialSize`" pulumi-lang-python="`initial_size`" pulumi-lang-yaml="`initialSize`" pulumi-lang-java="`initialSize`">`initial_size`</span> or <span pulumi-lang-nodejs="`autoscalingPolicy`" pulumi-lang-dotnet="`AutoscalingPolicy`" pulumi-lang-go="`autoscalingPolicy`" pulumi-lang-python="`autoscaling_policy`" pulumi-lang-yaml="`autoscalingPolicy`" pulumi-lang-java="`autoscalingPolicy`">`autoscaling_policy`</span> must be configured on resource creation.
  /// Structure is documented below.
  late final Output<NodeGroupAutoscalingPolicy> autoscalingPolicy;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional textual description of the resource.
  late final Output<String?> description;

  /// The initial number of nodes in the node group. One of <span pulumi-lang-nodejs="`initialSize`" pulumi-lang-dotnet="`InitialSize`" pulumi-lang-go="`initialSize`" pulumi-lang-python="`initial_size`" pulumi-lang-yaml="`initialSize`" pulumi-lang-java="`initialSize`">`initial_size`</span> or <span pulumi-lang-nodejs="`autoscalingPolicy`" pulumi-lang-dotnet="`AutoscalingPolicy`" pulumi-lang-go="`autoscalingPolicy`" pulumi-lang-python="`autoscaling_policy`" pulumi-lang-yaml="`autoscalingPolicy`" pulumi-lang-java="`autoscalingPolicy`">`autoscaling_policy`</span> must be configured on resource creation.
  late final Output<int?> initialSize;

  /// Specifies the frequency of planned maintenance events. Set to one of the following:
  /// - AS_NEEDED: Hosts are eligible to receive infrastructure and hypervisor updates as they become available.
  /// - RECURRENT: Hosts receive planned infrastructure and hypervisor updates on a periodic basis, but not more frequently than every 28 days. This minimizes the number of planned maintenance operations on individual hosts and reduces the frequency of disruptions, both live migrations and terminations, on individual VMs.
  /// Possible values are: `AS_NEEDED`, `RECURRENT`.
  late final Output<String> maintenanceInterval;

  /// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT.
  late final Output<String?> maintenancePolicy;

  /// contains properties for the timeframe of maintenance
  /// Structure is documented below.
  late final Output<NodeGroupMaintenanceWindow?> maintenanceWindow;

  /// Name of the resource.
  late final Output<String> name;

  /// The URL of the node template to which this node group belongs.
  late final Output<String> nodeTemplate;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Share settings for the node group.
  /// Structure is documented below.
  late final Output<NodeGroupShareSettings> shareSettings;

  /// The total number of nodes in the node group.
  late final Output<int> size;

  /// Zone where this node group is located
  late final Output<String> zone;

  NodeGroup(
    String name, {
    NodeGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/nodeGroup:NodeGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingPolicy = Output.createUnknown<NodeGroupAutoscalingPolicy>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.initialSize = Output.createUnknown<int?>();
    this.maintenanceInterval = Output.createUnknown<String>();
    this.maintenancePolicy = Output.createUnknown<String?>();
    this.maintenanceWindow =
        Output.createUnknown<NodeGroupMaintenanceWindow?>();
    this.name = Output.createUnknown<String>();
    this.nodeTemplate = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.shareSettings = Output.createUnknown<NodeGroupShareSettings>();
    this.size = Output.createUnknown<int>();
    this.zone = Output.createUnknown<String>();
  }
}
