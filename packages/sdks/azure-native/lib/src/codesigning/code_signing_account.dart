import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_sku_response.dart';
import 'code_signing_account_args.dart';
import 'system_data_response.dart';

/// Artifact signing account resource.
///
/// Uses Azure REST API version 2024-09-30-preview. In version 2.x of the Azure Native provider, it used API version 2024-02-05-preview.
///
/// Other available API versions: 2024-02-05-preview, 2025-10-13, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native codesigning [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create an artifact signing account.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var codeSigningAccount = new AzureNative.CodeSigning.CodeSigningAccount("codeSigningAccount", new()
///     {
///         AccountName = "MyAccount",
///         Location = "westus",
///         ResourceGroupName = "MyResourceGroup",
///         Sku = new AzureNative.CodeSigning.Inputs.AccountSkuArgs
///         {
///             Name = AzureNative.CodeSigning.SkuName.Basic,
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
/// 	codesigning "github.com/pulumi/pulumi-azure-native-sdk/codesigning/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codesigning.NewCodeSigningAccount(ctx, "codeSigningAccount", &codesigning.CodeSigningAccountArgs{
/// 			AccountName:       pulumi.String("MyAccount"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
/// 			Sku: &codesigning.AccountSkuArgs{
/// 				Name: pulumi.String(codesigning.SkuNameBasic),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_codesigning_codesigningaccount" "codeSigningAccount" {
///   account_name        = "MyAccount"
///   location            = "westus"
///   resource_group_name = "MyResourceGroup"
///   sku = {
///     name = "Basic"
///   }
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
/// import com.pulumi.azurenative.codesigning.CodeSigningAccount;
/// import com.pulumi.azurenative.codesigning.CodeSigningAccountArgs;
/// import com.pulumi.azurenative.codesigning.inputs.AccountSkuArgs;
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
///         var codeSigningAccount = new CodeSigningAccount("codeSigningAccount", CodeSigningAccountArgs.builder()
///             .accountName("MyAccount")
///             .location("westus")
///             .resourceGroupName("MyResourceGroup")
///             .sku(AccountSkuArgs.builder()
///                 .name("Basic")
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
/// const codeSigningAccount = new azure_native.codesigning.CodeSigningAccount("codeSigningAccount", {
///     accountName: "MyAccount",
///     location: "westus",
///     resourceGroupName: "MyResourceGroup",
///     sku: {
///         name: azure_native.codesigning.SkuName.Basic,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// code_signing_account = azure_native.codesigning.CodeSigningAccount("codeSigningAccount",
///     account_name="MyAccount",
///     location="westus",
///     resource_group_name="MyResourceGroup",
///     sku={
///         "name": azure_native.codesigning.SkuName.BASIC,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   codeSigningAccount:
///     type: azure-native:codesigning:CodeSigningAccount
///     properties:
///       accountName: MyAccount
///       location: westus
///       resourceGroupName: MyResourceGroup
///       sku:
///         name: Basic
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
/// $ pulumi import azure-native:codesigning:CodeSigningAccount MyAccount /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CodeSigning/codeSigningAccounts/{accountName}
/// ```
class CodeSigningAccount extends pulumi.CustomResource {
  /// The URI of the artifact signing account which is used during signing files.
  late final pulumi.Output<String> accountUri;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Status of the current operation on artifact signing account.
  late final pulumi.Output<String> provisioningState;
  /// SKU of the artifact signing account.
  late final pulumi.Output<AccountSkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CodeSigningAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CodeSigningAccount]. {@macro pulumi_codesigning_code_signing_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CodeSigningAccount(
    String name, {
    CodeSigningAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:codesigning:CodeSigningAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountUri = registerOutput<String>('accountUri');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<AccountSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CodeSigningAccount] resource.
  CodeSigningAccount.reference(String urn)
    : super(
        'azure-native:codesigning:CodeSigningAccount',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountUri = registerOutput<String>('accountUri');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<AccountSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
