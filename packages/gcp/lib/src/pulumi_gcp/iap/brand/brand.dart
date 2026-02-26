import 'package:pulumi/pulumi.dart';
import 'brand_args.dart';

/// ## Example Usage
///
/// ### Iap Brand
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
/// deletionPolicy: "DELETE",
/// });
/// const projectService = new gcp.projects.Service("project_service", {
/// project: project.projectId,
/// service: "iap.googleapis.com",
/// });
/// const projectBrand = new gcp.iap.Brand("project_brand", {
/// supportEmail: "support@example.com",
/// applicationTitle: "Cloud IAP protected Application",
/// project: projectService.project,
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
/// deletion_policy="DELETE")
/// project_service = gcp.projects.Service("project_service",
/// project=project.project_id,
/// service="iap.googleapis.com")
/// project_brand = gcp.iap.Brand("project_brand",
/// support_email="support@example.com",
/// application_title="Cloud IAP protected Application",
/// project=project_service.project)
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
/// DeletionPolicy = "DELETE",
/// });
///
/// var projectService = new Gcp.Projects.Service("project_service", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "iap.googleapis.com",
/// });
///
/// var projectBrand = new Gcp.Iap.Brand("project_brand", new()
/// {
/// SupportEmail = "support@example.com",
/// ApplicationTitle = "Cloud IAP protected Application",
/// Project = projectService.Project,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("my-project"),
/// Name:           pulumi.String("my-project"),
/// OrgId:          pulumi.String("123456789"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// projectService, err := projects.NewService(ctx, "project_service", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("iap.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iap.NewBrand(ctx, "project_brand", &iap.BrandArgs{
/// SupportEmail:     pulumi.String("support@example.com"),
/// ApplicationTitle: pulumi.String("Cloud IAP protected Application"),
/// Project:          projectService.Project,
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
/// import com.pulumi.gcp.iap.Brand;
/// import com.pulumi.gcp.iap.BrandArgs;
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
/// .deletionPolicy("DELETE")
/// .build());
///
/// var projectService = new Service("projectService", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("iap.googleapis.com")
/// .build());
///
/// var projectBrand = new Brand("projectBrand", BrandArgs.builder()
/// .supportEmail("support@example.com")
/// .applicationTitle("Cloud IAP protected Application")
/// .project(projectService.project())
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
/// deletionPolicy: DELETE
/// projectService:
/// type: gcp:projects:Service
/// name: project_service
/// properties:
/// project: ${project.projectId}
/// service: iap.googleapis.com
/// projectBrand:
/// type: gcp:iap:Brand
/// name: project_brand
/// properties:
/// supportEmail: support@example.com
/// applicationTitle: Cloud IAP protected Application
/// project: ${projectService.project}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Brand can be imported using any of these accepted formats:
///
/// * `projects/{{project_id}}/brands/{{brand_id}}`
///
/// * `projects/{{project_number}}/brands/{{brand_id}}`
///
/// * `{{project_number}}/{{brand_id}}`
///
/// When using the `pulumi import` command, Brand can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iap/brand:Brand default projects/{{project_id}}/brands/{{brand_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/brand:Brand default projects/{{project_number}}/brands/{{brand_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/brand:Brand default {{project_number}}/{{brand_id}}
/// ```
class Brand extends CustomResource {
  /// Application name displayed on OAuth consent screen.
  late final Output<String> applicationTitle;

  /// Output only. Identifier of the brand, in the format `projects/{project_number}/brands/{brand_id}`
  /// NOTE: The name can also be expressed as `projects/{project_id}/brands/{brand_id}`, e.g. when importing.
  /// NOTE: The brand identification corresponds to the project number as only one
  /// brand can be created per project.
  late final Output<String> name;

  /// Whether the brand is only intended for usage inside the GSuite organization only.
  late final Output<bool> orgInternalOnly;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Support email displayed on the OAuth consent screen. Can be either a
  /// user or group email. When a user email is specified, the caller must
  /// be the user with the associated email address. When a group email is
  /// specified, the caller can be either a user or a service account which
  /// is an owner of the specified group in Cloud Identity.
  late final Output<String> supportEmail;

  Brand(
    String name, {
    BrandArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/brand:Brand',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationTitle = registerOutput<String>('applicationTitle');
    this.name = registerOutput<String>('name');
    this.orgInternalOnly = registerOutput<bool>('orgInternalOnly');
    this.project = registerOutput<String>('project');
    this.supportEmail = registerOutput<String>('supportEmail');
  }
}
