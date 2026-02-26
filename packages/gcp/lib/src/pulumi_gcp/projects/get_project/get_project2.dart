import 'package:pulumi/pulumi.dart';
import 'get_project_args2.dart';
import 'get_project_result2.dart';

/// Retrieve information about a set of projects based on a filter. See the
/// [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/list)
/// for more details.
///
/// ## Example Usage
///
/// ### Searching For Projects About To Be Deleted In An Org
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_org_projects = gcp.projects.getProject({
/// filter: "parent.id:012345678910 lifecycleState:DELETE_REQUESTED",
/// });
/// const deletion_candidate = my_org_projects.then(my_org_projects => gcp.organizations.getProject({
/// projectId: my_org_projects.projects?.[0]?.projectId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_org_projects = gcp.projects.get_project(filter="parent.id:012345678910 lifecycleState:DELETE_REQUESTED")
/// deletion_candidate = gcp.organizations.get_project(project_id=my_org_projects.projects[0].project_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_org_projects = Gcp.Projects.GetProject.Invoke(new()
/// {
/// Filter = "parent.id:012345678910 lifecycleState:DELETE_REQUESTED",
/// });
///
/// var deletion_candidate = Gcp.Organizations.GetProject.Invoke(new()
/// {
/// ProjectId = my_org_projects.Apply(getProjectResult => getProjectResult.Projects[0]?.ProjectId),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// my_org_projects, err := projects.GetProject(ctx, &projects.GetProjectArgs{
/// Filter: "parent.id:012345678910 lifecycleState:DELETE_REQUESTED",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// ProjectId: pulumi.StringRef(my_org_projects.Projects[0].ProjectId),
/// }, nil)
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
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
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
/// final var my-org-projects = ProjectsFunctions.getProject(GetProjectArgs.builder()
/// .filter("parent.id:012345678910 lifecycleState:DELETE_REQUESTED")
/// .build());
///
/// final var deletion-candidate = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .projectId(my_org_projects.projects()[0].projectId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-org-projects:
/// fn::invoke:
/// function: gcp:projects:getProject
/// arguments:
/// filter: parent.id:012345678910 lifecycleState:DELETE_REQUESTED
/// deletion-candidate:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments:
/// projectId: ${["my-org-projects"].projects[0].projectId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetProjectResult2> getProject2(
  GetProjectArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getProject:getProject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectResult2.fromMap(result);
}
