import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_protection_plan_args.dart';

/// A DDoS protection plan in a resource group.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create DDoS protection plan
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ddosProtectionPlan = new AzureNative.Network.DdosProtectionPlan("ddosProtectionPlan", new()
///     {
///         DdosProtectionPlanName = "test-plan",
///         Location = "westus",
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewDdosProtectionPlan(ctx, "ddosProtectionPlan", &network.DdosProtectionPlanArgs{
/// 			DdosProtectionPlanName: pulumi.String("test-plan"),
/// 			Location:               pulumi.String("westus"),
/// 			ResourceGroupName:      pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.DdosProtectionPlan;
/// import com.pulumi.azurenative.network.DdosProtectionPlanArgs;
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
///         var ddosProtectionPlan = new DdosProtectionPlan("ddosProtectionPlan", DdosProtectionPlanArgs.builder()
///             .ddosProtectionPlanName("test-plan")
///             .location("westus")
///             .resourceGroupName("rg1")
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
/// const ddosProtectionPlan = new azure_native.network.DdosProtectionPlan("ddosProtectionPlan", {
///     ddosProtectionPlanName: "test-plan",
///     location: "westus",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ddos_protection_plan = azure_native.network.DdosProtectionPlan("ddosProtectionPlan",
///     ddos_protection_plan_name="test-plan",
///     location="westus",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   ddosProtectionPlan:
///     type: azure-native:network:DdosProtectionPlan
///     properties:
///       ddosProtectionPlanName: test-plan
///       location: westus
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:DdosProtectionPlan test-plan /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ddosProtectionPlans/{ddosProtectionPlanName}
/// ```
class DdosProtectionPlan extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The provisioning state of the DDoS protection plan resource.
  late final pulumi.Output<String> provisioningState;

  /// The list of public IPs associated with the DDoS protection plan resource. This list is read-only.
  late final pulumi.Output<List<Map<String, dynamic>>> publicIPAddresses;

  /// The resource GUID property of the DDoS protection plan resource. It uniquely identifies the resource, even if the user changes its name or migrate the resource across subscriptions or resource groups.
  late final pulumi.Output<String> resourceGuid;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// The list of virtual networks associated with the DDoS protection plan resource. This list is read-only.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualNetworks;

  /// Creates a new [DdosProtectionPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DdosProtectionPlan]. {@macro pulumi_network_ddos_protection_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DdosProtectionPlan(
    String name, {
    DdosProtectionPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:DdosProtectionPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicIPAddresses = registerOutput<List<Map<String, dynamic>>>(
      'publicIPAddresses',
    );
    resourceGuid = registerOutput<String>('resourceGuid');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualNetworks = registerOutput<List<Map<String, dynamic>>>(
      'virtualNetworks',
    );
  }
}
