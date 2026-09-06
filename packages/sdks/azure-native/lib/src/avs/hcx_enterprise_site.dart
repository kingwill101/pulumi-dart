import 'package:pulumi/pulumi.dart' as pulumi;
import 'hcx_enterprise_site_args.dart';
import 'system_data_response.dart';

/// An HCX Enterprise Site resource
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HcxEnterpriseSites_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hcxEnterpriseSite = new AzureNative.AVS.HcxEnterpriseSite("hcxEnterpriseSite", new()
///     {
///         HcxEnterpriseSiteName = "site1",
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
/// 		_, err := avs.NewHcxEnterpriseSite(ctx, "hcxEnterpriseSite", &avs.HcxEnterpriseSiteArgs{
/// 			HcxEnterpriseSiteName: pulumi.String("site1"),
/// 			PrivateCloudName:      pulumi.String("cloud1"),
/// 			ResourceGroupName:     pulumi.String("group1"),
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
/// resource "azure-native_avs_hcxenterprisesite" "hcxEnterpriseSite" {
///   hcx_enterprise_site_name = "site1"
///   private_cloud_name       = "cloud1"
///   resource_group_name      = "group1"
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
/// import com.pulumi.azurenative.avs.HcxEnterpriseSite;
/// import com.pulumi.azurenative.avs.HcxEnterpriseSiteArgs;
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
///         var hcxEnterpriseSite = new HcxEnterpriseSite("hcxEnterpriseSite", HcxEnterpriseSiteArgs.builder()
///             .hcxEnterpriseSiteName("site1")
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
/// const hcxEnterpriseSite = new azure_native.avs.HcxEnterpriseSite("hcxEnterpriseSite", {
///     hcxEnterpriseSiteName: "site1",
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
/// hcx_enterprise_site = azure_native.avs.HcxEnterpriseSite("hcxEnterpriseSite",
///     hcx_enterprise_site_name="site1",
///     private_cloud_name="cloud1",
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   hcxEnterpriseSite:
///     type: azure-native:avs:HcxEnterpriseSite
///     properties:
///       hcxEnterpriseSiteName: site1
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
/// $ pulumi import azure-native:avs:HcxEnterpriseSite site1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/hcxEnterpriseSites/{hcxEnterpriseSiteName}
/// ```
class HcxEnterpriseSite extends pulumi.CustomResource {
  /// The activation key
  late final pulumi.Output<String> activationKey;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The status of the HCX Enterprise Site
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HcxEnterpriseSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HcxEnterpriseSite]. {@macro pulumi_avs_hcx_enterprise_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HcxEnterpriseSite(
    String name, {
    HcxEnterpriseSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:HcxEnterpriseSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activationKey = registerOutput<String>('activationKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [HcxEnterpriseSite] resource.
  HcxEnterpriseSite.reference(String urn)
    : super(
        'azure-native:avs:HcxEnterpriseSite',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    activationKey = registerOutput<String>('activationKey');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
