import 'package:pulumi/pulumi.dart';
import 'host_project_registration_args.dart';

/// Host project registration refers to the registration of a Google cloud project with API hub as a host project.
/// This is the project where API hub is provisioned.
/// It acts as the consumer project for the API hub instance provisioned.
/// Multiple runtime projects can be attached to the host project and these attachments define the scope of API hub.
///
///
///
/// ## Example Usage
///
/// ### Apihub Host Project Registration Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
/// name: "apihub-proj",
/// projectId: "apihub-proj",
/// orgId: "123456789",
/// billingAccount: "000000-0000000-0000000-000000",
/// deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
/// dependsOn: [project],
/// });
/// // Enable API hub API
/// const apihubService = new gcp.projects.Service("apihub_service", {
/// project: project.projectId,
/// service: "apihub.googleapis.com",
/// }, {
/// dependsOn: [wait60Seconds],
/// });
/// const apihubHostProject = new gcp.apihub.HostProjectRegistration("apihub_host_project", {
/// project: project.projectId,
/// location: "asia-south1",
/// hostProjectRegistrationId: project.projectId,
/// gcpProject: pulumi.interpolate`projects/${project.projectId}`,
/// }, {
/// dependsOn: [apihubService],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
/// name="apihub-proj",
/// project_id="apihub-proj",
/// org_id="123456789",
/// billing_account="000000-0000000-0000000-000000",
/// deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[project]))
/// # Enable API hub API
/// apihub_service = gcp.projects.Service("apihub_service",
/// project=project.project_id,
/// service="apihub.googleapis.com",
/// opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// apihub_host_project = gcp.apihub.HostProjectRegistration("apihub_host_project",
/// project=project.project_id,
/// location="asia-south1",
/// host_project_registration_id=project.project_id,
/// gcp_project=project.project_id.apply(lambda project_id: f"projects/{project_id}"),
/// opts = pulumi.ResourceOptions(depends_on=[apihub_service]))
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
/// Name = "apihub-proj",
/// ProjectId = "apihub-proj",
/// OrgId = "123456789",
/// BillingAccount = "000000-0000000-0000000-000000",
/// DeletionPolicy = "DELETE",
/// });
///
/// var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
/// {
/// CreateDuration = "60s",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// project,
/// },
/// });
///
/// // Enable API hub API
/// var apihubService = new Gcp.Projects.Service("apihub_service", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "apihub.googleapis.com",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// wait60Seconds,
/// },
/// });
///
/// var apihubHostProject = new Gcp.ApiHub.HostProjectRegistration("apihub_host_project", new()
/// {
/// Project = project.ProjectId,
/// Location = "asia-south1",
/// HostProjectRegistrationId = project.ProjectId,
/// GcpProject = project.ProjectId.Apply(projectId => $"projects/{projectId}"),
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// apihubService,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apihub"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// Name:           pulumi.String("apihub-proj"),
/// ProjectId:      pulumi.String("apihub-proj"),
/// OrgId:          pulumi.String("123456789"),
/// BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// CreateDuration: pulumi.String("60s"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// project,
/// }))
/// if err != nil {
/// return err
/// }
/// // Enable API hub API
/// apihubService, err := projects.NewService(ctx, "apihub_service", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("apihub.googleapis.com"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// wait60Seconds,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = apihub.NewHostProjectRegistration(ctx, "apihub_host_project", &apihub.HostProjectRegistrationArgs{
/// Project:                   project.ProjectId,
/// Location:                  pulumi.String("asia-south1"),
/// HostProjectRegistrationId: project.ProjectId,
/// GcpProject: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// return fmt.Sprintf("projects/%v", projectId), nil
/// }).(pulumi.StringOutput),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// apihubService,
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.apihub.HostProjectRegistration;
/// import com.pulumi.gcp.apihub.HostProjectRegistrationArgs;
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
/// .name("apihub-proj")
/// .projectId("apihub-proj")
/// .orgId("123456789")
/// .billingAccount("000000-0000000-0000000-000000")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
/// .createDuration("60s")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(project)
/// .build());
///
/// // Enable API hub API
/// var apihubService = new Service("apihubService", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("apihub.googleapis.com")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(wait60Seconds)
/// .build());
///
/// var apihubHostProject = new HostProjectRegistration("apihubHostProject", HostProjectRegistrationArgs.builder()
/// .project(project.projectId())
/// .location("asia-south1")
/// .hostProjectRegistrationId(project.projectId())
/// .gcpProject(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(apihubService)
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
/// name: apihub-proj
/// projectId: apihub-proj
/// orgId: '123456789'
/// billingAccount: 000000-0000000-0000000-000000
/// deletionPolicy: DELETE
/// wait60Seconds:
/// type: time:Sleep
/// name: wait_60_seconds
/// properties:
/// createDuration: 60s
/// options:
/// dependsOn:
/// - ${project}
/// # Enable API hub API
/// apihubService:
/// type: gcp:projects:Service
/// name: apihub_service
/// properties:
/// project: ${project.projectId}
/// service: apihub.googleapis.com
/// options:
/// dependsOn:
/// - ${wait60Seconds}
/// apihubHostProject:
/// type: gcp:apihub:HostProjectRegistration
/// name: apihub_host_project
/// properties:
/// project: ${project.projectId}
/// location: asia-south1
/// hostProjectRegistrationId: ${project.projectId}
/// gcpProject: projects/${project.projectId}
/// options:
/// dependsOn:
/// - ${apihubService}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// HostProjectRegistration can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/hostProjectRegistrations/{{host_project_registration_id}}`
///
/// * `{{project}}/{{location}}/{{host_project_registration_id}}`
///
/// * `{{location}}/{{host_project_registration_id}}`
///
/// When using the `pulumi import` command, HostProjectRegistration can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/hostProjectRegistration:HostProjectRegistration default projects/{{project}}/locations/{{location}}/hostProjectRegistrations/{{host_project_registration_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/hostProjectRegistration:HostProjectRegistration default {{project}}/{{location}}/{{host_project_registration_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/hostProjectRegistration:HostProjectRegistration default {{location}}/{{host_project_registration_id}}
/// ```
class HostProjectRegistration extends CustomResource {
  /// Output only. The time at which the host project registration was created.
  late final Output<String> createTime;

  /// Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// As input, project name with either project id or number are accepted.
  /// As output, this field will contain project number.
  late final Output<String> gcpProject;

  /// Required. The ID to use for the Host Project Registration, which will become the
  /// final component of the host project registration's resource name. The ID
  /// must be the same as the Google cloud project specified in the
  /// host_project_registration.gcp_project field.
  late final Output<String> hostProjectRegistrationId;

  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>. See documentation of `projectsId`.
  late final Output<String> location;

  /// Identifier. The name of the host project registration.
  /// Format:
  /// "projects/{project}/locations/{location}/hostProjectRegistrations/{host_project_registration}".
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  HostProjectRegistration(
    String name, {
    HostProjectRegistrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/hostProjectRegistration:HostProjectRegistration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.gcpProject = registerOutput<String>('gcpProject');
    this.hostProjectRegistrationId =
        registerOutput<String>('hostProjectRegistrationId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
