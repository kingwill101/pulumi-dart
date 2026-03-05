import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_attach_package_args.dart';
import 'app_attach_package_properties_response.dart';
import 'system_data_response.dart';

/// Schema for App Attach Package properties.
///
/// Uses Azure REST API version 2024-04-03. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// Other available API versions: 2023-10-04-preview, 2023-11-01-preview, 2024-01-16-preview, 2024-03-06-preview, 2024-04-08-preview, 2024-08-08-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01-preview, 2025-08-01-preview, 2025-09-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native desktopvirtualization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AppAttachPackage_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appAttachPackage = new AzureNative.DesktopVirtualization.AppAttachPackage("appAttachPackage", new()
///     {
///         AppAttachPackageName = "msixpackagefullname",
///         Location = "southcentralus",
///         Properties = new AzureNative.DesktopVirtualization.Inputs.AppAttachPackagePropertiesArgs
///         {
///             FailHealthCheckOnStagingFailure = AzureNative.DesktopVirtualization.FailHealthCheckOnStagingFailure.NeedsAssistance,
///             HostPoolReferences = new() { },
///             Image = new AzureNative.DesktopVirtualization.Inputs.AppAttachPackageInfoPropertiesArgs
///             {
///                 CertificateExpiry = "2023-01-02T17:18:19.1234567Z",
///                 CertificateName = "certName",
///                 DisplayName = "displayname",
///                 ImagePath = "imagepath",
///                 IsActive = false,
///                 IsRegularRegistration = false,
///                 LastUpdated = "2008-09-22T14:01:54.9571247Z",
///                 PackageAlias = "msixpackagealias",
///                 PackageApplications = new[]
///                 {
///                     new AzureNative.DesktopVirtualization.Inputs.MsixPackageApplicationsArgs
///                     {
///                         AppId = "AppId",
///                         AppUserModelID = "AppUserModelId",
///                         Description = "PackageApplicationDescription",
///                         FriendlyName = "FriendlyName",
///                         IconImageName = "Iconimagename",
///                         RawIcon = "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///                         RawPng = "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///                     },
///                 },
///                 PackageDependencies = new[]
///                 {
///                     new AzureNative.DesktopVirtualization.Inputs.MsixPackageDependenciesArgs
///                     {
///                         DependencyName = "MsixPackage_Dependency_Name",
///                         MinVersion = "packageDep_version",
///                         Publisher = "MsixPackage_Dependency_Publisher",
///                     },
///                 },
///                 PackageFamilyName = "MsixPackage_FamilyName",
///                 PackageFullName = "MsixPackage_FullName",
///                 PackageName = "MsixPackageName",
///                 PackageRelativePath = "packagerelativepath",
///                 Version = "packageversion",
///             },
///             KeyVaultURL = "",
///         },
///         ResourceGroupName = "resourceGroup1",
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
/// 		_, err := desktopvirtualization.NewAppAttachPackage(ctx, "appAttachPackage", &desktopvirtualization.AppAttachPackageArgs{
/// 			AppAttachPackageName: pulumi.String("msixpackagefullname"),
/// 			Location:             pulumi.String("southcentralus"),
/// 			Properties: &desktopvirtualization.AppAttachPackagePropertiesArgs{
/// 				FailHealthCheckOnStagingFailure: pulumi.String(desktopvirtualization.FailHealthCheckOnStagingFailureNeedsAssistance),
/// 				HostPoolReferences:              pulumi.StringArray{},
/// 				Image: &desktopvirtualization.AppAttachPackageInfoPropertiesArgs{
/// 					CertificateExpiry:     pulumi.String("2023-01-02T17:18:19.1234567Z"),
/// 					CertificateName:       pulumi.String("certName"),
/// 					DisplayName:           pulumi.String("displayname"),
/// 					ImagePath:             pulumi.String("imagepath"),
/// 					IsActive:              pulumi.Bool(false),
/// 					IsRegularRegistration: pulumi.Bool(false),
/// 					LastUpdated:           pulumi.String("2008-09-22T14:01:54.9571247Z"),
/// 					PackageAlias:          pulumi.String("msixpackagealias"),
/// 					PackageApplications: desktopvirtualization.MsixPackageApplicationsArray{
/// 						&desktopvirtualization.MsixPackageApplicationsArgs{
/// 							AppId:          pulumi.String("AppId"),
/// 							AppUserModelID: pulumi.String("AppUserModelId"),
/// 							Description:    pulumi.String("PackageApplicationDescription"),
/// 							FriendlyName:   pulumi.String("FriendlyName"),
/// 							IconImageName:  pulumi.String("Iconimagename"),
/// 							RawIcon:        pulumi.String("VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo"),
/// 							RawPng:         pulumi.String("VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo"),
/// 						},
/// 					},
/// 					PackageDependencies: desktopvirtualization.MsixPackageDependenciesArray{
/// 						&desktopvirtualization.MsixPackageDependenciesArgs{
/// 							DependencyName: pulumi.String("MsixPackage_Dependency_Name"),
/// 							MinVersion:     pulumi.String("packageDep_version"),
/// 							Publisher:      pulumi.String("MsixPackage_Dependency_Publisher"),
/// 						},
/// 					},
/// 					PackageFamilyName:   pulumi.String("MsixPackage_FamilyName"),
/// 					PackageFullName:     pulumi.String("MsixPackage_FullName"),
/// 					PackageName:         pulumi.String("MsixPackageName"),
/// 					PackageRelativePath: pulumi.String("packagerelativepath"),
/// 					Version:             pulumi.String("packageversion"),
/// 				},
/// 				KeyVaultURL: pulumi.String(""),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroup1"),
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
/// import com.pulumi.azurenative.desktopvirtualization.AppAttachPackage;
/// import com.pulumi.azurenative.desktopvirtualization.AppAttachPackageArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.AppAttachPackagePropertiesArgs;
/// import com.pulumi.azurenative.desktopvirtualization.inputs.AppAttachPackageInfoPropertiesArgs;
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
///         var appAttachPackage = new AppAttachPackage("appAttachPackage", AppAttachPackageArgs.builder()
///             .appAttachPackageName("msixpackagefullname")
///             .location("southcentralus")
///             .properties(AppAttachPackagePropertiesArgs.builder()
///                 .failHealthCheckOnStagingFailure("NeedsAssistance")
///                 .hostPoolReferences()
///                 .image(AppAttachPackageInfoPropertiesArgs.builder()
///                     .certificateExpiry("2023-01-02T17:18:19.1234567Z")
///                     .certificateName("certName")
///                     .displayName("displayname")
///                     .imagePath("imagepath")
///                     .isActive(false)
///                     .isRegularRegistration(false)
///                     .lastUpdated("2008-09-22T14:01:54.9571247Z")
///                     .packageAlias("msixpackagealias")
///                     .packageApplications(MsixPackageApplicationsArgs.builder()
///                         .appId("AppId")
///                         .appUserModelID("AppUserModelId")
///                         .description("PackageApplicationDescription")
///                         .friendlyName("FriendlyName")
///                         .iconImageName("Iconimagename")
///                         .rawIcon("VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo")
///                         .rawPng("VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo")
///                         .build())
///                     .packageDependencies(MsixPackageDependenciesArgs.builder()
///                         .dependencyName("MsixPackage_Dependency_Name")
///                         .minVersion("packageDep_version")
///                         .publisher("MsixPackage_Dependency_Publisher")
///                         .build())
///                     .packageFamilyName("MsixPackage_FamilyName")
///                     .packageFullName("MsixPackage_FullName")
///                     .packageName("MsixPackageName")
///                     .packageRelativePath("packagerelativepath")
///                     .version("packageversion")
///                     .build())
///                 .keyVaultURL("")
///                 .build())
///             .resourceGroupName("resourceGroup1")
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
/// const appAttachPackage = new azure_native.desktopvirtualization.AppAttachPackage("appAttachPackage", {
///     appAttachPackageName: "msixpackagefullname",
///     location: "southcentralus",
///     properties: {
///         failHealthCheckOnStagingFailure: azure_native.desktopvirtualization.FailHealthCheckOnStagingFailure.NeedsAssistance,
///         hostPoolReferences: [],
///         image: {
///             certificateExpiry: "2023-01-02T17:18:19.1234567Z",
///             certificateName: "certName",
///             displayName: "displayname",
///             imagePath: "imagepath",
///             isActive: false,
///             isRegularRegistration: false,
///             lastUpdated: "2008-09-22T14:01:54.9571247Z",
///             packageAlias: "msixpackagealias",
///             packageApplications: [{
///                 appId: "AppId",
///                 appUserModelID: "AppUserModelId",
///                 description: "PackageApplicationDescription",
///                 friendlyName: "FriendlyName",
///                 iconImageName: "Iconimagename",
///                 rawIcon: "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///                 rawPng: "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///             }],
///             packageDependencies: [{
///                 dependencyName: "MsixPackage_Dependency_Name",
///                 minVersion: "packageDep_version",
///                 publisher: "MsixPackage_Dependency_Publisher",
///             }],
///             packageFamilyName: "MsixPackage_FamilyName",
///             packageFullName: "MsixPackage_FullName",
///             packageName: "MsixPackageName",
///             packageRelativePath: "packagerelativepath",
///             version: "packageversion",
///         },
///         keyVaultURL: "",
///     },
///     resourceGroupName: "resourceGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_attach_package = azure_native.desktopvirtualization.AppAttachPackage("appAttachPackage",
///     app_attach_package_name="msixpackagefullname",
///     location="southcentralus",
///     properties={
///         "fail_health_check_on_staging_failure": azure_native.desktopvirtualization.FailHealthCheckOnStagingFailure.NEEDS_ASSISTANCE,
///         "host_pool_references": [],
///         "image": {
///             "certificate_expiry": "2023-01-02T17:18:19.1234567Z",
///             "certificate_name": "certName",
///             "display_name": "displayname",
///             "image_path": "imagepath",
///             "is_active": False,
///             "is_regular_registration": False,
///             "last_updated": "2008-09-22T14:01:54.9571247Z",
///             "package_alias": "msixpackagealias",
///             "package_applications": [{
///                 "app_id": "AppId",
///                 "app_user_model_id": "AppUserModelId",
///                 "description": "PackageApplicationDescription",
///                 "friendly_name": "FriendlyName",
///                 "icon_image_name": "Iconimagename",
///                 "raw_icon": "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///                 "raw_png": "VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo",
///             }],
///             "package_dependencies": [{
///                 "dependency_name": "MsixPackage_Dependency_Name",
///                 "min_version": "packageDep_version",
///                 "publisher": "MsixPackage_Dependency_Publisher",
///             }],
///             "package_family_name": "MsixPackage_FamilyName",
///             "package_full_name": "MsixPackage_FullName",
///             "package_name": "MsixPackageName",
///             "package_relative_path": "packagerelativepath",
///             "version": "packageversion",
///         },
///         "key_vault_url": "",
///     },
///     resource_group_name="resourceGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   appAttachPackage:
///     type: azure-native:desktopvirtualization:AppAttachPackage
///     properties:
///       appAttachPackageName: msixpackagefullname
///       location: southcentralus
///       properties:
///         failHealthCheckOnStagingFailure: NeedsAssistance
///         hostPoolReferences: []
///         image:
///           certificateExpiry: 2023-01-02T17:18:19.1234567Z
///           certificateName: certName
///           displayName: displayname
///           imagePath: imagepath
///           isActive: false
///           isRegularRegistration: false
///           lastUpdated: 2008-09-22T14:01:54.9571247Z
///           packageAlias: msixpackagealias
///           packageApplications:
///             - appId: AppId
///               appUserModelID: AppUserModelId
///               description: PackageApplicationDescription
///               friendlyName: FriendlyName
///               iconImageName: Iconimagename
///               rawIcon: VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo
///               rawPng: VGhpcyBpcyBhIHN0cmluZyB0byBoYXNo
///           packageDependencies:
///             - dependencyName: MsixPackage_Dependency_Name
///               minVersion: packageDep_version
///               publisher: MsixPackage_Dependency_Publisher
///           packageFamilyName: MsixPackage_FamilyName
///           packageFullName: MsixPackage_FullName
///           packageName: MsixPackageName
///           packageRelativePath: packagerelativepath
///           version: packageversion
///         keyVaultURL: ""
///       resourceGroupName: resourceGroup1
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
/// $ pulumi import azure-native:desktopvirtualization:AppAttachPackage packageName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DesktopVirtualization/appAttachPackages/{appAttachPackageName}
/// ```
class AppAttachPackage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Detailed properties for App Attach Package
  late final pulumi.Output<AppAttachPackagePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AppAttachPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppAttachPackage]. {@macro pulumi_desktopvirtualization_app_attach_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppAttachPackage(
    String name, {
    AppAttachPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:desktopvirtualization:AppAttachPackage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AppAttachPackagePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AppAttachPackagePropertiesResponse.fromMap(
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
