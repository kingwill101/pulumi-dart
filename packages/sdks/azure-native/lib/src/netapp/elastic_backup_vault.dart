import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_backup_vault_args.dart';
import 'elastic_backup_vault_properties_response.dart';
import 'system_data_response.dart';

/// NetApp elastic backup vault resource
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticBackupVaults_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticBackupVault = new AzureNative.NetApp.ElasticBackupVault("elasticBackupVault", new()
///     {
///         AccountName = "account1",
///         BackupVaultName = "backupVault1",
///         Location = "eastus",
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
/// 		_, err := netapp.NewElasticBackupVault(ctx, "elasticBackupVault", &netapp.ElasticBackupVaultArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			BackupVaultName:   pulumi.String("backupVault1"),
/// 			Location:          pulumi.String("eastus"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.netapp.ElasticBackupVault;
/// import com.pulumi.azurenative.netapp.ElasticBackupVaultArgs;
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
///         var elasticBackupVault = new ElasticBackupVault("elasticBackupVault", ElasticBackupVaultArgs.builder()
///             .accountName("account1")
///             .backupVaultName("backupVault1")
///             .location("eastus")
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
/// const elasticBackupVault = new azure_native.netapp.ElasticBackupVault("elasticBackupVault", {
///     accountName: "account1",
///     backupVaultName: "backupVault1",
///     location: "eastus",
///     resourceGroupName: "myRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_backup_vault = azure_native.netapp.ElasticBackupVault("elasticBackupVault",
///     account_name="account1",
///     backup_vault_name="backupVault1",
///     location="eastus",
///     resource_group_name="myRG")
///
/// ```
///
/// ```yaml
/// resources:
///   elasticBackupVault:
///     type: azure-native:netapp:ElasticBackupVault
///     properties:
///       accountName: account1
///       backupVaultName: backupVault1
///       location: eastus
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
/// $ pulumi import azure-native:netapp:ElasticBackupVault account1/backupVault1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/elasticAccounts/{accountName}/elasticBackupVaults/{backupVaultName}
/// ```
class ElasticBackupVault extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticBackupVaultPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticBackupVault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticBackupVault]. {@macro pulumi_netapp_elastic_backup_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticBackupVault(
    String name, {
    ElasticBackupVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:netapp:ElasticBackupVault',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticBackupVaultPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ElasticBackupVaultPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
