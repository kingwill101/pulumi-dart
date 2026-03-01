import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_setting_args.dart';
import 'managed_identity_authentication_setting_properties_response.dart';
import 'system_data_response.dart';

/// An authentication setting in a health model
///
/// Uses Azure REST API version 2025-05-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AuthenticationSettings_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authenticationSetting = new AzureNative.Monitor.AuthenticationSetting("authenticationSetting", new()
///     {
///         AuthenticationSettingName = "myAuthSetting",
///         AzureMonitorWorkspaceName = "myWorkspace",
///         HealthModelName = "myHealthModel",
///         Properties = new AzureNative.Monitor.Inputs.ManagedIdentityAuthenticationSettingPropertiesArgs
///         {
///             AuthenticationKind = "ManagedIdentity",
///             DisplayName = "myDisplayName",
///             ManagedIdentityName = "SystemAssigned",
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewAuthenticationSetting(ctx, "authenticationSetting", &monitor.AuthenticationSettingArgs{
/// 			AuthenticationSettingName: pulumi.String("myAuthSetting"),
/// 			AzureMonitorWorkspaceName: pulumi.String("myWorkspace"),
/// 			HealthModelName:           pulumi.String("myHealthModel"),
/// 			Properties: &monitor.ManagedIdentityAuthenticationSettingPropertiesArgs{
/// 				AuthenticationKind:  pulumi.String("ManagedIdentity"),
/// 				DisplayName:         pulumi.String("myDisplayName"),
/// 				ManagedIdentityName: pulumi.String("SystemAssigned"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.monitor.AuthenticationSetting;
/// import com.pulumi.azurenative.monitor.AuthenticationSettingArgs;
/// import com.pulumi.azurenative.monitor.inputs.ManagedIdentityAuthenticationSettingPropertiesArgs;
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
///         var authenticationSetting = new AuthenticationSetting("authenticationSetting", AuthenticationSettingArgs.builder()
///             .authenticationSettingName("myAuthSetting")
///             .azureMonitorWorkspaceName("myWorkspace")
///             .healthModelName("myHealthModel")
///             .properties(ManagedIdentityAuthenticationSettingPropertiesArgs.builder()
///                 .authenticationKind("ManagedIdentity")
///                 .displayName("myDisplayName")
///                 .managedIdentityName("SystemAssigned")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const authenticationSetting = new azure_native.monitor.AuthenticationSetting("authenticationSetting", {
///     authenticationSettingName: "myAuthSetting",
///     azureMonitorWorkspaceName: "myWorkspace",
///     healthModelName: "myHealthModel",
///     properties: {
///         authenticationKind: "ManagedIdentity",
///         displayName: "myDisplayName",
///         managedIdentityName: "SystemAssigned",
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// authentication_setting = azure_native.monitor.AuthenticationSetting("authenticationSetting",
///     authentication_setting_name="myAuthSetting",
///     azure_monitor_workspace_name="myWorkspace",
///     health_model_name="myHealthModel",
///     properties={
///         "authentication_kind": "ManagedIdentity",
///         "display_name": "myDisplayName",
///         "managed_identity_name": "SystemAssigned",
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   authenticationSetting:
///     type: azure-native:monitor:AuthenticationSetting
///     properties:
///       authenticationSettingName: myAuthSetting
///       azureMonitorWorkspaceName: myWorkspace
///       healthModelName: myHealthModel
///       properties:
///         authenticationKind: ManagedIdentity
///         displayName: myDisplayName
///         managedIdentityName: SystemAssigned
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:monitor:AuthenticationSetting myAuthSetting /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Monitor/accounts/{azureMonitorWorkspaceName}/healthmodels/{healthModelName}/authenticationsettings/{authenticationSettingName}
/// ```
class AuthenticationSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ManagedIdentityAuthenticationSettingPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AuthenticationSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthenticationSetting]. {@macro pulumi_monitor_authentication_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthenticationSetting(
    String name, {
    AuthenticationSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:AuthenticationSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<ManagedIdentityAuthenticationSettingPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
