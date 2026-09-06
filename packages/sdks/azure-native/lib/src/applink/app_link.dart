import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_link_args.dart';
import 'app_link_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// AppLink resource
///
/// Uses Azure REST API version 2025-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AppLinks_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appLink = new AzureNative.AppLink.AppLink("appLink", new()
///     {
///         AppLinkName = "applink-test-01",
///         Identity = new AzureNative.AppLink.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.AppLink.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "westus2",
///         ResourceGroupName = "test_rg",
///         Tags =
///         {
///             { "key2913", "test_tag" },
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
/// 	applink "github.com/pulumi/pulumi-azure-native-sdk/applink/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applink.NewAppLink(ctx, "appLink", &applink.AppLinkArgs{
/// 			AppLinkName: pulumi.String("applink-test-01"),
/// 			Identity: &applink.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(applink.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location:          pulumi.String("westus2"),
/// 			ResourceGroupName: pulumi.String("test_rg"),
/// 			Tags: pulumi.StringMap{
/// 				"key2913": pulumi.String("test_tag"),
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
/// resource "azure-native_applink_applink" "appLink" {
///   app_link_name = "applink-test-01"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location            = "westus2"
///   resource_group_name = "test_rg"
///   tags = {
///     "key2913" = "test_tag"
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
/// import com.pulumi.azurenative.applink.AppLink;
/// import com.pulumi.azurenative.applink.AppLinkArgs;
/// import com.pulumi.azurenative.applink.inputs.ManagedServiceIdentityArgs;
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
///         var appLink = new AppLink("appLink", AppLinkArgs.builder()
///             .appLinkName("applink-test-01")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("westus2")
///             .resourceGroupName("test_rg")
///             .tags(Map.of("key2913", "test_tag"))
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
/// const appLink = new azure_native.applink.AppLink("appLink", {
///     appLinkName: "applink-test-01",
///     identity: {
///         type: azure_native.applink.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "westus2",
///     resourceGroupName: "test_rg",
///     tags: {
///         key2913: "test_tag",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_link = azure_native.applink.AppLink("appLink",
///     app_link_name="applink-test-01",
///     identity={
///         "type": azure_native.applink.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="westus2",
///     resource_group_name="test_rg",
///     tags={
///         "key2913": "test_tag",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   appLink:
///     type: azure-native:applink:AppLink
///     properties:
///       appLinkName: applink-test-01
///       identity:
///         type: SystemAssigned
///       location: westus2
///       resourceGroupName: test_rg
///       tags:
///         key2913: test_tag
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
/// $ pulumi import azure-native:applink:AppLink applink-test-01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppLink/appLinks/{appLinkName}
/// ```
class AppLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AppLinkPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AppLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppLink]. {@macro pulumi_applink_app_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppLink(
    String name, {
    AppLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applink:AppLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AppLinkPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppLinkPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AppLink] resource.
  AppLink.reference(String urn)
    : super(
        'azure-native:applink:AppLink',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AppLinkPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppLinkPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
