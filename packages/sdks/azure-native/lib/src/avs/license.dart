import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_args.dart';
import 'system_data_response.dart';
import 'vmware_firewall_license_properties_response.dart';

/// A license resource
///
/// Uses Azure REST API version 2025-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Licenses_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var license = new AzureNative.AVS.License("license", new()
///     {
///         LicenseName = "VmwareFirewall",
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewLicense(ctx, "license", &avs.LicenseArgs{
/// 			LicenseName:       pulumi.String("VmwareFirewall"),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// resource "azure-native_avs_license" "license" {
///   license_name        = "VmwareFirewall"
///   private_cloud_name  = "cloud1"
///   resource_group_name = "group1"
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
/// import com.pulumi.azurenative.avs.License;
/// import com.pulumi.azurenative.avs.LicenseArgs;
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
///         var license = new License("license", LicenseArgs.builder()
///             .licenseName("VmwareFirewall")
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
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
/// const license = new azure_native.avs.License("license", {
///     licenseName: "VmwareFirewall",
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// license = azure_native.avs.License("license",
///     license_name="VmwareFirewall",
///     private_cloud_name="cloud1",
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   license:
///     type: azure-native:avs:License
///     properties:
///       licenseName: VmwareFirewall
///       privateCloudName: cloud1
///       resourceGroupName: group1
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
/// $ pulumi import azure-native:avs:License VmwareFirewall /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/licenses/{licenseName}
/// ```
class License extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<VmwareFirewallLicensePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [License].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [License]. {@macro pulumi_avs_license_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  License(
    String name, {
    LicenseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:License',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VmwareFirewallLicensePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VmwareFirewallLicensePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [License] resource.
  License.reference(String urn)
    : super(
        'azure-native:avs:License',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VmwareFirewallLicensePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VmwareFirewallLicensePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
