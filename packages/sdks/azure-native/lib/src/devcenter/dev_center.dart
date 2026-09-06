import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_center_args.dart';
import 'dev_center_project_catalog_settings_response.dart';
import 'encryption_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Represents a devcenter resource.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DevCenters_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var devCenter = new AzureNative.DevCenter.DevCenter("devCenter", new()
///     {
///         DevCenterName = "Contoso",
///         DisplayName = "ContosoDevCenter",
///         Location = "centralus",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "CostCode", "12345" },
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewDevCenter(ctx, "devCenter", &devcenter.DevCenterArgs{
/// 			DevCenterName:     pulumi.String("Contoso"),
/// 			DisplayName:       pulumi.String("ContosoDevCenter"),
/// 			Location:          pulumi.String("centralus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"CostCode": pulumi.String("12345"),
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
/// resource "azure-native_devcenter_devcenter" "devCenter" {
///   dev_center_name     = "Contoso"
///   display_name        = "ContosoDevCenter"
///   location            = "centralus"
///   resource_group_name = "rg1"
///   tags = {
///     "CostCode" = "12345"
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
/// import com.pulumi.azurenative.devcenter.DevCenter;
/// import com.pulumi.azurenative.devcenter.DevCenterArgs;
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
///         var devCenter = new DevCenter("devCenter", DevCenterArgs.builder()
///             .devCenterName("Contoso")
///             .displayName("ContosoDevCenter")
///             .location("centralus")
///             .resourceGroupName("rg1")
///             .tags(Map.of("CostCode", "12345"))
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
/// const devCenter = new azure_native.devcenter.DevCenter("devCenter", {
///     devCenterName: "Contoso",
///     displayName: "ContosoDevCenter",
///     location: "centralus",
///     resourceGroupName: "rg1",
///     tags: {
///         CostCode: "12345",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dev_center = azure_native.devcenter.DevCenter("devCenter",
///     dev_center_name="Contoso",
///     display_name="ContosoDevCenter",
///     location="centralus",
///     resource_group_name="rg1",
///     tags={
///         "CostCode": "12345",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   devCenter:
///     type: azure-native:devcenter:DevCenter
///     properties:
///       devCenterName: Contoso
///       displayName: ContosoDevCenter
///       location: centralus
///       resourceGroupName: rg1
///       tags:
///         CostCode: '12345'
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
/// $ pulumi import azure-native:devcenter:DevCenter Contoso /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devcenters/{devCenterName}
/// ```
class DevCenter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The URI of the Dev Center.
  late final pulumi.Output<String> devCenterUri;
  /// The display name of the devcenter.
  late final pulumi.Output<String?> displayName;
  /// Encryption settings to be used for server-side encryption for proprietary content (such as catalogs, logs, customizations).
  late final pulumi.Output<EncryptionResponse?> encryption;
  /// Managed identity properties
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Dev Center settings to be used when associating a project with a catalog.
  late final pulumi.Output<DevCenterProjectCatalogSettingsResponse?> projectCatalogSettings;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DevCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevCenter]. {@macro pulumi_devcenter_dev_center_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevCenter(
    String name, {
    DevCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devcenter:DevCenter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    devCenterUri = registerOutput<String>('devCenterUri');
    displayName = registerOutput<String?>('displayName');
    encryption = registerOutput<EncryptionResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    projectCatalogSettings = registerOutput<DevCenterProjectCatalogSettingsResponse?>('projectCatalogSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevCenterProjectCatalogSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DevCenter] resource.
  DevCenter.reference(String urn)
    : super(
        'azure-native:devcenter:DevCenter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    devCenterUri = registerOutput<String>('devCenterUri');
    displayName = registerOutput<String?>('displayName');
    encryption = registerOutput<EncryptionResponse?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    projectCatalogSettings = registerOutput<DevCenterProjectCatalogSettingsResponse?>('projectCatalogSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevCenterProjectCatalogSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
