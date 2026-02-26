import 'package:pulumi/pulumi.dart';
import 'get_organization_args.dart';
import 'get_organization_result.dart';

/// Get information about a Google Cloud Organization. Note that you must have the `roles/resourcemanager.organizationViewer` role (or equivalent permissions) at the organization level to use this datasource.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const org = gcp.organizations.getOrganization({
/// domain: "example.com",
/// });
/// const sales = new gcp.organizations.Folder("sales", {
/// displayName: "Sales",
/// parent: org.then(org => org.name),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// org = gcp.organizations.get_organization(domain="example.com")
/// sales = gcp.organizations.Folder("sales",
/// display_name="Sales",
/// parent=org.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var org = Gcp.Organizations.GetOrganization.Invoke(new()
/// {
/// Domain = "example.com",
/// });
///
/// var sales = new Gcp.Organizations.Folder("sales", new()
/// {
/// DisplayName = "Sales",
/// Parent = org.Apply(getOrganizationResult => getOrganizationResult.Name),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// org, err := organizations.GetOrganization(ctx, &organizations.GetOrganizationArgs{
/// Domain: pulumi.StringRef("example.com"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = organizations.NewFolder(ctx, "sales", &organizations.FolderArgs{
/// DisplayName: pulumi.String("Sales"),
/// Parent:      pulumi.String(org.Name),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
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
/// final var org = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
/// .domain("example.com")
/// .build());
///
/// var sales = new Folder("sales", FolderArgs.builder()
/// .displayName("Sales")
/// .parent(org.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sales:
/// type: gcp:organizations:Folder
/// properties:
/// displayName: Sales
/// parent: ${org.name}
/// variables:
/// org:
/// fn::invoke:
/// function: gcp:organizations:getOrganization
/// arguments:
/// domain: example.com
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getOrganization:getOrganization',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}
