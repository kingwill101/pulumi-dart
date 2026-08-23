import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_tool_portal_args.dart';
import 'dev_tool_portal_properties_response.dart';
import 'system_data_response.dart';

/// Dev Tool Portal resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DevToolPortals_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var devToolPortal = new AzureNative.AppPlatform.DevToolPortal("devToolPortal", new()
///     {
///         DevToolPortalName = "default",
///         Properties = new AzureNative.AppPlatform.Inputs.DevToolPortalPropertiesArgs
///         {
///             Features = new AzureNative.AppPlatform.Inputs.DevToolPortalFeatureSettingsArgs
///             {
///                 ApplicationAccelerator = new AzureNative.AppPlatform.Inputs.DevToolPortalFeatureDetailArgs
///                 {
///                     State = AzureNative.AppPlatform.DevToolPortalFeatureState.Enabled,
///                 },
///                 ApplicationLiveView = new AzureNative.AppPlatform.Inputs.DevToolPortalFeatureDetailArgs
///                 {
///                     State = AzureNative.AppPlatform.DevToolPortalFeatureState.Enabled,
///                 },
///             },
///             Public = true,
///             SsoProperties = new AzureNative.AppPlatform.Inputs.DevToolPortalSsoPropertiesArgs
///             {
///                 ClientId = "00000000-0000-0000-0000-000000000000",
///                 ClientSecret = "xxxxx",
///                 MetadataUrl = "https://login.microsoftonline.com/00000000-0000-0000-0000-000000000000/v2.0/.well-known/openid-configuration",
///                 Scopes = new[]
///                 {
///                     "openid",
///                 },
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewDevToolPortal(ctx, "devToolPortal", &appplatform.DevToolPortalArgs{
/// 			DevToolPortalName: pulumi.String("default"),
/// 			Properties: &appplatform.DevToolPortalPropertiesArgs{
/// 				Features: &appplatform.DevToolPortalFeatureSettingsArgs{
/// 					ApplicationAccelerator: &appplatform.DevToolPortalFeatureDetailArgs{
/// 						State: pulumi.String(appplatform.DevToolPortalFeatureStateEnabled),
/// 					},
/// 					ApplicationLiveView: &appplatform.DevToolPortalFeatureDetailArgs{
/// 						State: pulumi.String(appplatform.DevToolPortalFeatureStateEnabled),
/// 					},
/// 				},
/// 				Public: pulumi.Bool(true),
/// 				SsoProperties: &appplatform.DevToolPortalSsoPropertiesArgs{
/// 					ClientId:     pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					ClientSecret: pulumi.String("xxxxx"),
/// 					MetadataUrl:  pulumi.String("https://login.microsoftonline.com/00000000-0000-0000-0000-000000000000/v2.0/.well-known/openid-configuration"),
/// 					Scopes: pulumi.StringArray{
/// 						pulumi.String("openid"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
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
/// resource "azure-native_appplatform_devtoolportal" "devToolPortal" {
///   dev_tool_portal_name = "default"
///   properties = {
///     features = {
///       application_accelerator = {
///         state = "Enabled"
///       }
///       application_live_view = {
///         state = "Enabled"
///       }
///     }
///     public = true
///     sso_properties = {
///       client_id     = "00000000-0000-0000-0000-000000000000"
///       client_secret = "xxxxx"
///       metadata_url  = "https://login.microsoftonline.com/00000000-0000-0000-0000-000000000000/v2.0/.well-known/openid-configuration"
///       scopes        = ["openid"]
///     }
///   }
///   resource_group_name = "myResourceGroup"
///   service_name        = "myservice"
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
/// import com.pulumi.azurenative.appplatform.DevToolPortal;
/// import com.pulumi.azurenative.appplatform.DevToolPortalArgs;
/// import com.pulumi.azurenative.appplatform.inputs.DevToolPortalPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.DevToolPortalFeatureSettingsArgs;
/// import com.pulumi.azurenative.appplatform.inputs.DevToolPortalFeatureDetailArgs;
/// import com.pulumi.azurenative.appplatform.inputs.DevToolPortalSsoPropertiesArgs;
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
///         var devToolPortal = new DevToolPortal("devToolPortal", DevToolPortalArgs.builder()
///             .devToolPortalName("default")
///             .properties(DevToolPortalPropertiesArgs.builder()
///                 .features(DevToolPortalFeatureSettingsArgs.builder()
///                     .applicationAccelerator(DevToolPortalFeatureDetailArgs.builder()
///                         .state("Enabled")
///                         .build())
///                     .applicationLiveView(DevToolPortalFeatureDetailArgs.builder()
///                         .state("Enabled")
///                         .build())
///                     .build())
///                 .public_(true)
///                 .ssoProperties(DevToolPortalSsoPropertiesArgs.builder()
///                     .clientId("00000000-0000-0000-0000-000000000000")
///                     .clientSecret("xxxxx")
///                     .metadataUrl("https://login.microsoftonline.com/00000000-0000-0000-0000-000000000000/v2.0/.well-known/openid-configuration")
///                     .scopes("openid")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
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
/// const devToolPortal = new azure_native.appplatform.DevToolPortal("devToolPortal", {
///     devToolPortalName: "default",
///     properties: {
///         features: {
///             applicationAccelerator: {
///                 state: azure_native.appplatform.DevToolPortalFeatureState.Enabled,
///             },
///             applicationLiveView: {
///                 state: azure_native.appplatform.DevToolPortalFeatureState.Enabled,
///             },
///         },
///         "public": true,
///         ssoProperties: {
///             clientId: "00000000-0000-0000-0000-000000000000",
///             clientSecret: "xxxxx",
///             metadataUrl: "https://login.microsoftonline.com/00000000-0000-0000-0000-000000000000/v2.0/.well-known/openid-configuration",
///             scopes: ["openid"],
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dev_tool_portal = azure_native.appplatform.DevToolPortal("devToolPortal",
///     dev_tool_portal_name="default",
///     properties={
///         "features": {
///             "application_accelerator": {
///                 "state": azure_native.appplatform.DevToolPortalFeatureState.ENABLED,
///             },
///             "application_live_view": {
///                 "state": azure_native.appplatform.DevToolPortalFeatureState.ENABLED,
///             },
///         },
///         "public": True,
///         "sso_properties": {
///             "client_id": "00000000-0000-0000-0000-000000000000",
///             "client_secret": "xxxxx",
///             "metadata_url": "https://login.microsoftonline.com/00000000-0000-0000-0000-000000000000/v2.0/.well-known/openid-configuration",
///             "scopes": ["openid"],
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   devToolPortal:
///     type: azure-native:appplatform:DevToolPortal
///     properties:
///       devToolPortalName: default
///       properties:
///         features:
///           applicationAccelerator:
///             state: Enabled
///           applicationLiveView:
///             state: Enabled
///         public: true
///         ssoProperties:
///           clientId: 00000000-0000-0000-0000-000000000000
///           clientSecret: xxxxx
///           metadataUrl: https://login.microsoftonline.com/00000000-0000-0000-0000-000000000000/v2.0/.well-known/openid-configuration
///           scopes:
///             - openid
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
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
/// $ pulumi import azure-native:appplatform:DevToolPortal default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/DevToolPortals/{devToolPortalName}
/// ```
class DevToolPortal extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Dev Tool Portal properties payload
  late final pulumi.Output<DevToolPortalPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DevToolPortal].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevToolPortal]. {@macro pulumi_appplatform_dev_tool_portal_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevToolPortal(
    String name, {
    DevToolPortalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:DevToolPortal',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DevToolPortalPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevToolPortalPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
