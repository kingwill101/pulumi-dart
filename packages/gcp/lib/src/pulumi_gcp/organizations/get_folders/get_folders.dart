import 'package:pulumi/pulumi.dart';
import 'get_folders_args.dart';
import 'get_folders_result.dart';

/// Retrieve information about a set of folders based on a parent ID. See the
/// [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v3/folders/list)
/// for more details.
///
/// ## Example Usage
///
/// ### Searching For Folders At The Root Of An Org
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_org_folders = gcp.organizations.getFolders({
/// parentId: `organizations/${organizationId}`,
/// });
/// const first_folder = my_org_folders.then(my_org_folders => gcp.organizations.getFolder({
/// folder: my_org_folders.folders?.[0]?.name,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_org_folders = gcp.organizations.get_folders(parent_id=f"organizations/{organization_id}")
/// first_folder = gcp.organizations.get_folder(folder=my_org_folders.folders[0].name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_org_folders = Gcp.Organizations.GetFolders.Invoke(new()
/// {
/// ParentId = $"organizations/{organizationId}",
/// });
///
/// var first_folder = Gcp.Organizations.GetFolder.Invoke(new()
/// {
/// Folder = my_org_folders.Apply(getFoldersResult => getFoldersResult.Folders[0]?.Name),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// my_org_folders, err := organizations.GetFolders(ctx, &organizations.GetFoldersArgs{
/// ParentId: fmt.Sprintf("organizations/%v", organizationId),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = organizations.LookupFolder(ctx, &organizations.LookupFolderArgs{
/// Folder: my_org_folders.Folders[0].Name,
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
/// import com.pulumi.gcp.organizations.inputs.GetFoldersArgs;
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
/// final var my-org-folders = OrganizationsFunctions.getFolders(GetFoldersArgs.builder()
/// .parentId(String.format("organizations/%s", organizationId))
/// .build());
///
/// final var first-folder = OrganizationsFunctions.getFolder(GetFolderArgs.builder()
/// .folder(my_org_folders.folders()[0].name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-org-folders:
/// fn::invoke:
/// function: gcp:organizations:getFolders
/// arguments:
/// parentId: organizations/${organizationId}
/// first-folder:
/// fn::invoke:
/// function: gcp:organizations:getFolder
/// arguments:
/// folder: ${["my-org-folders"].folders[0].name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFoldersResult> getFolders(
  GetFoldersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getFolders:getFolders',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFoldersResult.fromMap(result);
}
