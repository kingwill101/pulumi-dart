import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_pool_volume_quota_rule_args.dart';
import 'system_data_response.dart';

/// Quota Rule of a Volume
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview, 2025-12-01, 2025-12-15-preview, 2026-01-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-04-01, 2026-04-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VolumeQuotaRules_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityPoolVolumeQuotaRule = new AzureNative.NetApp.CapacityPoolVolumeQuotaRule("capacityPoolVolumeQuotaRule", new()
///     {
///         AccountName = "account-9957",
///         Location = "westus",
///         PoolName = "pool-5210",
///         QuotaSizeInKiBs = 100005,
///         QuotaTarget = "1821",
///         QuotaType = AzureNative.NetApp.Type.IndividualUserQuota,
///         ResourceGroupName = "myRG",
///         VolumeName = "volume-6387",
///         VolumeQuotaRuleName = "rule-0004",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewCapacityPoolVolumeQuotaRule(ctx, "capacityPoolVolumeQuotaRule", &netapp.CapacityPoolVolumeQuotaRuleArgs{
/// 			AccountName:         pulumi.String("account-9957"),
/// 			Location:            pulumi.String("westus"),
/// 			PoolName:            pulumi.String("pool-5210"),
/// 			QuotaSizeInKiBs:     pulumi.Float64(100005),
/// 			QuotaTarget:         pulumi.String("1821"),
/// 			QuotaType:           pulumi.String(netapp.TypeIndividualUserQuota),
/// 			ResourceGroupName:   pulumi.String("myRG"),
/// 			VolumeName:          pulumi.String("volume-6387"),
/// 			VolumeQuotaRuleName: pulumi.String("rule-0004"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_netapp_capacitypoolvolumequotarule" "capacityPoolVolumeQuotaRule" {
///   account_name           = "account-9957"
///   location               = "westus"
///   pool_name              = "pool-5210"
///   quota_size_in_ki_bs    = 100005
///   quota_target           = "1821"
///   quota_type             = "IndividualUserQuota"
///   resource_group_name    = "myRG"
///   volume_name            = "volume-6387"
///   volume_quota_rule_name = "rule-0004"
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
/// import com.pulumi.azurenative.netapp.CapacityPoolVolumeQuotaRule;
/// import com.pulumi.azurenative.netapp.CapacityPoolVolumeQuotaRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var capacityPoolVolumeQuotaRule = new CapacityPoolVolumeQuotaRule("capacityPoolVolumeQuotaRule", CapacityPoolVolumeQuotaRuleArgs.builder()
///             .accountName("account-9957")
///             .location("westus")
///             .poolName("pool-5210")
///             .quotaSizeInKiBs(100005.0)
///             .quotaTarget("1821")
///             .quotaType("IndividualUserQuota")
///             .resourceGroupName("myRG")
///             .volumeName("volume-6387")
///             .volumeQuotaRuleName("rule-0004")
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
/// const capacityPoolVolumeQuotaRule = new azure_native.netapp.CapacityPoolVolumeQuotaRule("capacityPoolVolumeQuotaRule", {
///     accountName: "account-9957",
///     location: "westus",
///     poolName: "pool-5210",
///     quotaSizeInKiBs: 100005,
///     quotaTarget: "1821",
///     quotaType: azure_native.netapp.Type.IndividualUserQuota,
///     resourceGroupName: "myRG",
///     volumeName: "volume-6387",
///     volumeQuotaRuleName: "rule-0004",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_pool_volume_quota_rule = azure_native.netapp.CapacityPoolVolumeQuotaRule("capacityPoolVolumeQuotaRule",
///     account_name="account-9957",
///     location="westus",
///     pool_name="pool-5210",
///     quota_size_in_ki_bs=float(100005),
///     quota_target="1821",
///     quota_type=azure_native.netapp.Type.INDIVIDUAL_USER_QUOTA,
///     resource_group_name="myRG",
///     volume_name="volume-6387",
///     volume_quota_rule_name="rule-0004")
///
/// ```
///
/// ```yaml
/// resources:
///   capacityPoolVolumeQuotaRule:
///     type: azure-native:netapp:CapacityPoolVolumeQuotaRule
///     properties:
///       accountName: account-9957
///       location: westus
///       poolName: pool-5210
///       quotaSizeInKiBs: 100005
///       quotaTarget: '1821'
///       quotaType: IndividualUserQuota
///       resourceGroupName: myRG
///       volumeName: volume-6387
///       volumeQuotaRuleName: rule-0004
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
/// $ pulumi import azure-native:netapp:CapacityPoolVolumeQuotaRule account-9957/pool-5210/volume-6387/rule-0004 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/capacityPools/{poolName}/volumes/{volumeName}/volumeQuotaRules/{volumeQuotaRuleName}
/// ```
class CapacityPoolVolumeQuotaRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets the status of the VolumeQuotaRule at the time the operation was called.
  late final pulumi.Output<String> provisioningState;
  /// Size of quota
  late final pulumi.Output<double?> quotaSizeInKiBs;
  /// UserID/GroupID/SID based on the quota target type. UserID and groupID can be found by running ‘id’ or ‘getent’ command for the user or group and SID can be found by running &lt;wmic useraccount where name='user-name' get sid&gt;
  late final pulumi.Output<String?> quotaTarget;
  /// Type of quota
  late final pulumi.Output<String?> quotaType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CapacityPoolVolumeQuotaRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityPoolVolumeQuotaRule]. {@macro pulumi_netapp_capacity_pool_volume_quota_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityPoolVolumeQuotaRule(
    String name, {
    CapacityPoolVolumeQuotaRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:CapacityPoolVolumeQuotaRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    quotaSizeInKiBs = registerOutput<double?>('quotaSizeInKiBs');
    quotaTarget = registerOutput<String?>('quotaTarget');
    quotaType = registerOutput<String?>('quotaType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
