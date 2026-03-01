import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_plan_args.dart';
import 'extended_location_response.dart';
import 'hosting_environment_profile_response.dart';
import 'kube_environment_profile_response.dart';
import 'sku_description_response.dart';

/// App Service plan.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-09-01, 2018-02-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Or Update App Service plan
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appServicePlan = new AzureNative.Web.AppServicePlan("appServicePlan", new()
///     {
///         Kind = "app",
///         Location = "East US",
///         Name = "testsf6141",
///         ResourceGroupName = "testrg123",
///         Sku = new AzureNative.Web.Inputs.SkuDescriptionArgs
///         {
///             Capacity = 1,
///             Family = "P",
///             Name = "P1",
///             Size = "P1",
///             Tier = "Premium",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewAppServicePlan(ctx, "appServicePlan", &web.AppServicePlanArgs{
/// 			Kind:              pulumi.String("app"),
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("testsf6141"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			Sku: &web.SkuDescriptionArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Family:   pulumi.String("P"),
/// 				Name:     pulumi.String("P1"),
/// 				Size:     pulumi.String("P1"),
/// 				Tier:     pulumi.String("Premium"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.AppServicePlan;
/// import com.pulumi.azurenative.web.AppServicePlanArgs;
/// import com.pulumi.azurenative.web.inputs.SkuDescriptionArgs;
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
///         var appServicePlan = new AppServicePlan("appServicePlan", AppServicePlanArgs.builder()
///             .kind("app")
///             .location("East US")
///             .name("testsf6141")
///             .resourceGroupName("testrg123")
///             .sku(SkuDescriptionArgs.builder()
///                 .capacity(1)
///                 .family("P")
///                 .name("P1")
///                 .size("P1")
///                 .tier("Premium")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const appServicePlan = new azure_native.web.AppServicePlan("appServicePlan", {
///     kind: "app",
///     location: "East US",
///     name: "testsf6141",
///     resourceGroupName: "testrg123",
///     sku: {
///         capacity: 1,
///         family: "P",
///         name: "P1",
///         size: "P1",
///         tier: "Premium",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_service_plan = azure_native.web.AppServicePlan("appServicePlan",
///     kind="app",
///     location="East US",
///     name="testsf6141",
///     resource_group_name="testrg123",
///     sku={
///         "capacity": 1,
///         "family": "P",
///         "name": "P1",
///         "size": "P1",
///         "tier": "Premium",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   appServicePlan:
///     type: azure-native:web:AppServicePlan
///     properties:
///       kind: app
///       location: East US
///       name: testsf6141
///       resourceGroupName: testrg123
///       sku:
///         capacity: 1
///         family: P
///         name: P1
///         size: P1
///         tier: Premium
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:AppServicePlan testsf6141 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/serverfarms/{name}
/// ```
class AppServicePlan extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  late final pulumi.Output<bool?> elasticScaleEnabled;
  /// Extended Location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The time when the server farm free offer expires.
  late final pulumi.Output<String?> freeOfferExpirationTime;
  /// Geographical location for the App Service plan.
  late final pulumi.Output<String> geoRegion;
  /// Specification for the App Service Environment to use for the App Service plan.
  late final pulumi.Output<HostingEnvironmentProfileResponse?> hostingEnvironmentProfile;
  /// If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  late final pulumi.Output<bool?> hyperV;
  /// If <code>true</code>, this App Service Plan owns spot instances.
  late final pulumi.Output<bool?> isSpot;
  /// Obsolete: If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  late final pulumi.Output<bool?> isXenon;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;
  /// Specification for the Kubernetes Environment to use for the App Service plan.
  late final pulumi.Output<KubeEnvironmentProfileResponse?> kubeEnvironmentProfile;
  /// Resource Location.
  late final pulumi.Output<String> location;
  /// Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  late final pulumi.Output<int?> maximumElasticWorkerCount;
  /// Maximum number of instances that can be assigned to this App Service plan.
  late final pulumi.Output<int> maximumNumberOfWorkers;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Number of apps assigned to this App Service plan.
  late final pulumi.Output<int> numberOfSites;
  /// The number of instances that are assigned to this App Service plan.
  late final pulumi.Output<int> numberOfWorkers;
  /// If <code>true</code>, apps assigned to this App Service plan can be scaled independently.
  /// If <code>false</code>, apps assigned to this App Service plan will scale to all instances of the plan.
  late final pulumi.Output<bool?> perSiteScaling;
  /// Provisioning state of the App Service Plan.
  late final pulumi.Output<String> provisioningState;
  /// If Linux app service plan <code>true</code>, <code>false</code> otherwise.
  late final pulumi.Output<bool?> reserved;
  /// Resource group of the App Service plan.
  late final pulumi.Output<String> resourceGroup;
  /// Description of a SKU for a scalable resource.
  late final pulumi.Output<SkuDescriptionResponse?> sku;
  /// The time when the server farm expires. Valid only if it is a spot server farm.
  late final pulumi.Output<String?> spotExpirationTime;
  /// App Service plan status.
  late final pulumi.Output<String> status;
  /// App Service plan subscription.
  late final pulumi.Output<String> subscription;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Scaling worker count.
  late final pulumi.Output<int?> targetWorkerCount;
  /// Scaling worker size ID.
  late final pulumi.Output<int?> targetWorkerSizeId;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Target worker tier assigned to the App Service plan.
  late final pulumi.Output<String?> workerTierName;
  /// If <code>true</code>, this App Service Plan will perform availability zone balancing.
  /// If <code>false</code>, this App Service Plan will not perform availability zone balancing.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [AppServicePlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppServicePlan]. {@macro pulumi_web_app_service_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppServicePlan(
    String name, {
    AppServicePlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:AppServicePlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.elasticScaleEnabled = registerOutput<bool?>('elasticScaleEnabled');
    this.extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation');
    this.freeOfferExpirationTime = registerOutput<String?>('freeOfferExpirationTime');
    this.geoRegion = registerOutput<String>('geoRegion');
    this.hostingEnvironmentProfile = registerOutput<HostingEnvironmentProfileResponse?>('hostingEnvironmentProfile');
    this.hyperV = registerOutput<bool?>('hyperV');
    this.isSpot = registerOutput<bool?>('isSpot');
    this.isXenon = registerOutput<bool?>('isXenon');
    this.kind = registerOutput<String?>('kind');
    this.kubeEnvironmentProfile = registerOutput<KubeEnvironmentProfileResponse?>('kubeEnvironmentProfile');
    this.location = registerOutput<String>('location');
    this.maximumElasticWorkerCount = registerOutput<int?>('maximumElasticWorkerCount');
    this.maximumNumberOfWorkers = registerOutput<int>('maximumNumberOfWorkers');
    this.name = registerOutput<String>('name');
    this.numberOfSites = registerOutput<int>('numberOfSites');
    this.numberOfWorkers = registerOutput<int>('numberOfWorkers');
    this.perSiteScaling = registerOutput<bool?>('perSiteScaling');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.reserved = registerOutput<bool?>('reserved');
    this.resourceGroup = registerOutput<String>('resourceGroup');
    this.sku = registerOutput<SkuDescriptionResponse?>('sku');
    this.spotExpirationTime = registerOutput<String?>('spotExpirationTime');
    this.status = registerOutput<String>('status');
    this.subscription = registerOutput<String>('subscription');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetWorkerCount = registerOutput<int?>('targetWorkerCount');
    this.targetWorkerSizeId = registerOutput<int?>('targetWorkerSizeId');
    this.type = registerOutput<String>('type');
    this.workerTierName = registerOutput<String?>('workerTierName');
    this.zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
