import 'package:pulumi/pulumi.dart' as pulumi;
import 'msix_package_applications_response.dart';
import 'msix_package_dependencies_response.dart';
import 'msixpackage_args.dart';
import 'system_data_response.dart';

/// Schema for MSIX Package properties.
///
/// Uses Azure REST API version 2024-04-03. In version 2.x of the Azure Native provider, it used API version 2022-09-09.
///
/// Other available API versions: 2022-09-09, 2022-10-14-preview, 2023-09-05, 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-10-10, 2025-11-01-preview, 2026-01-01-preview, 2026-03-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MSIXPackage_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var msixPackage = new AzureNative.DesktopVirtualization.MSIXPackage("msixPackage", new()
///     {
///         DisplayName = "displayname",
///         HostPoolName = "hostpool1",
///         ImagePath = "imagepath",
///         IsActive = false,
///         IsRegularRegistration = false,
///         LastUpdated = "2008-09-22T14:01:54.9571247Z",
///         MsixPackageFullName = "msixpackagefullname",
///         PackageApplications = new[]
///         {
///             new AzureNative.DesktopVirtualization.Inputs.MsixPackageApplicationsArgs
///             {
///                 AppId = "ApplicationId",
///                 AppUserModelID = "AppUserModelId",
///                 Description = "application-desc",
///                 FriendlyName = "friendlyname",
///                 IconImageName = "Apptile",
///                 RawIcon = "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///                 RawPng = "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///             },
///         },
///         PackageDependencies = new[]
///         {
///             new AzureNative.DesktopVirtualization.Inputs.MsixPackageDependenciesArgs
///             {
///                 DependencyName = "MsixTest_Dependency_Name",
///                 MinVersion = "version",
///                 Publisher = "PublishedName",
///             },
///         },
///         PackageFamilyName = "MsixPackage_FamilyName",
///         PackageName = "MsixPackage_name",
///         PackageRelativePath = "packagerelativepath",
///         ResourceGroupName = "resourceGroup1",
///         Version = "version",
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
/// 	desktopvirtualization "github.com/pulumi/pulumi-azure-native-sdk/desktopvirtualization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := desktopvirtualization.NewMSIXPackage(ctx, "msixPackage", &desktopvirtualization.MSIXPackageArgs{
/// 			DisplayName:           pulumi.String("displayname"),
/// 			HostPoolName:          pulumi.String("hostpool1"),
/// 			ImagePath:             pulumi.String("imagepath"),
/// 			IsActive:              pulumi.Bool(false),
/// 			IsRegularRegistration: pulumi.Bool(false),
/// 			LastUpdated:           pulumi.String("2008-09-22T14:01:54.9571247Z"),
/// 			MsixPackageFullName:   pulumi.String("msixpackagefullname"),
/// 			PackageApplications: desktopvirtualization.MsixPackageApplicationsArray{
/// 				&desktopvirtualization.MsixPackageApplicationsArgs{
/// 					AppId:          pulumi.String("ApplicationId"),
/// 					AppUserModelID: pulumi.String("AppUserModelId"),
/// 					Description:    pulumi.String("application-desc"),
/// 					FriendlyName:   pulumi.String("friendlyname"),
/// 					IconImageName:  pulumi.String("Apptile"),
/// 					RawIcon:        pulumi.String("VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo"),
/// 					RawPng:         pulumi.String("VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo"),
/// 				},
/// 			},
/// 			PackageDependencies: desktopvirtualization.MsixPackageDependenciesArray{
/// 				&desktopvirtualization.MsixPackageDependenciesArgs{
/// 					DependencyName: pulumi.String("MsixTest_Dependency_Name"),
/// 					MinVersion:     pulumi.String("version"),
/// 					Publisher:      pulumi.String("PublishedName"),
/// 				},
/// 			},
/// 			PackageFamilyName:   pulumi.String("MsixPackage_FamilyName"),
/// 			PackageName:         pulumi.String("MsixPackage_name"),
/// 			PackageRelativePath: pulumi.String("packagerelativepath"),
/// 			ResourceGroupName:   pulumi.String("resourceGroup1"),
/// 			Version:             pulumi.String("version"),
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
/// resource "azure-native_desktopvirtualization_msixpackage" "msixPackage" {
///   display_name            = "displayname"
///   host_pool_name          = "hostpool1"
///   image_path              = "imagepath"
///   is_active               = false
///   is_regular_registration = false
///   last_updated            = "2008-09-22T14:01:54.9571247Z"
///   msix_package_full_name  = "msixpackagefullname"
///   package_applications {
///     app_id            = "ApplicationId"
///     app_user_model_id = "AppUserModelId"
///     description       = "application-desc"
///     friendly_name     = "friendlyname"
///     icon_image_name   = "Apptile"
///     raw_icon          = "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo"
///     raw_png           = "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo"
///   }
///   package_dependencies {
///     dependency_name = "MsixTest_Dependency_Name"
///     min_version     = "version"
///     publisher       = "PublishedName"
///   }
///   package_family_name   = "MsixPackage_FamilyName"
///   package_name          = "MsixPackage_name"
///   package_relative_path = "packagerelativepath"
///   resource_group_name   = "resourceGroup1"
///   version               = "version"
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
/// import com.pulumi.azurenative.desktopvirtualization.MSIXPackage;
/// import com.pulumi.azurenative.desktopvirtualization.MSIXPackageArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.MsixPackageApplicationsArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.MsixPackageDependenciesArgs;
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
///         var msixPackage = new MSIXPackage("msixPackage", MSIXPackageArgs.builder()
///             .displayName("displayname")
///             .hostPoolName("hostpool1")
///             .imagePath("imagepath")
///             .isActive(false)
///             .isRegularRegistration(false)
///             .lastUpdated("2008-09-22T14:01:54.9571247Z")
///             .msixPackageFullName("msixpackagefullname")
///             .packageApplications(MsixPackageApplicationsArgs.builder()
///                 .appId("ApplicationId")
///                 .appUserModelID("AppUserModelId")
///                 .description("application-desc")
///                 .friendlyName("friendlyname")
///                 .iconImageName("Apptile")
///                 .rawIcon("VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo")
///                 .rawPng("VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo")
///                 .build())
///             .packageDependencies(MsixPackageDependenciesArgs.builder()
///                 .dependencyName("MsixTest_Dependency_Name")
///                 .minVersion("version")
///                 .publisher("PublishedName")
///                 .build())
///             .packageFamilyName("MsixPackage_FamilyName")
///             .packageName("MsixPackage_name")
///             .packageRelativePath("packagerelativepath")
///             .resourceGroupName("resourceGroup1")
///             .version("version")
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
/// const msixPackage = new azure_native.desktopvirtualization.MSIXPackage("msixPackage", {
///     displayName: "displayname",
///     hostPoolName: "hostpool1",
///     imagePath: "imagepath",
///     isActive: false,
///     isRegularRegistration: false,
///     lastUpdated: "2008-09-22T14:01:54.9571247Z",
///     msixPackageFullName: "msixpackagefullname",
///     packageApplications: [{
///         appId: "ApplicationId",
///         appUserModelID: "AppUserModelId",
///         description: "application-desc",
///         friendlyName: "friendlyname",
///         iconImageName: "Apptile",
///         rawIcon: "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///         rawPng: "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///     }],
///     packageDependencies: [{
///         dependencyName: "MsixTest_Dependency_Name",
///         minVersion: "version",
///         publisher: "PublishedName",
///     }],
///     packageFamilyName: "MsixPackage_FamilyName",
///     packageName: "MsixPackage_name",
///     packageRelativePath: "packagerelativepath",
///     resourceGroupName: "resourceGroup1",
///     version: "version",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// msix_package = azure_native.desktopvirtualization.MSIXPackage("msixPackage",
///     display_name="displayname",
///     host_pool_name="hostpool1",
///     image_path="imagepath",
///     is_active=False,
///     is_regular_registration=False,
///     last_updated="2008-09-22T14:01:54.9571247Z",
///     msix_package_full_name="msixpackagefullname",
///     package_applications=[{
///         "app_id": "ApplicationId",
///         "app_user_model_id": "AppUserModelId",
///         "description": "application-desc",
///         "friendly_name": "friendlyname",
///         "icon_image_name": "Apptile",
///         "raw_icon": "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///         "raw_png": "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///     }],
///     package_dependencies=[{
///         "dependency_name": "MsixTest_Dependency_Name",
///         "min_version": "version",
///         "publisher": "PublishedName",
///     }],
///     package_family_name="MsixPackage_FamilyName",
///     package_name="MsixPackage_name",
///     package_relative_path="packagerelativepath",
///     resource_group_name="resourceGroup1",
///     version="version")
///
/// ```
///
/// ```yaml
/// resources:
///   msixPackage:
///     type: azure-native:desktopvirtualization:MSIXPackage
///     properties:
///       displayName: displayname
///       hostPoolName: hostpool1
///       imagePath: imagepath
///       isActive: false
///       isRegularRegistration: false
///       lastUpdated: 2008-09-22T14:01:54.9571247Z
///       msixPackageFullName: msixpackagefullname
///       packageApplications:
///         - appId: ApplicationId
///           appUserModelID: AppUserModelId
///           description: application-desc
///           friendlyName: friendlyname
///           iconImageName: Apptile
///           rawIcon: VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo
///           rawPng: VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo
///       packageDependencies:
///         - dependencyName: MsixTest_Dependency_Name
///           minVersion: version
///           publisher: PublishedName
///       packageFamilyName: MsixPackage_FamilyName
///       packageName: MsixPackage_name
///       packageRelativePath: packagerelativepath
///       resourceGroupName: resourceGroup1
///       version: version
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
/// $ pulumi import azure-native:desktopvirtualization:MSIXPackage hostpool1/MsixPackageFullName /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/hostPools/{hostPoolName}/msixPackages/{msixPackageFullName}
/// ```
class MSIXPackage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// User friendly Name to be displayed in the portal.
  late final pulumi.Output<String?> displayName;
  /// VHD/CIM image path on Network Share.
  late final pulumi.Output<String?> imagePath;
  /// Make this version of the package the active one across the hostpool.
  late final pulumi.Output<bool?> isActive;
  /// Specifies how to register Package in feed.
  late final pulumi.Output<bool?> isRegularRegistration;
  /// Date Package was last updated, found in the appxmanifest.xml.
  late final pulumi.Output<String?> lastUpdated;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of package applications.
  late final pulumi.Output<List<MsixPackageApplicationsResponse>?> packageApplications;
  /// List of package dependencies.
  late final pulumi.Output<List<MsixPackageDependenciesResponse>?> packageDependencies;
  /// Package Family Name from appxmanifest.xml. Contains Package Name and Publisher name.
  late final pulumi.Output<String?> packageFamilyName;
  /// Package Name from appxmanifest.xml.
  late final pulumi.Output<String?> packageName;
  /// Relative Path to the package inside the image.
  late final pulumi.Output<String?> packageRelativePath;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Package version found in the appxmanifest.xml.
  late final pulumi.Output<String?> version;

  /// Creates a new [MSIXPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MSIXPackage]. {@macro pulumi_desktopvirtualization_msixpackage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MSIXPackage(
    String name, {
    MSIXPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:desktopvirtualization:MSIXPackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    imagePath = registerOutput<String?>('imagePath');
    isActive = registerOutput<bool?>('isActive');
    isRegularRegistration = registerOutput<bool?>('isRegularRegistration');
    lastUpdated = registerOutput<String?>('lastUpdated');
    this.name = registerOutput<String>('name');
    packageApplications = registerOutput<List<MsixPackageApplicationsResponse>?>('packageApplications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MsixPackageApplicationsResponse>(guardedValue, (value) => MsixPackageApplicationsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    packageDependencies = registerOutput<List<MsixPackageDependenciesResponse>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MsixPackageDependenciesResponse>(guardedValue, (value) => MsixPackageDependenciesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    packageFamilyName = registerOutput<String?>('packageFamilyName');
    packageName = registerOutput<String?>('packageName');
    packageRelativePath = registerOutput<String?>('packageRelativePath');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }

  /// Creates a typed reference to an existing [MSIXPackage] resource.
  MSIXPackage.reference(String urn)
    : super(
        'azure-native:desktopvirtualization:MSIXPackage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String?>('displayName');
    imagePath = registerOutput<String?>('imagePath');
    isActive = registerOutput<bool?>('isActive');
    isRegularRegistration = registerOutput<bool?>('isRegularRegistration');
    lastUpdated = registerOutput<String?>('lastUpdated');
    this.name = registerOutput<String>('name');
    packageApplications = registerOutput<List<MsixPackageApplicationsResponse>?>('packageApplications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MsixPackageApplicationsResponse>(guardedValue, (value) => MsixPackageApplicationsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    packageDependencies = registerOutput<List<MsixPackageDependenciesResponse>?>('packageDependencies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MsixPackageDependenciesResponse>(guardedValue, (value) => MsixPackageDependenciesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    packageFamilyName = registerOutput<String?>('packageFamilyName');
    packageName = registerOutput<String?>('packageName');
    packageRelativePath = registerOutput<String?>('packageRelativePath');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
