import 'package:pulumi/pulumi.dart';
import 'get_client_args.dart';
import 'get_client_result.dart';

/// Get info about a Google Cloud IAP Client.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({
/// projectId: "foobar",
/// });
/// const projectClient = project.then(project => gcp.iap.getClient({
/// brand: `projects/${project.number}/brands/[BRAND_NUMBER]`,
/// clientId: apps.googleusercontent.com,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project(project_id="foobar")
/// project_client = gcp.iap.get_client(brand=f"projects/{project.number}/brands/[BRAND_NUMBER]",
/// client_id=apps["googleusercontent"]["com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke(new()
/// {
/// ProjectId = "foobar",
/// });
///
/// var projectClient = Gcp.Iap.GetClient.Invoke(new()
/// {
/// Brand = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/brands/[BRAND_NUMBER]",
/// ClientId = apps.Googleusercontent.Com,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// ProjectId: pulumi.StringRef("foobar"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iap.LookupClient(ctx, &iap.LookupClientArgs{
/// Brand:    fmt.Sprintf("projects/%v/brands/[BRAND_NUMBER]", project.Number),
/// ClientId: apps.Googleusercontent.Com,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetClientArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .projectId("foobar")
/// .build());
///
/// final var projectClient = IapFunctions.getClient(GetClientArgs.builder()
/// .brand(String.format("projects/%s/brands/[BRAND_NUMBER]", project.number()))
/// .clientId(apps.googleusercontent().com())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments:
/// projectId: foobar
/// projectClient:
/// fn::invoke:
/// function: gcp:iap:getClient
/// arguments:
/// brand: projects/${project.number}/brands/[BRAND_NUMBER]
/// clientId: ${apps.googleusercontent.com}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClientResult> getClient(
  GetClientArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getClient:getClient',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientResult.fromMap(result);
}
