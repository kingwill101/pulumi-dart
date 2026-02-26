import 'package:pulumi/pulumi.dart';
import 'version_args.dart';

/// You can create multiple versions of your agent and publish them to separate environments.
///
///
/// To get more information about Version, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Version Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
/// projectId: "my-proj",
/// name: "my-proj",
/// orgId: "123456789",
/// billingAccount: "000000-0000000-0000000-000000",
/// deletionPolicy: "DELETE",
/// });
/// const dialogflow = new gcp.projects.Service("dialogflow", {
/// project: project.projectId,
/// service: "dialogflow.googleapis.com",
/// });
/// const waitEnableServiceApi = new time.Sleep("wait_enable_service_api", {createDuration: "30s"}, {
/// dependsOn: [dialogflow],
/// });
/// const gcpSa = new gcp.projects.ServiceIdentity("gcp_sa", {
/// service: "dialogflow.googleapis.com",
/// project: project.projectId,
/// }, {
/// dependsOn: [waitEnableServiceApi],
/// });
/// const basicAgent = new gcp.diagflow.Agent("basic_agent", {
/// displayName: "example_agent",
/// defaultLanguageCode: "en",
/// timeZone: "America/New_York",
/// project: project.projectId,
/// }, {
/// dependsOn: [waitEnableServiceApi],
/// });
/// const fullVersion = new gcp.diagflow.Version("full_version", {
/// description: "Dialogflow Version",
/// parent: pulumi.interpolate`projects/${project.projectId}/agent`,
/// }, {
/// dependsOn: [basicAgent],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
/// project_id="my-proj",
/// name="my-proj",
/// org_id="123456789",
/// billing_account="000000-0000000-0000000-000000",
/// deletion_policy="DELETE")
/// dialogflow = gcp.projects.Service("dialogflow",
/// project=project.project_id,
/// service="dialogflow.googleapis.com")
/// wait_enable_service_api = time.Sleep("wait_enable_service_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[dialogflow]))
/// gcp_sa = gcp.projects.ServiceIdentity("gcp_sa",
/// service="dialogflow.googleapis.com",
/// project=project.project_id,
/// opts = pulumi.ResourceOptions(depends_on=[wait_enable_service_api]))
/// basic_agent = gcp.diagflow.Agent("basic_agent",
/// display_name="example_agent",
/// default_language_code="en",
/// time_zone="America/New_York",
/// project=project.project_id,
/// opts = pulumi.ResourceOptions(depends_on=[wait_enable_service_api]))
/// full_version = gcp.diagflow.Version("full_version",
/// description="Dialogflow Version",
/// parent=project.project_id.apply(lambda project_id: f"projects/{project_id}/agent"),
/// opts = pulumi.ResourceOptions(depends_on=[basic_agent]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Organizations.Project("project", new()
/// {
/// ProjectId = "my-proj",
/// Name = "my-proj",
/// OrgId = "123456789",
/// BillingAccount = "000000-0000000-0000000-000000",
/// DeletionPolicy = "DELETE",
/// });
///
/// var dialogflow = new Gcp.Projects.Service("dialogflow", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "dialogflow.googleapis.com",
/// });
///
/// var waitEnableServiceApi = new Time.Sleep("wait_enable_service_api", new()
/// {
/// CreateDuration = "30s",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// dialogflow,
/// },
/// });
///
/// var gcpSa = new Gcp.Projects.ServiceIdentity("gcp_sa", new()
/// {
/// Service = "dialogflow.googleapis.com",
/// Project = project.ProjectId,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// waitEnableServiceApi,
/// },
/// });
///
/// var basicAgent = new Gcp.Diagflow.Agent("basic_agent", new()
/// {
/// DisplayName = "example_agent",
/// DefaultLanguageCode = "en",
/// TimeZone = "America/New_York",
/// Project = project.ProjectId,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// waitEnableServiceApi,
/// },
/// });
///
/// var fullVersion = new Gcp.Diagflow.Version("full_version", new()
/// {
/// Description = "Dialogflow Version",
/// Parent = project.ProjectId.Apply(projectId => $"projects/{projectId}/agent"),
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// basicAgent,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("my-proj"),
/// Name:           pulumi.String("my-proj"),
/// OrgId:          pulumi.String("123456789"),
/// BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// dialogflow, err := projects.NewService(ctx, "dialogflow", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("dialogflow.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// waitEnableServiceApi, err := time.NewSleep(ctx, "wait_enable_service_api", &time.SleepArgs{
/// CreateDuration: pulumi.String("30s"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// dialogflow,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = projects.NewServiceIdentity(ctx, "gcp_sa", &projects.ServiceIdentityArgs{
/// Service: pulumi.String("dialogflow.googleapis.com"),
/// Project: project.ProjectId,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// waitEnableServiceApi,
/// }))
/// if err != nil {
/// return err
/// }
/// basicAgent, err := diagflow.NewAgent(ctx, "basic_agent", &diagflow.AgentArgs{
/// DisplayName:         pulumi.String("example_agent"),
/// DefaultLanguageCode: pulumi.String("en"),
/// TimeZone:            pulumi.String("America/New_York"),
/// Project:             project.ProjectId,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// waitEnableServiceApi,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = diagflow.NewVersion(ctx, "full_version", &diagflow.VersionArgs{
/// Description: pulumi.String("Dialogflow Version"),
/// Parent: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// return fmt.Sprintf("projects/%v/agent", projectId), nil
/// }).(pulumi.StringOutput),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// basicAgent,
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.diagflow.Agent;
/// import com.pulumi.gcp.diagflow.AgentArgs;
/// import com.pulumi.gcp.diagflow.Version;
/// import com.pulumi.gcp.diagflow.VersionArgs;
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
/// .projectId("my-proj")
/// .name("my-proj")
/// .orgId("123456789")
/// .billingAccount("000000-0000000-0000000-000000")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var dialogflow = new Service("dialogflow", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("dialogflow.googleapis.com")
/// .build());
///
/// var waitEnableServiceApi = new Sleep("waitEnableServiceApi", SleepArgs.builder()
/// .createDuration("30s")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(dialogflow)
/// .build());
///
/// var gcpSa = new ServiceIdentity("gcpSa", ServiceIdentityArgs.builder()
/// .service("dialogflow.googleapis.com")
/// .project(project.projectId())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(waitEnableServiceApi)
/// .build());
///
/// var basicAgent = new Agent("basicAgent", AgentArgs.builder()
/// .displayName("example_agent")
/// .defaultLanguageCode("en")
/// .timeZone("America/New_York")
/// .project(project.projectId())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(waitEnableServiceApi)
/// .build());
///
/// var fullVersion = new Version("fullVersion", VersionArgs.builder()
/// .description("Dialogflow Version")
/// .parent(project.projectId().applyValue(_projectId -> String.format("projects/%s/agent", _projectId)))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(basicAgent)
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
/// projectId: my-proj
/// name: my-proj
/// orgId: '123456789'
/// billingAccount: 000000-0000000-0000000-000000
/// deletionPolicy: DELETE
/// dialogflow:
/// type: gcp:projects:Service
/// properties:
/// project: ${project.projectId}
/// service: dialogflow.googleapis.com
/// waitEnableServiceApi:
/// type: time:Sleep
/// name: wait_enable_service_api
/// properties:
/// createDuration: 30s
/// options:
/// dependsOn:
/// - ${dialogflow}
/// gcpSa:
/// type: gcp:projects:ServiceIdentity
/// name: gcp_sa
/// properties:
/// service: dialogflow.googleapis.com
/// project: ${project.projectId}
/// options:
/// dependsOn:
/// - ${waitEnableServiceApi}
/// basicAgent:
/// type: gcp:diagflow:Agent
/// name: basic_agent
/// properties:
/// displayName: example_agent
/// defaultLanguageCode: en
/// timeZone: America/New_York
/// project: ${project.projectId}
/// options:
/// dependsOn:
/// - ${waitEnableServiceApi}
/// fullVersion:
/// type: gcp:diagflow:Version
/// name: full_version
/// properties:
/// description: Dialogflow Version
/// parent: projects/${project.projectId}/agent
/// options:
/// dependsOn:
/// - ${basicAgent}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Version can be imported using any of these accepted formats:
///
/// * `{{parent}}/versions/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Version can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/version:Version default {{parent}}/versions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/version:Version default {{parent}}/{{name}}
/// ```
class Version extends CustomResource {
  /// The developer-provided description of this version.
  late final Output<String?> description;

  /// The unique identifier of this agent version.
  late final Output<String> name;

  /// The Flow to create an Version for.
  /// Format: projects/<Project ID>/agent.
  late final Output<String?> parent;

  /// The status of this version.
  late final Output<String> status;

  /// The sequential number of this version.
  late final Output<int> versionNumber;

  Version(
    String name, {
    VersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/version:Version',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.status = registerOutput<String>('status');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}
