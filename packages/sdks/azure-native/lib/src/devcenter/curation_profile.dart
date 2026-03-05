import 'package:pulumi/pulumi.dart' as pulumi;
import 'curation_profile_args.dart';
import 'system_data_response.dart';

/// Represents an curation profile resource.
///
/// Uses Azure REST API version 2024-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-08-01-preview.
///
/// Other available API versions: 2024-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CurationProfiles_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var curationProfile = new AzureNative.DevCenter.CurationProfile("curationProfile", new()
///     {
///         CurationProfileName = "DevOnlyResources",
///         DevCenterName = "Contoso",
///         ResourceGroupName = "rg1",
///         ResourcePolicies = new[]
///         {
///             new AzureNative.DevCenter.Inputs.ResourcePolicyArgs
///             {
///                 Resources = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3",
///             },
///         },
///         Scopes = new[]
///         {
///             "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject",
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
/// 		_, err := devcenter.NewCurationProfile(ctx, "curationProfile", &devcenter.CurationProfileArgs{
/// 			CurationProfileName: pulumi.String("DevOnlyResources"),
/// 			DevCenterName:       pulumi.String("Contoso"),
/// 			ResourceGroupName:   pulumi.String("rg1"),
/// 			ResourcePolicies: devcenter.ResourcePolicyArray{
/// 				&devcenter.ResourcePolicyArgs{
/// 					Resources: pulumi.String("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3"),
/// 				},
/// 			},
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject"),
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
/// import com.pulumi.azurenative.devcenter.CurationProfile;
/// import com.pulumi.azurenative.devcenter.CurationProfileArgs;
/// import com.pulumi.azurenative.devcenter.inputs.ResourcePolicyArgs;
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
///         var curationProfile = new CurationProfile("curationProfile", CurationProfileArgs.builder()
///             .curationProfileName("DevOnlyResources")
///             .devCenterName("Contoso")
///             .resourceGroupName("rg1")
///             .resourcePolicies(ResourcePolicyArgs.builder()
///                 .resources("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3")
///                 .build())
///             .scopes("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject")
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
/// const curationProfile = new azure_native.devcenter.CurationProfile("curationProfile", {
///     curationProfileName: "DevOnlyResources",
///     devCenterName: "Contoso",
///     resourceGroupName: "rg1",
///     resourcePolicies: [{
///         resources: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3",
///     }],
///     scopes: ["/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// curation_profile = azure_native.devcenter.CurationProfile("curationProfile",
///     curation_profile_name="DevOnlyResources",
///     dev_center_name="Contoso",
///     resource_group_name="rg1",
///     resource_policies=[{
///         "resources": "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3",
///     }],
///     scopes=["/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject"])
///
/// ```
///
/// ```yaml
/// resources:
///   curationProfile:
///     type: azure-native:devcenter:CurationProfile
///     properties:
///       curationProfileName: DevOnlyResources
///       devCenterName: Contoso
///       resourceGroupName: rg1
///       resourcePolicies:
///         - resources: /subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso/attachednetworks/network-westus3
///       scopes:
///         - /subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff1/resourceGroups/rg1/providers/Microsoft.DevCenter/projects/DevProject
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
/// $ pulumi import azure-native:devcenter:CurationProfile DevOnlyResources /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devcenters/{devCenterName}/curationProfiles/{curationProfileName}
/// ```
class CurationProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Resource policies that are a part of this curation profile.
  late final pulumi.Output<List<Map<String, dynamic>>?> resourcePolicies;

  /// Resources that have access to the shared resources that are a part of this curation profile.
  late final pulumi.Output<List<String>?> scopes;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CurationProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CurationProfile]. {@macro pulumi_devcenter_curation_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CurationProfile(
    String name, {
    CurationProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devcenter:CurationProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourcePolicies = registerOutput<List<Map<String, dynamic>>?>(
      'resourcePolicies',
    );
    scopes = registerOutput<List<String>?>('scopes');
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
