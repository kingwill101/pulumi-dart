import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_active_slot_args.dart';

/// Manages a Web App Active Slot.
///
/// ## Example Usage
///
/// ### Windows Web App
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
///     name: "example-plan",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Windows",
///     skuName: "P1v2",
/// });
/// const exampleWindowsWebApp = new azure.appservice.WindowsWebApp("example", {
///     name: "example-windows-web-app",
///     resourceGroupName: example.name,
///     location: exampleServicePlan.location,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleWindowsWebAppSlot = new azure.appservice.WindowsWebAppSlot("example", {
///     name: "example-windows-web-app-slot",
///     appServiceId: exampleWindowsWebApp.name,
///     siteConfig: {},
/// });
/// const exampleWebAppActiveSlot = new azure.appservice.WebAppActiveSlot("example", {slotId: exampleWindowsWebAppSlot.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-plan",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Windows",
///     sku_name="P1v2")
/// example_windows_web_app = azure.appservice.WindowsWebApp("example",
///     name="example-windows-web-app",
///     resource_group_name=example.name,
///     location=example_service_plan.location,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_windows_web_app_slot = azure.appservice.WindowsWebAppSlot("example",
///     name="example-windows-web-app-slot",
///     app_service_id=example_windows_web_app.name,
///     site_config={})
/// example_web_app_active_slot = azure.appservice.WebAppActiveSlot("example", slot_id=example_windows_web_app_slot.id)
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
///         Name = "example-plan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Windows",
///         SkuName = "P1v2",
///     });
///
///     var exampleWindowsWebApp = new Azure.AppService.WindowsWebApp("example", new()
///     {
///         Name = "example-windows-web-app",
///         ResourceGroupName = example.Name,
///         Location = exampleServicePlan.Location,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleWindowsWebAppSlot = new Azure.AppService.WindowsWebAppSlot("example", new()
///     {
///         Name = "example-windows-web-app-slot",
///         AppServiceId = exampleWindowsWebApp.Name,
///         SiteConfig = null,
///     });
///
///     var exampleWebAppActiveSlot = new Azure.AppService.WebAppActiveSlot("example", new()
///     {
///         SlotId = exampleWindowsWebAppSlot.Id,
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
/// 			Name:              pulumi.String("example-plan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Windows"),
/// 			SkuName:           pulumi.String("P1v2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWindowsWebApp, err := appservice.NewWindowsWebApp(ctx, "example", &appservice.WindowsWebAppArgs{
/// 			Name:              pulumi.String("example-windows-web-app"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          exampleServicePlan.Location,
/// 			ServicePlanId:     exampleServicePlan.ID(),
/// 			SiteConfig:        &appservice.WindowsWebAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWindowsWebAppSlot, err := appservice.NewWindowsWebAppSlot(ctx, "example", &appservice.WindowsWebAppSlotArgs{
/// 			Name:         pulumi.String("example-windows-web-app-slot"),
/// 			AppServiceId: exampleWindowsWebApp.Name,
/// 			SiteConfig:   &appservice.WindowsWebAppSlotSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewWebAppActiveSlot(ctx, "example", &appservice.WebAppActiveSlotArgs{
/// 			SlotId: exampleWindowsWebAppSlot.ID(),
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
/// import com.pulumi.azure.appservice.WindowsWebApp;
/// import com.pulumi.azure.appservice.WindowsWebAppArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsWebAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.WindowsWebAppSlot;
/// import com.pulumi.azure.appservice.WindowsWebAppSlotArgs;
/// import com.pulumi.azure.appservice.inputs.WindowsWebAppSlotSiteConfigArgs;
/// import com.pulumi.azure.appservice.WebAppActiveSlot;
/// import com.pulumi.azure.appservice.WebAppActiveSlotArgs;
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
///             .name("example-plan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Windows")
///             .skuName("P1v2")
///             .build());
///
///         var exampleWindowsWebApp = new WindowsWebApp("exampleWindowsWebApp", WindowsWebAppArgs.builder()
///             .name("example-windows-web-app")
///             .resourceGroupName(example.name())
///             .location(exampleServicePlan.location())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(WindowsWebAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleWindowsWebAppSlot = new WindowsWebAppSlot("exampleWindowsWebAppSlot", WindowsWebAppSlotArgs.builder()
///             .name("example-windows-web-app-slot")
///             .appServiceId(exampleWindowsWebApp.name())
///             .siteConfig(WindowsWebAppSlotSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleWebAppActiveSlot = new WebAppActiveSlot("exampleWebAppActiveSlot", WebAppActiveSlotArgs.builder()
///             .slotId(exampleWindowsWebAppSlot.id())
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
///       name: example-plan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Windows
///       skuName: P1v2
///   exampleWindowsWebApp:
///     type: azure:appservice:WindowsWebApp
///     name: example
///     properties:
///       name: example-windows-web-app
///       resourceGroupName: ${example.name}
///       location: ${exampleServicePlan.location}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleWindowsWebAppSlot:
///     type: azure:appservice:WindowsWebAppSlot
///     name: example
///     properties:
///       name: example-windows-web-app-slot
///       appServiceId: ${exampleWindowsWebApp.name}
///       siteConfig: {}
///   exampleWebAppActiveSlot:
///     type: azure:appservice:WebAppActiveSlot
///     name: example
///     properties:
///       slotId: ${exampleWindowsWebAppSlot.id}
/// ```
///
///
/// ### Linux Web App
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
///     name: "example-plan",
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Linux",
///     skuName: "P1v2",
/// });
/// const exampleLinuxWebApp = new azure.appservice.LinuxWebApp("example", {
///     name: "example-linux-web-app",
///     resourceGroupName: example.name,
///     location: exampleServicePlan.location,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleLinuxWebAppSlot = new azure.appservice.LinuxWebAppSlot("example", {
///     name: "example-linux-web-app-slot",
///     appServiceName: exampleLinuxWebApp.name,
///     location: exampleServicePlan.location,
///     servicePlanId: exampleServicePlan.id,
///     siteConfig: {},
/// });
/// const exampleWebAppActiveSlot = new azure.appservice.WebAppActiveSlot("example", {slotId: exampleLinuxWebAppSlot.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-plan",
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Linux",
///     sku_name="P1v2")
/// example_linux_web_app = azure.appservice.LinuxWebApp("example",
///     name="example-linux-web-app",
///     resource_group_name=example.name,
///     location=example_service_plan.location,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_linux_web_app_slot = azure.appservice.LinuxWebAppSlot("example",
///     name="example-linux-web-app-slot",
///     app_service_name=example_linux_web_app.name,
///     location=example_service_plan.location,
///     service_plan_id=example_service_plan.id,
///     site_config={})
/// example_web_app_active_slot = azure.appservice.WebAppActiveSlot("example", slot_id=example_linux_web_app_slot.id)
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
///         Name = "example-plan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Linux",
///         SkuName = "P1v2",
///     });
///
///     var exampleLinuxWebApp = new Azure.AppService.LinuxWebApp("example", new()
///     {
///         Name = "example-linux-web-app",
///         ResourceGroupName = example.Name,
///         Location = exampleServicePlan.Location,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleLinuxWebAppSlot = new Azure.AppService.LinuxWebAppSlot("example", new()
///     {
///         Name = "example-linux-web-app-slot",
///         AppServiceName = exampleLinuxWebApp.Name,
///         Location = exampleServicePlan.Location,
///         ServicePlanId = exampleServicePlan.Id,
///         SiteConfig = null,
///     });
///
///     var exampleWebAppActiveSlot = new Azure.AppService.WebAppActiveSlot("example", new()
///     {
///         SlotId = exampleLinuxWebAppSlot.Id,
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
/// 			Name:              pulumi.String("example-plan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Linux"),
/// 			SkuName:           pulumi.String("P1v2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxWebApp, err := appservice.NewLinuxWebApp(ctx, "example", &appservice.LinuxWebAppArgs{
/// 			Name:              pulumi.String("example-linux-web-app"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          exampleServicePlan.Location,
/// 			ServicePlanId:     exampleServicePlan.ID(),
/// 			SiteConfig:        &appservice.LinuxWebAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxWebAppSlot, err := appservice.NewLinuxWebAppSlot(ctx, "example", &appservice.LinuxWebAppSlotArgs{
/// 			Name:           pulumi.String("example-linux-web-app-slot"),
/// 			AppServiceName: exampleLinuxWebApp.Name,
/// 			Location:       exampleServicePlan.Location,
/// 			ServicePlanId:  exampleServicePlan.ID(),
/// 			SiteConfig:     &appservice.LinuxWebAppSlotSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewWebAppActiveSlot(ctx, "example", &appservice.WebAppActiveSlotArgs{
/// 			SlotId: exampleLinuxWebAppSlot.ID(),
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
/// import com.pulumi.azure.appservice.LinuxWebAppSlot;
/// import com.pulumi.azure.appservice.LinuxWebAppSlotArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxWebAppSlotSiteConfigArgs;
/// import com.pulumi.azure.appservice.WebAppActiveSlot;
/// import com.pulumi.azure.appservice.WebAppActiveSlotArgs;
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
///             .name("example-plan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Linux")
///             .skuName("P1v2")
///             .build());
///
///         var exampleLinuxWebApp = new LinuxWebApp("exampleLinuxWebApp", LinuxWebAppArgs.builder()
///             .name("example-linux-web-app")
///             .resourceGroupName(example.name())
///             .location(exampleServicePlan.location())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(LinuxWebAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleLinuxWebAppSlot = new LinuxWebAppSlot("exampleLinuxWebAppSlot", LinuxWebAppSlotArgs.builder()
///             .name("example-linux-web-app-slot")
///             .appServiceName(exampleLinuxWebApp.name())
///             .location(exampleServicePlan.location())
///             .servicePlanId(exampleServicePlan.id())
///             .siteConfig(LinuxWebAppSlotSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleWebAppActiveSlot = new WebAppActiveSlot("exampleWebAppActiveSlot", WebAppActiveSlotArgs.builder()
///             .slotId(exampleLinuxWebAppSlot.id())
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
///       name: example-plan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Linux
///       skuName: P1v2
///   exampleLinuxWebApp:
///     type: azure:appservice:LinuxWebApp
///     name: example
///     properties:
///       name: example-linux-web-app
///       resourceGroupName: ${example.name}
///       location: ${exampleServicePlan.location}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleLinuxWebAppSlot:
///     type: azure:appservice:LinuxWebAppSlot
///     name: example
///     properties:
///       name: example-linux-web-app-slot
///       appServiceName: ${exampleLinuxWebApp.name}
///       location: ${exampleServicePlan.location}
///       servicePlanId: ${exampleServicePlan.id}
///       siteConfig: {}
///   exampleWebAppActiveSlot:
///     type: azure:appservice:WebAppActiveSlot
///     name: example
///     properties:
///       slotId: ${exampleLinuxWebAppSlot.id}
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
/// a Web App Active Slot can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/webAppActiveSlot:WebAppActiveSlot example "/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1"
/// ```
class WebAppActiveSlot extends pulumi.CustomResource {
  /// The timestamp of the last successful swap with `Production`.
  late final pulumi.Output<String> lastSuccessfulSwap;
  /// The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> overwriteNetworkConfig;
  /// The ID of the Slot to swap with `Production`.
  late final pulumi.Output<String> slotId;

  /// Creates a new [WebAppActiveSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppActiveSlot]. {@macro pulumi_appservice_web_app_active_slot_web_app_active_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppActiveSlot(
    String name, {
    WebAppActiveSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/webAppActiveSlot:WebAppActiveSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.lastSuccessfulSwap = registerOutput<String>('lastSuccessfulSwap');
    this.overwriteNetworkConfig = registerOutput<bool?>('overwriteNetworkConfig');
    this.slotId = registerOutput<String>('slotId');
  }
}
