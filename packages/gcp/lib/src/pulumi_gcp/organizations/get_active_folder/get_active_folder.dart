import 'package:pulumi/pulumi.dart';
import 'get_active_folder_args.dart';
import 'get_active_folder_result.dart';

/// Get an active folder within GCP by <span pulumi-lang-nodejs="`displayName`" pulumi-lang-dotnet="`DisplayName`" pulumi-lang-go="`displayName`" pulumi-lang-python="`display_name`" pulumi-lang-yaml="`displayName`" pulumi-lang-java="`displayName`">`display_name`</span> and <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const department1 = gcp.organizations.getActiveFolder({
/// displayName: "Department 1",
/// parent: "organizations/1234567",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// department1 = gcp.organizations.get_active_folder(display_name="Department 1",
/// parent="organizations/1234567")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var department1 = Gcp.Organizations.GetActiveFolder.Invoke(new()
/// {
/// DisplayName = "Department 1",
/// Parent = "organizations/1234567",
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
/// _, err := organizations.GetActiveFolder(ctx, &organizations.GetActiveFolderArgs{
/// DisplayName: "Department 1",
/// Parent:      "organizations/1234567",
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
/// import com.pulumi.gcp.organizations.inputs.GetActiveFolderArgs;
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
/// final var department1 = OrganizationsFunctions.getActiveFolder(GetActiveFolderArgs.builder()
/// .displayName("Department 1")
/// .parent("organizations/1234567")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// department1:
/// fn::invoke:
/// function: gcp:organizations:getActiveFolder
/// arguments:
/// displayName: Department 1
/// parent: organizations/1234567
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetActiveFolderResult> getActiveFolder(
  GetActiveFolderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getActiveFolder:getActiveFolder',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetActiveFolderResult.fromMap(result);
}
