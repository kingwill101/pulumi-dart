import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_resource_response_properties.dart';
import 'account_resource_response_system_data.dart';

/// Account details
///
/// Uses Azure REST API version 2023-04-13. In version 2.x of the Azure Native provider, it used API version 2023-04-13.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Account resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.GraphServices.Account("account", new()
///     {
///         Properties = new AzureNative.GraphServices.Inputs.AccountResourcePropertiesArgs
///         {
///             AppId = "11111111-aaaa-1111-bbbb-111111111111",
///         },
///         ResourceGroupName = "testResourceGroupGRAM",
///         ResourceName = "11111111-aaaa-1111-bbbb-1111111111111",
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
/// 	graphservices "github.com/pulumi/pulumi-azure-native-sdk/graphservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := graphservices.NewAccount(ctx, "account", &graphservices.AccountArgs{
/// 			Properties: &graphservices.AccountResourcePropertiesArgs{
/// 				AppId: pulumi.String("11111111-aaaa-1111-bbbb-111111111111"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testResourceGroupGRAM"),
/// 			ResourceName:      pulumi.String("11111111-aaaa-1111-bbbb-1111111111111"),
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
/// resource "azure-native_graphservices_account" "account" {
///   properties = {
///     app_id = "11111111-aaaa-1111-bbbb-111111111111"
///   }
///   resource_group_name = "testResourceGroupGRAM"
///   resource_name       = "11111111-aaaa-1111-bbbb-1111111111111"
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
/// import com.pulumi.azurenative.graphservices.Account;
/// import com.pulumi.azurenative.graphservices.AccountArgs;
/// import com.pulumi.azurenative.graphservices.inputs.AccountResourcePropertiesArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .properties(AccountResourcePropertiesArgs.builder()
///                 .appId("11111111-aaaa-1111-bbbb-111111111111")
///                 .build())
///             .resourceGroupName("testResourceGroupGRAM")
///             .resourceName("11111111-aaaa-1111-bbbb-1111111111111")
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
/// const account = new azure_native.graphservices.Account("account", {
///     properties: {
///         appId: "11111111-aaaa-1111-bbbb-111111111111",
///     },
///     resourceGroupName: "testResourceGroupGRAM",
///     resourceName: "11111111-aaaa-1111-bbbb-1111111111111",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.graphservices.Account("account",
///     properties={
///         "app_id": "11111111-aaaa-1111-bbbb-111111111111",
///     },
///     resource_group_name="testResourceGroupGRAM",
///     resource_name_="11111111-aaaa-1111-bbbb-1111111111111")
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:graphservices:Account
///     properties:
///       properties:
///         appId: 11111111-aaaa-1111-bbbb-111111111111
///       resourceGroupName: testResourceGroupGRAM
///       resourceName: 11111111-aaaa-1111-bbbb-1111111111111
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
/// $ pulumi import azure-native:graphservices:Account 11111111-aaaa-1111-bbbb-111111111111 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.GraphServices/accounts/{resourceName}
/// ```
class Account extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Location of the resource.
  late final pulumi.Output<String?> location;
  /// Azure resource name.
  late final pulumi.Output<String> name;
  /// Property bag from billing account
  late final pulumi.Output<AccountResourceResponseProperties> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<AccountResourceResponseSystemData> systemData;
  /// resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_graphservices_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:graphservices:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AccountResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<AccountResourceResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountResourceResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'azure-native:graphservices:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AccountResourceResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountResourceResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<AccountResourceResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountResourceResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
