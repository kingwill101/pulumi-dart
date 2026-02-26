import 'package:pulumi/pulumi.dart';
import 'get_folder_args.dart';
import 'get_folder_result.dart';

/// Use this data source to get information about a Google Cloud Folder.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myFolder1 = gcp.organizations.getFolder({
/// folder: "folders/12345",
/// lookupOrganization: true,
/// });
/// const myFolder2 = gcp.organizations.getFolder({
/// folder: "folders/23456",
/// });
/// export const myFolder1Organization = myFolder1.then(myFolder1 => myFolder1.organization);
/// export const myFolder2Parent = myFolder2.then(myFolder2 => myFolder2.parent);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_folder1 = gcp.organizations.get_folder(folder="folders/12345",
/// lookup_organization=True)
/// my_folder2 = gcp.organizations.get_folder(folder="folders/23456")
/// pulumi.export("myFolder1Organization", my_folder1.organization)
/// pulumi.export("myFolder2Parent", my_folder2.parent)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myFolder1 = Gcp.Organizations.GetFolder.Invoke(new()
/// {
/// Folder = "folders/12345",
/// LookupOrganization = true,
/// });
///
/// var myFolder2 = Gcp.Organizations.GetFolder.Invoke(new()
/// {
/// Folder = "folders/23456",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["myFolder1Organization"] = myFolder1.Apply(getFolderResult => getFolderResult.Organization),
/// ["myFolder2Parent"] = myFolder2.Apply(getFolderResult => getFolderResult.Parent),
/// };
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
/// myFolder1, err := organizations.LookupFolder(ctx, &organizations.LookupFolderArgs{
/// Folder:             "folders/12345",
/// LookupOrganization: pulumi.BoolRef(true),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// myFolder2, err := organizations.LookupFolder(ctx, &organizations.LookupFolderArgs{
/// Folder: "folders/23456",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("myFolder1Organization", myFolder1.Organization)
/// ctx.Export("myFolder2Parent", myFolder2.Parent)
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
/// import com.pulumi.gcp.organizations.inputs.GetFolderArgs;
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
/// final var myFolder1 = OrganizationsFunctions.getFolder(GetFolderArgs.builder()
/// .folder("folders/12345")
/// .lookupOrganization(true)
/// .build());
///
/// final var myFolder2 = OrganizationsFunctions.getFolder(GetFolderArgs.builder()
/// .folder("folders/23456")
/// .build());
///
/// ctx.export("myFolder1Organization", myFolder1.organization());
/// ctx.export("myFolder2Parent", myFolder2.parent());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myFolder1:
/// fn::invoke:
/// function: gcp:organizations:getFolder
/// arguments:
/// folder: folders/12345
/// lookupOrganization: true
/// myFolder2:
/// fn::invoke:
/// function: gcp:organizations:getFolder
/// arguments:
/// folder: folders/23456
/// outputs:
/// myFolder1Organization: ${myFolder1.organization}
/// myFolder2Parent: ${myFolder2.parent}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFolderResult> getFolder(
  GetFolderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getFolder:getFolder',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderResult.fromMap(result);
}
