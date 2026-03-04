import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_account_args.dart';
import 'encryption_properties_response.dart';
import 'identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Definition of the automation account type.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2021-06-22, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update automation account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var automationAccount = new AzureNative.Automation.AutomationAccount("automationAccount", new()
///     {
///         AutomationAccountName = "myAutomationAccount9",
///         Location = "East US 2",
///         Name = "myAutomationAccount9",
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Automation.Inputs.SkuArgs
///         {
///             Name = AzureNative.Automation.SkuNameEnum.Free,
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
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewAutomationAccount(ctx, "automationAccount", &automation.AutomationAccountArgs{
/// 			AutomationAccountName: pulumi.String("myAutomationAccount9"),
/// 			Location:              pulumi.String("East US 2"),
/// 			Name:                  pulumi.String("myAutomationAccount9"),
/// 			ResourceGroupName:     pulumi.String("rg"),
/// 			Sku: &automation.SkuArgs{
/// 				Name: pulumi.String(automation.SkuNameEnumFree),
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
/// import com.pulumi.azurenative.automation.AutomationAccount;
/// import com.pulumi.azurenative.automation.AutomationAccountArgs;
/// import com.pulumi.azurenative.automation.inputs.SkuArgs;
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
///         var automationAccount = new AutomationAccount("automationAccount", AutomationAccountArgs.builder()
///             .automationAccountName("myAutomationAccount9")
///             .location("East US 2")
///             .name("myAutomationAccount9")
///             .resourceGroupName("rg")
///             .sku(SkuArgs.builder()
///                 .name("Free")
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
/// const automationAccount = new azure_native.automation.AutomationAccount("automationAccount", {
///     automationAccountName: "myAutomationAccount9",
///     location: "East US 2",
///     name: "myAutomationAccount9",
///     resourceGroupName: "rg",
///     sku: {
///         name: azure_native.automation.SkuNameEnum.Free,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// automation_account = azure_native.automation.AutomationAccount("automationAccount",
///     automation_account_name="myAutomationAccount9",
///     location="East US 2",
///     name="myAutomationAccount9",
///     resource_group_name="rg",
///     sku={
///         "name": azure_native.automation.SkuNameEnum.FREE,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   automationAccount:
///     type: azure-native:automation:AutomationAccount
///     properties:
///       automationAccountName: myAutomationAccount9
///       location: East US 2
///       name: myAutomationAccount9
///       resourceGroupName: rg
///       sku:
///         name: Free
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
/// $ pulumi import azure-native:automation:AutomationAccount ContoseAutomationAccount /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}
/// ```
class AutomationAccount extends pulumi.CustomResource {
  /// URL of automation hybrid service which is used for hybrid worker on-boarding.
  late final pulumi.Output<String?> automationHybridServiceUrl;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets the creation time.
  late final pulumi.Output<String> creationTime;

  /// Gets or sets the description.
  late final pulumi.Output<String?> description;

  /// Indicates whether requests using non-AAD authentication are blocked
  late final pulumi.Output<bool?> disableLocalAuth;

  /// Encryption properties for the automation account
  late final pulumi.Output<EncryptionPropertiesResponse?> encryption;

  /// Gets or sets the etag of the resource.
  late final pulumi.Output<String?> etag;

  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// Gets or sets the last modified by.
  late final pulumi.Output<String?> lastModifiedBy;

  /// Gets the last modified time.
  late final pulumi.Output<String> lastModifiedTime;

  /// The Azure Region where the resource lives
  late final pulumi.Output<String?> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// List of Automation operations supported by the Automation resource provider.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  privateEndpointConnections;

  /// Indicates whether traffic on the non-ARM endpoint (Webhook/Agent) is allowed from the public internet
  late final pulumi.Output<bool?> publicNetworkAccess;

  /// Gets or sets the SKU of account.
  late final pulumi.Output<SkuResponse?> sku;

  /// Gets status of account.
  late final pulumi.Output<String> state;

  /// Resource system metadata.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [AutomationAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutomationAccount]. {@macro pulumi_automation_automation_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutomationAccount(
    String name, {
    AutomationAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:automation:AutomationAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    automationHybridServiceUrl = registerOutput<String?>(
      'automationHybridServiceUrl',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    encryption = registerOutput<EncryptionPropertiesResponse?>('encryption');
    etag = registerOutput<String?>('etag');
    identity = registerOutput<IdentityResponse?>('identity');
    lastModifiedBy = registerOutput<String?>('lastModifiedBy');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>?>(
      'privateEndpointConnections',
    );
    publicNetworkAccess = registerOutput<bool?>('publicNetworkAccess');
    sku = registerOutput<SkuResponse?>('sku');
    state = registerOutput<String>('state');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
