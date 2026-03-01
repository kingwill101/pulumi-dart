import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_args.dart';
import 'source_control_github_action_configuration.dart';

/// Manages an App Service Web App or Function App Source Control Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Linux",
///     skuName: "P1v2",
/// });
/// const exampleLinuxWebApp = new azure.appservice.LinuxWebApp("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: exampleServicePlan.location,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleSourceControl = new azure.appservice.SourceControl("example", {
///     appId: exampleLinuxWebApp.id,
///     repoUrl: "https://github.com/Azure-Samples/python-docs-hello-world",
///     branch: "master",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Linux",
///     sku_name="P1v2")
/// example_linux_web_app = azure.appservice.LinuxWebApp("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example_service_plan.location,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_source_control = azure.appservice.SourceControl("example",
///     app_id=example_linux_web_app.id,
///     repo_url="https://github.com/Azure-Samples/python-docs-hello-world",
///     branch="master")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Linux",
///         SkuName = "P1v2",
///     });
///
///     var exampleLinuxWebApp = new Azure.AppService.LinuxWebApp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = exampleServicePlan.Location,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleSourceControl = new Azure.AppService.SourceControl("example", new()
///     {
///         AppId = exampleLinuxWebApp.Id,
///         RepoUrl = "https://github.com/Azure-Samples/python-docs-hello-world",
///         Branch = "master",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Linux"),
/// 			SkuName:           pulumi.String("P1v2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxWebApp, err := appservice.NewLinuxWebApp(ctx, "example", &appservice.LinuxWebAppArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          exampleServicePlan.Location,
/// 			ServicePlanId:     exampleServicePlan.ID(),
/// 			SiteConfig:        &appservice.LinuxWebAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewSourceControl(ctx, "example", &appservice.SourceControlArgs{
/// 			AppId:   exampleLinuxWebApp.ID(),
/// 			RepoUrl: pulumi.String("https://github.com/Azure-Samples/python-docs-hello-world"),
/// 			Branch:  pulumi.String("master"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.LinuxWebApp;
/// import com.pulumi.azure.appservice.LinuxWebAppArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxWebAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.SourceControl;
/// import com.pulumi.azure.appservice.SourceControlArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Linux")
///             .skuName("P1v2")
///             .build());
///
///         var exampleLinuxWebApp = new LinuxWebApp("exampleLinuxWebApp", LinuxWebAppArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(exampleServicePlan.location())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(LinuxWebAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleSourceControl = new SourceControl("exampleSourceControl", SourceControlArgs.builder()
///             .appId(exampleLinuxWebApp.id())
///             .repoUrl("https://github.com/Azure-Samples/python-docs-hello-world")
///             .branch("master")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Linux
///       skuName: P1v2
///   exampleLinuxWebApp:
///     type: azure:appservice:LinuxWebApp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${exampleServicePlan.location}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleSourceControl:
///     type: azure:appservice:SourceControl
///     name: example
///     properties:
///       appId: ${exampleLinuxWebApp.id}
///       repoUrl: https://github.com/Azure-Samples/python-docs-hello-world
///       branch: master
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
///
/// ## Import
///
/// App Service Source Controls can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/sourceControl:SourceControl example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1
/// ```
class SourceControl extends pulumi.CustomResource {
  /// The ID of the Windows or Linux Web App. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Function apps are not supported at this time.
  late final pulumi.Output<String> appId;
  /// The branch name to use for deployments. Changing this forces a new resource to be created.
  late final pulumi.Output<String> branch;
  /// A `github_action_configuration` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<SourceControlGithubActionConfiguration?> githubActionConfiguration;
  /// The URL for the repository. Changing this forces a new resource to be created.
  late final pulumi.Output<String> repoUrl;
  /// Should the Deployment Rollback be enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Azure can typically set this value automatically based on the `repo_url` value.
  late final pulumi.Output<bool?> rollbackEnabled;
  /// The SCM Type in use. This value is decoded by the service from the repository information supplied.
  late final pulumi.Output<String> scmType;
  /// Should the App use local Git configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> useLocalGit;
  /// Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> useManualIntegration;
  /// The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> useMercurial;
  /// Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied.
  late final pulumi.Output<bool> usesGithubAction;

  /// Creates a new [SourceControl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SourceControl]. {@macro pulumi_appservice_source_control_source_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SourceControl(
    String name, {
    SourceControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/sourceControl:SourceControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.branch = registerOutput<String>('branch');
    this.githubActionConfiguration = registerOutput<SourceControlGithubActionConfiguration?>('githubActionConfiguration');
    this.repoUrl = registerOutput<String>('repoUrl');
    this.rollbackEnabled = registerOutput<bool?>('rollbackEnabled');
    this.scmType = registerOutput<String>('scmType');
    this.useLocalGit = registerOutput<bool?>('useLocalGit');
    this.useManualIntegration = registerOutput<bool?>('useManualIntegration');
    this.useMercurial = registerOutput<bool?>('useMercurial');
    this.usesGithubAction = registerOutput<bool>('usesGithubAction');
  }
}
