import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_setting_args.dart';
import 'managed_identity_authentication_setting_properties_response.dart';
import 'system_data_response.dart';

/// An authentication setting in a health model
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var authenticationSetting = new AzureNative.CloudHealth.AuthenticationSetting("authenticationSetting", new()
///     {
///         AuthenticationSettingName = "myAuthSetting",
///         HealthModelName = "myHealthModel",
///         Properties = new AzureNative.CloudHealth.Inputs.ManagedIdentityAuthenticationSettingPropertiesArgs
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
/// 	cloudhealth "github.com/pulumi/pulumi-azure-native-sdk/cloudhealth/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudhealth.NewAuthenticationSetting(ctx, "authenticationSetting", &cloudhealth.AuthenticationSettingArgs{
/// 			AuthenticationSettingName: pulumi.String("myAuthSetting"),
/// 			HealthModelName:           pulumi.String("myHealthModel"),
/// 			Properties: &cloudhealth.ManagedIdentityAuthenticationSettingPropertiesArgs{
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
/// import com.pulumi.azurenative.cloudhealth.AuthenticationSetting;
/// import com.pulumi.azurenative.cloudhealth.AuthenticationSettingArgs;
/// import com.pulumi.azurenative.cloudhealth.inputs.ManagedIdentityAuthenticationSettingPropertiesArgs;
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
/// const authenticationSetting = new azure_native.cloudhealth.AuthenticationSetting("authenticationSetting", {
///     authenticationSettingName: "myAuthSetting",
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
/// authentication_setting = azure_native.cloudhealth.AuthenticationSetting("authenticationSetting",
///     authentication_setting_name="myAuthSetting",
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
///     type: azure-native:cloudhealth:AuthenticationSetting
///     properties:
///       authenticationSettingName: myAuthSetting
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
/// $ pulumi import azure-native:cloudhealth:AuthenticationSetting myAuthSetting /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CloudHealth/healthmodels/{healthModelName}/authenticationsettings/{authenticationSettingName}
/// ```
class AuthenticationSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<
    ManagedIdentityAuthenticationSettingPropertiesResponse
  >
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AuthenticationSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthenticationSetting]. {@macro pulumi_cloudhealth_authentication_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthenticationSetting(
    String name, {
    AuthenticationSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cloudhealth:AuthenticationSetting',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties =
        registerOutput<ManagedIdentityAuthenticationSettingPropertiesResponse>(
          'properties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedIdentityAuthenticationSettingPropertiesResponse.fromMap(
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
    type = registerOutput<String>('type');
  }
}
