import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_web_app_args.dart';
import 'static_web_app_basic_auth.dart';
import 'static_web_app_identity.dart';

/// Manages an App Service Static Web App.
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
/// const exampleStaticWebApp = new azure.appservice.StaticWebApp("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_static_web_app = azure.appservice.StaticWebApp("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
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
///     var exampleStaticWebApp = new Azure.AppService.StaticWebApp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
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
/// 		_, err = appservice.NewStaticWebApp(ctx, "example", &appservice.StaticWebAppArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// import com.pulumi.azure.appservice.StaticWebApp;
/// import com.pulumi.azure.appservice.StaticWebAppArgs;
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
///         var exampleStaticWebApp = new StaticWebApp("exampleStaticWebApp", StaticWebAppArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///   exampleStaticWebApp:
///     type: azure:appservice:StaticWebApp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-01-01
///
/// ## Import
///
/// Static Web Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/staticWebApp:StaticWebApp example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Web/staticSites/my-static-site1
/// ```
class StaticWebApp extends pulumi.CustomResource {
  /// The API key of this Static Web App, which is used for later interacting with this Static Web App from other clients, e.g. GitHub Action.
  late final pulumi.Output<String> apiKey;
  /// A key-value pair of App Settings.
  ///
  /// > **Note:** If using the `api_key` to deploy a Static Web App from a CI/CD pipeline or other source, `repository_branch` and `repository_url` will get updated in Azure, but it is not possible to set `repository_token` in that case. Use a `lifecycle` block to `ignore_changes` for `repository_branch` and`repository_url` if that is your deployment scenario.
  late final pulumi.Output<Map<String, String>?> appSettings;
  /// A `basic_auth` block as defined below.
  late final pulumi.Output<StaticWebAppBasicAuth?> basicAuth;
  /// Should changes to the configuration file be permitted. Defaults to `true`.
  late final pulumi.Output<bool?> configurationFileChangesEnabled;
  /// The default host name of the Static Web App.
  late final pulumi.Output<String> defaultHostName;
  /// An `identity` block as defined below.
  late final pulumi.Output<StaticWebAppIdentity?> identity;
  /// The Azure Region where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Static Web App. Changing this forces a new Static Web App to be created.
  late final pulumi.Output<String> name;
  /// Are Preview (Staging) environments enabled. Defaults to `true`.
  late final pulumi.Output<bool?> previewEnvironmentsEnabled;
  /// Should public network access be enabled for the Static Web App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// Repository branch to use for the Static Web App. `repository_url` and `repository_token` must also be set.
  late final pulumi.Output<String?> repositoryBranch;
  /// Repository Token with `admin` privileges to use for the Static Web App. `repository_branch` and `repository_url` must also be set.
  late final pulumi.Output<String?> repositoryToken;
  /// Repository URL to use for the Static Web App. `repository_branch` and `repository_token` must also be set.
  late final pulumi.Output<String?> repositoryUrl;
  /// The name of the Resource Group where the Static Web App should exist. Changing this forces a new Static Web App to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the SKU size of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  late final pulumi.Output<String?> skuSize;
  /// Specifies the SKU tier of the Static Web App. Possible values are `Free` or `Standard`. Defaults to `Free`.
  late final pulumi.Output<String?> skuTier;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [StaticWebApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticWebApp]. {@macro pulumi_appservice_static_web_app_static_web_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticWebApp(
    String name, {
    StaticWebAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/staticWebApp:StaticWebApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.appSettings = registerOutput<Map<String, String>?>('appSettings');
    this.basicAuth = registerOutput<StaticWebAppBasicAuth?>('basicAuth');
    this.configurationFileChangesEnabled = registerOutput<bool?>('configurationFileChangesEnabled');
    this.defaultHostName = registerOutput<String>('defaultHostName');
    this.identity = registerOutput<StaticWebAppIdentity?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.previewEnvironmentsEnabled = registerOutput<bool?>('previewEnvironmentsEnabled');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.repositoryBranch = registerOutput<String?>('repositoryBranch');
    this.repositoryToken = registerOutput<String?>('repositoryToken');
    this.repositoryUrl = registerOutput<String?>('repositoryUrl');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.skuSize = registerOutput<String?>('skuSize');
    this.skuTier = registerOutput<String?>('skuTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
