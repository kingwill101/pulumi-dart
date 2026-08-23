import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_linked_storage_account_args.dart';
import 'system_data_response.dart';

/// An Application Insights component linked storage accounts
///
/// Uses Azure REST API version 2020-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ComponentLinkedStorageAccountsCreateAndUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var componentLinkedStorageAccount = new AzureNative.ApplicationInsights.ComponentLinkedStorageAccount("componentLinkedStorageAccount", new()
///     {
///         LinkedStorageAccount = "/subscriptions/86dc51d3-92ed-4d7e-947a-775ea79b4918/resourceGroups/someResourceGroupName/providers/Microsoft.Storage/storageAccounts/storageaccountname",
///         ResourceGroupName = "someResourceGroupName",
///         ResourceName = "myComponent",
///         StorageType = "ServiceProfiler",
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
/// 	applicationinsights "github.com/pulumi/pulumi-azure-native-sdk/applicationinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationinsights.NewComponentLinkedStorageAccount(ctx, "componentLinkedStorageAccount", &applicationinsights.ComponentLinkedStorageAccountArgs{
/// 			LinkedStorageAccount: pulumi.String("/subscriptions/86dc51d3-92ed-4d7e-947a-775ea79b4918/resourceGroups/someResourceGroupName/providers/Microsoft.Storage/storageAccounts/storageaccountname"),
/// 			ResourceGroupName:    pulumi.String("someResourceGroupName"),
/// 			ResourceName:         pulumi.String("myComponent"),
/// 			StorageType:          pulumi.String("ServiceProfiler"),
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
/// resource "azure-native_applicationinsights_componentlinkedstorageaccount" "componentLinkedStorageAccount" {
///   linked_storage_account = "/subscriptions/86dc51d3-92ed-4d7e-947a-775ea79b4918/resourceGroups/someResourceGroupName/providers/Microsoft.Storage/storageAccounts/storageaccountname"
///   resource_group_name    = "someResourceGroupName"
///   resource_name          = "myComponent"
///   storage_type           = "ServiceProfiler"
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
/// import com.pulumi.azurenative.applicationinsights.ComponentLinkedStorageAccount;
/// import com.pulumi.azurenative.applicationinsights.ComponentLinkedStorageAccountArgs;
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
///         var componentLinkedStorageAccount = new ComponentLinkedStorageAccount("componentLinkedStorageAccount", ComponentLinkedStorageAccountArgs.builder()
///             .linkedStorageAccount("/subscriptions/86dc51d3-92ed-4d7e-947a-775ea79b4918/resourceGroups/someResourceGroupName/providers/Microsoft.Storage/storageAccounts/storageaccountname")
///             .resourceGroupName("someResourceGroupName")
///             .resourceName("myComponent")
///             .storageType("ServiceProfiler")
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
/// const componentLinkedStorageAccount = new azure_native.applicationinsights.ComponentLinkedStorageAccount("componentLinkedStorageAccount", {
///     linkedStorageAccount: "/subscriptions/86dc51d3-92ed-4d7e-947a-775ea79b4918/resourceGroups/someResourceGroupName/providers/Microsoft.Storage/storageAccounts/storageaccountname",
///     resourceGroupName: "someResourceGroupName",
///     resourceName: "myComponent",
///     storageType: "ServiceProfiler",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// component_linked_storage_account = azure_native.applicationinsights.ComponentLinkedStorageAccount("componentLinkedStorageAccount",
///     linked_storage_account="/subscriptions/86dc51d3-92ed-4d7e-947a-775ea79b4918/resourceGroups/someResourceGroupName/providers/Microsoft.Storage/storageAccounts/storageaccountname",
///     resource_group_name="someResourceGroupName",
///     resource_name_="myComponent",
///     storage_type="ServiceProfiler")
///
/// ```
///
/// ```yaml
/// resources:
///   componentLinkedStorageAccount:
///     type: azure-native:applicationinsights:ComponentLinkedStorageAccount
///     properties:
///       linkedStorageAccount: /subscriptions/86dc51d3-92ed-4d7e-947a-775ea79b4918/resourceGroups/someResourceGroupName/providers/Microsoft.Storage/storageAccounts/storageaccountname
///       resourceGroupName: someResourceGroupName
///       resourceName: myComponent
///       storageType: ServiceProfiler
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
/// $ pulumi import azure-native:applicationinsights:ComponentLinkedStorageAccount serviceprofile /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/components/{resourceName}/linkedStorageAccounts/{storageType}
/// ```
class ComponentLinkedStorageAccount extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Linked storage account resource ID
  late final pulumi.Output<String?> linkedStorageAccount;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ComponentLinkedStorageAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComponentLinkedStorageAccount]. {@macro pulumi_applicationinsights_component_linked_storage_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComponentLinkedStorageAccount(
    String name, {
    ComponentLinkedStorageAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applicationinsights:ComponentLinkedStorageAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    linkedStorageAccount = registerOutput<String?>('linkedStorageAccount');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
