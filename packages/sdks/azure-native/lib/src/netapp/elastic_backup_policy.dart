import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_backup_policy_args.dart';
import 'elastic_backup_policy_properties_response.dart';
import 'system_data_response.dart';

/// NetApp Elastic Backup Policy resource
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2025-12-15-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-04-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticBackupPolicies_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticBackupPolicy = new AzureNative.NetApp.ElasticBackupPolicy("elasticBackupPolicy", new()
///     {
///         AccountName = "account1",
///         BackupPolicyName = "backupPolicyName",
///         Location = "westus",
///         Properties = new AzureNative.NetApp.Inputs.ElasticBackupPolicyPropertiesArgs
///         {
///             DailyBackupsToKeep = 10,
///             MonthlyBackupsToKeep = 10,
///             PolicyState = AzureNative.NetApp.ElasticBackupPolicyState.Enabled,
///             WeeklyBackupsToKeep = 10,
///         },
///         ResourceGroupName = "myRG",
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
/// 		_, err := netapp.NewElasticBackupPolicy(ctx, "elasticBackupPolicy", &netapp.ElasticBackupPolicyArgs{
/// 			AccountName:      pulumi.String("account1"),
/// 			BackupPolicyName: pulumi.String("backupPolicyName"),
/// 			Location:         pulumi.String("westus"),
/// 			Properties: &netapp.ElasticBackupPolicyPropertiesArgs{
/// 				DailyBackupsToKeep:   pulumi.Int(10),
/// 				MonthlyBackupsToKeep: pulumi.Int(10),
/// 				PolicyState:          pulumi.String(netapp.ElasticBackupPolicyStateEnabled),
/// 				WeeklyBackupsToKeep:  pulumi.Int(10),
/// 			},
/// 			ResourceGroupName: pulumi.String("myRG"),
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
/// resource "azure-native_netapp_elasticbackuppolicy" "elasticBackupPolicy" {
///   account_name       = "account1"
///   backup_policy_name = "backupPolicyName"
///   location           = "westus"
///   properties = {
///     daily_backups_to_keep   = 10
///     monthly_backups_to_keep = 10
///     policy_state            = "Enabled"
///     weekly_backups_to_keep  = 10
///   }
///   resource_group_name = "myRG"
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
/// import com.pulumi.azurenative.netapp.ElasticBackupPolicy;
/// import com.pulumi.azurenative.netapp.ElasticBackupPolicyArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticBackupPolicyPropertiesArgs;
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
///         var elasticBackupPolicy = new ElasticBackupPolicy("elasticBackupPolicy", ElasticBackupPolicyArgs.builder()
///             .accountName("account1")
///             .backupPolicyName("backupPolicyName")
///             .location("westus")
///             .properties(ElasticBackupPolicyPropertiesArgs.builder()
///                 .dailyBackupsToKeep(10)
///                 .monthlyBackupsToKeep(10)
///                 .policyState("Enabled")
///                 .weeklyBackupsToKeep(10)
///                 .build())
///             .resourceGroupName("myRG")
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
/// const elasticBackupPolicy = new azure_native.netapp.ElasticBackupPolicy("elasticBackupPolicy", {
///     accountName: "account1",
///     backupPolicyName: "backupPolicyName",
///     location: "westus",
///     properties: {
///         dailyBackupsToKeep: 10,
///         monthlyBackupsToKeep: 10,
///         policyState: azure_native.netapp.ElasticBackupPolicyState.Enabled,
///         weeklyBackupsToKeep: 10,
///     },
///     resourceGroupName: "myRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_backup_policy = azure_native.netapp.ElasticBackupPolicy("elasticBackupPolicy",
///     account_name="account1",
///     backup_policy_name="backupPolicyName",
///     location="westus",
///     properties={
///         "daily_backups_to_keep": 10,
///         "monthly_backups_to_keep": 10,
///         "policy_state": azure_native.netapp.ElasticBackupPolicyState.ENABLED,
///         "weekly_backups_to_keep": 10,
///     },
///     resource_group_name="myRG")
///
/// ```
///
/// ```yaml
/// resources:
///   elasticBackupPolicy:
///     type: azure-native:netapp:ElasticBackupPolicy
///     properties:
///       accountName: account1
///       backupPolicyName: backupPolicyName
///       location: westus
///       properties:
///         dailyBackupsToKeep: 10
///         monthlyBackupsToKeep: 10
///         policyState: Enabled
///         weeklyBackupsToKeep: 10
///       resourceGroupName: myRG
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
/// $ pulumi import azure-native:netapp:ElasticBackupPolicy account1/backupPolicyName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/elasticAccounts/{accountName}/elasticBackupPolicies/{backupPolicyName}
/// ```
class ElasticBackupPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticBackupPolicyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticBackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticBackupPolicy]. {@macro pulumi_netapp_elastic_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticBackupPolicy(
    String name, {
    ElasticBackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:ElasticBackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticBackupPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticBackupPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
