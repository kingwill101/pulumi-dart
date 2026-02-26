import 'package:pulumi/pulumi.dart';
import 'get_resources_search_all_args.dart';
import 'get_resources_search_all_result2.dart';

/// Retrieve all the resources within a given accessible CRM scope (project/folder/organization). See the
/// [REST API](https://cloud.google.com/asset-inventory/docs/reference/rest/v1p1beta1/resources/searchAll)
/// for more details.
///
/// ## Example Usage
///
/// ### Searching For All Projects In An Org
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const projects = gcp.cloudasset.getResourcesSearchAll({
/// scope: "organizations/0123456789",
/// assetTypes: ["cloudresourcemanager.googleapis.com/Project"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// projects = gcp.cloudasset.get_resources_search_all(scope="organizations/0123456789",
/// asset_types=["cloudresourcemanager.googleapis.com/Project"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var projects = Gcp.CloudAsset.GetResourcesSearchAll.Invoke(new()
/// {
/// Scope = "organizations/0123456789",
/// AssetTypes = new[]
/// {
/// "cloudresourcemanager.googleapis.com/Project",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudasset"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudasset.LookupResourcesSearchAll(ctx, &cloudasset.LookupResourcesSearchAllArgs{
/// Scope: "organizations/0123456789",
/// AssetTypes: []string{
/// "cloudresourcemanager.googleapis.com/Project",
/// },
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
/// import com.pulumi.gcp.cloudasset.CloudassetFunctions;
/// import com.pulumi.gcp.cloudasset.inputs.GetResourcesSearchAllArgs;
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
/// final var projects = CloudassetFunctions.getResourcesSearchAll(GetResourcesSearchAllArgs.builder()
/// .scope("organizations/0123456789")
/// .assetTypes("cloudresourcemanager.googleapis.com/Project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// projects:
/// fn::invoke:
/// function: gcp:cloudasset:getResourcesSearchAll
/// arguments:
/// scope: organizations/0123456789
/// assetTypes:
/// - cloudresourcemanager.googleapis.com/Project
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Searching For All Projects With CloudBuild API Enabled
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloudBuildProjects = gcp.cloudasset.getResourcesSearchAll({
/// scope: "organizations/0123456789",
/// assetTypes: ["serviceusage.googleapis.com/Service"],
/// query: "displayName:cloudbuild.googleapis.com AND state:ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloud_build_projects = gcp.cloudasset.get_resources_search_all(scope="organizations/0123456789",
/// asset_types=["serviceusage.googleapis.com/Service"],
/// query="displayName:cloudbuild.googleapis.com AND state:ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cloudBuildProjects = Gcp.CloudAsset.GetResourcesSearchAll.Invoke(new()
/// {
/// Scope = "organizations/0123456789",
/// AssetTypes = new[]
/// {
/// "serviceusage.googleapis.com/Service",
/// },
/// Query = "displayName:cloudbuild.googleapis.com AND state:ENABLED",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudasset"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudasset.LookupResourcesSearchAll(ctx, &cloudasset.LookupResourcesSearchAllArgs{
/// Scope: "organizations/0123456789",
/// AssetTypes: []string{
/// "serviceusage.googleapis.com/Service",
/// },
/// Query: pulumi.StringRef("displayName:cloudbuild.googleapis.com AND state:ENABLED"),
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
/// import com.pulumi.gcp.cloudasset.CloudassetFunctions;
/// import com.pulumi.gcp.cloudasset.inputs.GetResourcesSearchAllArgs;
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
/// final var cloudBuildProjects = CloudassetFunctions.getResourcesSearchAll(GetResourcesSearchAllArgs.builder()
/// .scope("organizations/0123456789")
/// .assetTypes("serviceusage.googleapis.com/Service")
/// .query("displayName:cloudbuild.googleapis.com AND state:ENABLED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// cloudBuildProjects:
/// fn::invoke:
/// function: gcp:cloudasset:getResourcesSearchAll
/// arguments:
/// scope: organizations/0123456789
/// assetTypes:
/// - serviceusage.googleapis.com/Service
/// query: displayName:cloudbuild.googleapis.com AND state:ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Searching For All Service Accounts In A Project
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const projectServiceAccounts = gcp.cloudasset.getResourcesSearchAll({
/// scope: "projects/my-project-id",
/// assetTypes: ["iam.googleapis.com/ServiceAccount"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project_service_accounts = gcp.cloudasset.get_resources_search_all(scope="projects/my-project-id",
/// asset_types=["iam.googleapis.com/ServiceAccount"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var projectServiceAccounts = Gcp.CloudAsset.GetResourcesSearchAll.Invoke(new()
/// {
/// Scope = "projects/my-project-id",
/// AssetTypes = new[]
/// {
/// "iam.googleapis.com/ServiceAccount",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudasset"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudasset.LookupResourcesSearchAll(ctx, &cloudasset.LookupResourcesSearchAllArgs{
/// Scope: "projects/my-project-id",
/// AssetTypes: []string{
/// "iam.googleapis.com/ServiceAccount",
/// },
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
/// import com.pulumi.gcp.cloudasset.CloudassetFunctions;
/// import com.pulumi.gcp.cloudasset.inputs.GetResourcesSearchAllArgs;
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
/// final var projectServiceAccounts = CloudassetFunctions.getResourcesSearchAll(GetResourcesSearchAllArgs.builder()
/// .scope("projects/my-project-id")
/// .assetTypes("iam.googleapis.com/ServiceAccount")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// projectServiceAccounts:
/// fn::invoke:
/// function: gcp:cloudasset:getResourcesSearchAll
/// arguments:
/// scope: projects/my-project-id
/// assetTypes:
/// - iam.googleapis.com/ServiceAccount
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResourcesSearchAllResult2> getResourcesSearchAll(
  GetResourcesSearchAllArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudasset/getResourcesSearchAll:getResourcesSearchAll',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcesSearchAllResult2.fromMap(result);
}
