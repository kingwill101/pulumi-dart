import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'license_profile_args.dart';
import 'system_data_response.dart';

/// Describes a license profile in a hybrid machine.
///
/// Uses Azure REST API version 2024-07-10. In version 2.x of the Azure Native provider, it used API version 2023-06-20-preview.
///
/// Other available API versions: 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a License Profile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var licenseProfile = new AzureNative.HybridCompute.LicenseProfile("licenseProfile", new()
///     {
///         AssignedLicense = "{LicenseResourceId}",
///         LicenseProfileName = "default",
///         Location = "eastus2euap",
///         MachineName = "myMachine",
///         ProductFeatures = new[]
///         {
///             new AzureNative.HybridCompute.Inputs.ProductFeatureArgs
///             {
///                 Name = "Hotpatch",
///                 SubscriptionStatus = AzureNative.HybridCompute.LicenseProfileSubscriptionStatus.Enabled,
///             },
///         },
///         ProductType = AzureNative.HybridCompute.LicenseProfileProductType.WindowsServer,
///         ResourceGroupName = "myResourceGroup",
///         SoftwareAssuranceCustomer = true,
///         SubscriptionStatus = AzureNative.HybridCompute.LicenseProfileSubscriptionStatus.Enabled,
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
/// 	hybridcompute "github.com/pulumi/pulumi-azure-native-sdk/hybridcompute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcompute.NewLicenseProfile(ctx, "licenseProfile", &hybridcompute.LicenseProfileArgs{
/// 			AssignedLicense:    pulumi.String("{LicenseResourceId}"),
/// 			LicenseProfileName: pulumi.String("default"),
/// 			Location:           pulumi.String("eastus2euap"),
/// 			MachineName:        pulumi.String("myMachine"),
/// 			ProductFeatures: hybridcompute.ProductFeatureArray{
/// 				&hybridcompute.ProductFeatureArgs{
/// 					Name:               pulumi.String("Hotpatch"),
/// 					SubscriptionStatus: pulumi.String(hybridcompute.LicenseProfileSubscriptionStatusEnabled),
/// 				},
/// 			},
/// 			ProductType:               pulumi.String(hybridcompute.LicenseProfileProductTypeWindowsServer),
/// 			ResourceGroupName:         pulumi.String("myResourceGroup"),
/// 			SoftwareAssuranceCustomer: pulumi.Bool(true),
/// 			SubscriptionStatus:        pulumi.String(hybridcompute.LicenseProfileSubscriptionStatusEnabled),
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
/// import com.pulumi.azurenative.hybridcompute.LicenseProfile;
/// import com.pulumi.azurenative.hybridcompute.LicenseProfileArgs;
/// import com.pulumi.azurenative.hybridcompute.inputs.ProductFeatureArgs;
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
///         var licenseProfile = new LicenseProfile("licenseProfile", LicenseProfileArgs.builder()
///             .assignedLicense("{LicenseResourceId}")
///             .licenseProfileName("default")
///             .location("eastus2euap")
///             .machineName("myMachine")
///             .productFeatures(ProductFeatureArgs.builder()
///                 .name("Hotpatch")
///                 .subscriptionStatus("Enabled")
///                 .build())
///             .productType("WindowsServer")
///             .resourceGroupName("myResourceGroup")
///             .softwareAssuranceCustomer(true)
///             .subscriptionStatus("Enabled")
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
/// const licenseProfile = new azure_native.hybridcompute.LicenseProfile("licenseProfile", {
///     assignedLicense: "{LicenseResourceId}",
///     licenseProfileName: "default",
///     location: "eastus2euap",
///     machineName: "myMachine",
///     productFeatures: [{
///         name: "Hotpatch",
///         subscriptionStatus: azure_native.hybridcompute.LicenseProfileSubscriptionStatus.Enabled,
///     }],
///     productType: azure_native.hybridcompute.LicenseProfileProductType.WindowsServer,
///     resourceGroupName: "myResourceGroup",
///     softwareAssuranceCustomer: true,
///     subscriptionStatus: azure_native.hybridcompute.LicenseProfileSubscriptionStatus.Enabled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// license_profile = azure_native.hybridcompute.LicenseProfile("licenseProfile",
///     assigned_license="{LicenseResourceId}",
///     license_profile_name="default",
///     location="eastus2euap",
///     machine_name="myMachine",
///     product_features=[{
///         "name": "Hotpatch",
///         "subscription_status": azure_native.hybridcompute.LicenseProfileSubscriptionStatus.ENABLED,
///     }],
///     product_type=azure_native.hybridcompute.LicenseProfileProductType.WINDOWS_SERVER,
///     resource_group_name="myResourceGroup",
///     software_assurance_customer=True,
///     subscription_status=azure_native.hybridcompute.LicenseProfileSubscriptionStatus.ENABLED)
///
/// ```
///
/// ```yaml
/// resources:
///   licenseProfile:
///     type: azure-native:hybridcompute:LicenseProfile
///     properties:
///       assignedLicense: '{LicenseResourceId}'
///       licenseProfileName: default
///       location: eastus2euap
///       machineName: myMachine
///       productFeatures:
///         - name: Hotpatch
///           subscriptionStatus: Enabled
///       productType: WindowsServer
///       resourceGroupName: myResourceGroup
///       softwareAssuranceCustomer: true
///       subscriptionStatus: Enabled
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
/// $ pulumi import azure-native:hybridcompute:LicenseProfile default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridCompute/machines/{machineName}/licenseProfiles/{licenseProfileName}
/// ```
class LicenseProfile extends pulumi.CustomResource {
  /// The resource id of the license.
  late final pulumi.Output<String?> assignedLicense;

  /// The guid id of the license.
  late final pulumi.Output<String> assignedLicenseImmutableId;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The timestamp in UTC when the billing ends.
  late final pulumi.Output<String> billingEndDate;

  /// The timestamp in UTC when the billing starts.
  late final pulumi.Output<String> billingStartDate;

  /// The timestamp in UTC when the user disenrolled the feature.
  late final pulumi.Output<String> disenrollmentDate;

  /// The timestamp in UTC when the user enrolls the feature.
  late final pulumi.Output<String> enrollmentDate;

  /// The errors that were encountered during the feature enrollment or disenrollment.
  late final pulumi.Output<ErrorDetailResponse> error;

  /// Indicates the eligibility state of Esu.
  late final pulumi.Output<String> esuEligibility;

  /// Indicates whether there is an ESU Key currently active for the machine.
  late final pulumi.Output<String> esuKeyState;

  /// The list of ESU keys.
  late final pulumi.Output<List<Map<String, dynamic>>> esuKeys;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The list of product features.
  late final pulumi.Output<List<Map<String, dynamic>>?> productFeatures;

  /// Indicates the product type of the license.
  late final pulumi.Output<String?> productType;

  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;

  /// The type of the Esu servers.
  late final pulumi.Output<String> serverType;

  /// Specifies if this machine is licensed as part of a Software Assurance agreement.
  late final pulumi.Output<bool?> softwareAssuranceCustomer;

  /// Indicates the subscription status of the product.
  late final pulumi.Output<String?> subscriptionStatus;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LicenseProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicenseProfile]. {@macro pulumi_hybridcompute_license_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicenseProfile(
    String name, {
    LicenseProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcompute:LicenseProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assignedLicense = registerOutput<String?>('assignedLicense');
    assignedLicenseImmutableId = registerOutput<String>(
      'assignedLicenseImmutableId',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingEndDate = registerOutput<String>('billingEndDate');
    billingStartDate = registerOutput<String>('billingStartDate');
    disenrollmentDate = registerOutput<String>('disenrollmentDate');
    enrollmentDate = registerOutput<String>('enrollmentDate');
    error = registerOutput<ErrorDetailResponse>(
      'error',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ErrorDetailResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    esuEligibility = registerOutput<String>('esuEligibility');
    esuKeyState = registerOutput<String>('esuKeyState');
    esuKeys = registerOutput<List<Map<String, dynamic>>>('esuKeys');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    productFeatures = registerOutput<List<Map<String, dynamic>>?>(
      'productFeatures',
    );
    productType = registerOutput<String?>('productType');
    provisioningState = registerOutput<String>('provisioningState');
    serverType = registerOutput<String>('serverType');
    softwareAssuranceCustomer = registerOutput<bool?>(
      'softwareAssuranceCustomer',
    );
    subscriptionStatus = registerOutput<String?>('subscriptionStatus');
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
