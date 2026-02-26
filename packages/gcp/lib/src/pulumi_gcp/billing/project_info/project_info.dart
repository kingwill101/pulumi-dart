import 'package:pulumi/pulumi.dart';
import 'project_info_args.dart';

/// Billing information for a project.
///
///
/// To get more information about ProjectInfo, see:
///
/// * [API documentation](https://cloud.google.com/billing/docs/reference/rest/v1/projects)
/// * How-to Guides
/// * [Enable, disable, or change billing for a project](https://cloud.google.com/billing/docs/how-to/modify-project)
///
/// ## Example Usage
///
/// ### Billing Project Info Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
/// projectId: "tf-test_88717",
/// name: "tf-test_85794",
/// orgId: "123456789",
/// deletionPolicy: "DELETE",
/// });
/// const _default = new gcp.billing.ProjectInfo("default", {
/// project: project.projectId,
/// billingAccount: "000000-0000000-0000000-000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
/// project_id="tf-test_88717",
/// name="tf-test_85794",
/// org_id="123456789",
/// deletion_policy="DELETE")
/// default = gcp.billing.ProjectInfo("default",
/// project=project.project_id,
/// billing_account="000000-0000000-0000000-000000")
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
/// ProjectId = "tf-test_88717",
/// Name = "tf-test_85794",
/// OrgId = "123456789",
/// DeletionPolicy = "DELETE",
/// });
///
/// var @default = new Gcp.Billing.ProjectInfo("default", new()
/// {
/// Project = project.ProjectId,
/// BillingAccount = "000000-0000000-0000000-000000",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("tf-test_88717"),
/// Name:           pulumi.String("tf-test_85794"),
/// OrgId:          pulumi.String("123456789"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = billing.NewProjectInfo(ctx, "default", &billing.ProjectInfoArgs{
/// Project:        project.ProjectId,
/// BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
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
/// import com.pulumi.gcp.billing.ProjectInfo;
/// import com.pulumi.gcp.billing.ProjectInfoArgs;
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
/// .projectId("tf-test_88717")
/// .name("tf-test_85794")
/// .orgId("123456789")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var default_ = new ProjectInfo("default", ProjectInfoArgs.builder()
/// .project(project.projectId())
/// .billingAccount("000000-0000000-0000000-000000")
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
/// projectId: tf-test_88717
/// name: tf-test_85794
/// orgId: '123456789'
/// deletionPolicy: DELETE
/// default:
/// type: gcp:billing:ProjectInfo
/// properties:
/// project: ${project.projectId}
/// billingAccount: 000000-0000000-0000000-000000
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ProjectInfo can be imported using any of these accepted formats:
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, ProjectInfo can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:billing/projectInfo:ProjectInfo default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:billing/projectInfo:ProjectInfo default {{project}}
/// ```
class ProjectInfo extends CustomResource {
  /// The ID of the billing account associated with the project, if
  /// any. Set to empty string to disable billing for the project.
  /// For example, `"012345-567890-ABCDEF"` or `""`.
  late final Output<String> billingAccount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  ProjectInfo(
    String name, {
    ProjectInfoArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:billing/projectInfo:ProjectInfo',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.billingAccount = registerOutput<String>('billingAccount');
    this.project = registerOutput<String>('project');
  }
}
