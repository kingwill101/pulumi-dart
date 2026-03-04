import 'package:pulumi/pulumi.dart' as pulumi;
import 'setting_args.dart';

/// State of the myscope setting.
///
/// Uses Azure REST API version 2019-11-01. In version 2.x of the Azure Native provider, it used API version 2019-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateSetting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var setting = new AzureNative.CostManagement.Setting("setting", new()
///     {
///         Cache = new[]
///         {
///             new AzureNative.CostManagement.Inputs.SettingsPropertiesCacheArgs
///             {
///                 Channel = "Modern",
///                 Id = "/providers/Microsoft.Management/managementGroups/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 Name = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 Parent = "/providers/Microsoft.Management/managementGroups/acm",
///                 Status = "enabled",
///                 Subchannel = "NotApplicable",
///             },
///         },
///         Scope = "/subscriptions/00000000-0000-0000-0000-000000000000",
///         SettingName = "myscope",
///         StartOn = "LastUsed",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewSetting(ctx, "setting", &costmanagement.SettingArgs{
/// 			Cache: costmanagement.SettingsPropertiesCacheArray{
/// 				&costmanagement.SettingsPropertiesCacheArgs{
/// 					Channel:    pulumi.String("Modern"),
/// 					Id:         pulumi.String("/providers/Microsoft.Management/managementGroups/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					Name:       pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					Parent:     pulumi.String("/providers/Microsoft.Management/managementGroups/acm"),
/// 					Status:     pulumi.String("enabled"),
/// 					Subchannel: pulumi.String("NotApplicable"),
/// 				},
/// 			},
/// 			Scope:       pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			SettingName: pulumi.String("myscope"),
/// 			StartOn:     pulumi.String("LastUsed"),
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
/// import com.pulumi.azurenative.costmanagement.Setting;
/// import com.pulumi.azurenative.costmanagement.SettingArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.SettingsPropertiesCacheArgs;
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
///         var setting = new Setting("setting", SettingArgs.builder()
///             .cache(SettingsPropertiesCacheArgs.builder()
///                 .channel("Modern")
///                 .id("/providers/Microsoft.Management/managementGroups/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                 .name("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                 .parent("/providers/Microsoft.Management/managementGroups/acm")
///                 .status("enabled")
///                 .subchannel("NotApplicable")
///                 .build())
///             .scope("/subscriptions/00000000-0000-0000-0000-000000000000")
///             .settingName("myscope")
///             .startOn("LastUsed")
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
/// const setting = new azure_native.costmanagement.Setting("setting", {
///     cache: [{
///         channel: "Modern",
///         id: "/providers/Microsoft.Management/managementGroups/72f988bf-86f1-41af-91ab-2d7cd011db47",
///         name: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         parent: "/providers/Microsoft.Management/managementGroups/acm",
///         status: "enabled",
///         subchannel: "NotApplicable",
///     }],
///     scope: "/subscriptions/00000000-0000-0000-0000-000000000000",
///     settingName: "myscope",
///     startOn: "LastUsed",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// setting = azure_native.costmanagement.Setting("setting",
///     cache=[{
///         "channel": "Modern",
///         "id": "/providers/Microsoft.Management/managementGroups/72f988bf-86f1-41af-91ab-2d7cd011db47",
///         "name": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         "parent": "/providers/Microsoft.Management/managementGroups/acm",
///         "status": "enabled",
///         "subchannel": "NotApplicable",
///     }],
///     scope="/subscriptions/00000000-0000-0000-0000-000000000000",
///     setting_name="myscope",
///     start_on="LastUsed")
///
/// ```
///
/// ```yaml
/// resources:
///   setting:
///     type: azure-native:costmanagement:Setting
///     properties:
///       cache:
///         - channel: Modern
///           id: /providers/Microsoft.Management/managementGroups/72f988bf-86f1-41af-91ab-2d7cd011db47
///           name: 72f988bf-86f1-41af-91ab-2d7cd011db47
///           parent: /providers/Microsoft.Management/managementGroups/acm
///           status: enabled
///           subchannel: NotApplicable
///       scope: /subscriptions/00000000-0000-0000-0000-000000000000
///       settingName: myscope
///       startOn: LastUsed
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
/// $ pulumi import azure-native:costmanagement:Setting myscope /providers/Microsoft.CostManagement/settings/{settingName}
/// ```
class Setting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Array of scopes with additional details used by Cost Management in the Azure portal.
  late final pulumi.Output<List<Map<String, dynamic>>?> cache;

  /// Resource kind.
  late final pulumi.Output<String> kind;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Sets the default scope the current user will see when they sign into Azure Cost Management in the Azure portal.
  late final pulumi.Output<String> scope;

  /// Indicates what scope Cost Management in the Azure portal should default to. Allowed values: LastUsed.
  late final pulumi.Output<String?> startOn;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Setting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Setting]. {@macro pulumi_costmanagement_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Setting(
    String name, {
    SettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:costmanagement:Setting',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cache = registerOutput<List<Map<String, dynamic>>?>('cache');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    scope = registerOutput<String>('scope');
    startOn = registerOutput<String?>('startOn');
    type = registerOutput<String>('type');
  }
}
