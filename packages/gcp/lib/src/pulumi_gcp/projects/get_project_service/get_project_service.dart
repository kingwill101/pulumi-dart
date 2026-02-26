import 'package:pulumi/pulumi.dart';
import 'get_project_service_args.dart';
import 'get_project_service_result.dart';

/// Verify the API service for the Google Cloud Platform project to see if it is enabled or not.
///
/// For a list of services available, visit the [API library page](https://console.cloud.google.com/apis/library)
/// or run `gcloud services list --available`.
///
/// This datasource requires the [Service Usage API](https://console.cloud.google.com/apis/library/serviceusage.googleapis.com)
/// to use.
///
///
/// To get more information about <span pulumi-lang-nodejs="`gcp.projects.Service`" pulumi-lang-dotnet="`gcp.projects.Service`" pulumi-lang-go="`projects.Service`" pulumi-lang-python="`projects.Service`" pulumi-lang-yaml="`gcp.projects.Service`" pulumi-lang-java="`gcp.projects.Service`">`gcp.projects.Service`</span>, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1/services)
/// * How-to Guides
/// * [Enabling and Disabling Services](https://cloud.google.com/service-usage/docs/enable-disable)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_project_service = gcp.projects.getProjectService({
/// service: "my-project-service",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_project_service = gcp.projects.get_project_service(service="my-project-service")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_project_service = Gcp.Projects.GetProjectService.Invoke(new()
/// {
/// Service = "my-project-service",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := projects.GetProjectService(ctx, &projects.GetProjectServiceArgs{
/// Service: "my-project-service",
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
/// import com.pulumi.gcp.projects.inputs.GetProjectServiceArgs;
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
/// final var my-project-service = ProjectsFunctions.getProjectService(GetProjectServiceArgs.builder()
/// .service("my-project-service")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-project-service:
/// fn::invoke:
/// function: gcp:projects:getProjectService
/// arguments:
/// service: my-project-service
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetProjectServiceResult> getProjectService(
  GetProjectServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getProjectService:getProjectService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectServiceResult.fromMap(result);
}
