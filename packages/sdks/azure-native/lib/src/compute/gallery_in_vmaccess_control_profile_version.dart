import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_rules_response.dart';
import 'gallery_in_vmaccess_control_profile_version_args.dart';
import 'replication_status_response.dart';
import 'system_data_response.dart';

/// Specifies information about the gallery inVMAccessControlProfile version that you want to create or update.
///
/// Uses Azure REST API version 2024-03-03. In version 2.x of the Azure Native provider, it used API version 2024-03-03.
///
/// Other available API versions: 2025-03-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a Gallery InVMAccessControlProfile Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryInVMAccessControlProfileVersion = new AzureNative.Compute.GalleryInVMAccessControlProfileVersion("galleryInVMAccessControlProfileVersion", new()
///     {
///         DefaultAccess = AzureNative.Compute.EndpointAccess.Allow,
///         ExcludeFromLatest = false,
///         GalleryName = "myGalleryName",
///         InVMAccessControlProfileName = "myInVMAccessControlProfileName",
///         InVMAccessControlProfileVersionName = "1.0.0",
///         Location = "West US",
///         Mode = AzureNative.Compute.AccessControlRulesMode.Audit,
///         ResourceGroupName = "myResourceGroup",
///         Rules = new AzureNative.Compute.Inputs.AccessControlRulesArgs
///         {
///             Identities = new[]
///             {
///                 new AzureNative.Compute.Inputs.AccessControlRulesIdentityArgs
///                 {
///                     ExePath = "C:\\Windows\\System32\\cscript.exe",
///                     GroupName = "Administrators",
///                     Name = "WinPA",
///                     ProcessName = "cscript",
///                     UserName = "SYSTEM",
///                 },
///             },
///             Privileges = new[]
///             {
///                 new AzureNative.Compute.Inputs.AccessControlRulesPrivilegeArgs
///                 {
///                     Name = "GoalState",
///                     Path = "/machine",
///                     QueryParameters =
///                     {
///                         { "comp", "goalstate" },
///                     },
///                 },
///             },
///             RoleAssignments = new[]
///             {
///                 new AzureNative.Compute.Inputs.AccessControlRulesRoleAssignmentArgs
///                 {
///                     Identities = new[]
///                     {
///                         "WinPA",
///                     },
///                     Role = "Provisioning",
///                 },
///             },
///             Roles = new[]
///             {
///                 new AzureNative.Compute.Inputs.AccessControlRulesRoleArgs
///                 {
///                     Name = "Provisioning",
///                     Privileges = new[]
///                     {
///                         "GoalState",
///                     },
///                 },
///             },
///         },
///         TargetLocations = new[]
///         {
///             new AzureNative.Compute.Inputs.TargetRegionArgs
///             {
///                 Name = "West US",
///             },
///             new AzureNative.Compute.Inputs.TargetRegionArgs
///             {
///                 Name = "South Central US",
///             },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryInVMAccessControlProfileVersion(ctx, "galleryInVMAccessControlProfileVersion", &compute.GalleryInVMAccessControlProfileVersionArgs{
/// 			DefaultAccess:                       pulumi.String(compute.EndpointAccessAllow),
/// 			ExcludeFromLatest:                   pulumi.Bool(false),
/// 			GalleryName:                         pulumi.String("myGalleryName"),
/// 			InVMAccessControlProfileName:        pulumi.String("myInVMAccessControlProfileName"),
/// 			InVMAccessControlProfileVersionName: pulumi.String("1.0.0"),
/// 			Location:                            pulumi.String("West US"),
/// 			Mode:                                pulumi.String(compute.AccessControlRulesModeAudit),
/// 			ResourceGroupName:                   pulumi.String("myResourceGroup"),
/// 			Rules: &compute.AccessControlRulesArgs{
/// 				Identities: compute.AccessControlRulesIdentityArray{
/// 					&compute.AccessControlRulesIdentityArgs{
/// 						ExePath:     pulumi.String("C:\\Windows\\System32\\cscript.exe"),
/// 						GroupName:   pulumi.String("Administrators"),
/// 						Name:        pulumi.String("WinPA"),
/// 						ProcessName: pulumi.String("cscript"),
/// 						UserName:    pulumi.String("SYSTEM"),
/// 					},
/// 				},
/// 				Privileges: compute.AccessControlRulesPrivilegeArray{
/// 					&compute.AccessControlRulesPrivilegeArgs{
/// 						Name: pulumi.String("GoalState"),
/// 						Path: pulumi.String("/machine"),
/// 						QueryParameters: pulumi.StringMap{
/// 							"comp": pulumi.String("goalstate"),
/// 						},
/// 					},
/// 				},
/// 				RoleAssignments: compute.AccessControlRulesRoleAssignmentArray{
/// 					&compute.AccessControlRulesRoleAssignmentArgs{
/// 						Identities: pulumi.StringArray{
/// 							pulumi.String("WinPA"),
/// 						},
/// 						Role: pulumi.String("Provisioning"),
/// 					},
/// 				},
/// 				Roles: compute.AccessControlRulesRoleArray{
/// 					&compute.AccessControlRulesRoleArgs{
/// 						Name: pulumi.String("Provisioning"),
/// 						Privileges: pulumi.StringArray{
/// 							pulumi.String("GoalState"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			TargetLocations: compute.TargetRegionArray{
/// 				&compute.TargetRegionArgs{
/// 					Name: pulumi.String("West US"),
/// 				},
/// 				&compute.TargetRegionArgs{
/// 					Name: pulumi.String("South Central US"),
/// 				},
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
/// import com.pulumi.azurenative.compute.GalleryInVMAccessControlProfileVersion;
/// import com.pulumi.azurenative.compute.GalleryInVMAccessControlProfileVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.AccessControlRulesArgs;
/// import com.pulumi.azurenative.compute.inputs.TargetRegionArgs;
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
///         var galleryInVMAccessControlProfileVersion = new GalleryInVMAccessControlProfileVersion("galleryInVMAccessControlProfileVersion", GalleryInVMAccessControlProfileVersionArgs.builder()
///             .defaultAccess("Allow")
///             .excludeFromLatest(false)
///             .galleryName("myGalleryName")
///             .inVMAccessControlProfileName("myInVMAccessControlProfileName")
///             .inVMAccessControlProfileVersionName("1.0.0")
///             .location("West US")
///             .mode("Audit")
///             .resourceGroupName("myResourceGroup")
///             .rules(AccessControlRulesArgs.builder()
///                 .identities(AccessControlRulesIdentityArgs.builder()
///                     .exePath("C:\\Windows\\System32\\cscript.exe")
///                     .groupName("Administrators")
///                     .name("WinPA")
///                     .processName("cscript")
///                     .userName("SYSTEM")
///                     .build())
///                 .privileges(AccessControlRulesPrivilegeArgs.builder()
///                     .name("GoalState")
///                     .path("/machine")
///                     .queryParameters(Map.of("comp", "goalstate"))
///                     .build())
///                 .roleAssignments(AccessControlRulesRoleAssignmentArgs.builder()
///                     .identities("WinPA")
///                     .role("Provisioning")
///                     .build())
///                 .roles(AccessControlRulesRoleArgs.builder()
///                     .name("Provisioning")
///                     .privileges("GoalState")
///                     .build())
///                 .build())
///             .targetLocations(
///                 TargetRegionArgs.builder()
///                     .name("West US")
///                     .build(),
///                 TargetRegionArgs.builder()
///                     .name("South Central US")
///                     .build())
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
/// const galleryInVMAccessControlProfileVersion = new azure_native.compute.GalleryInVMAccessControlProfileVersion("galleryInVMAccessControlProfileVersion", {
///     defaultAccess: azure_native.compute.EndpointAccess.Allow,
///     excludeFromLatest: false,
///     galleryName: "myGalleryName",
///     inVMAccessControlProfileName: "myInVMAccessControlProfileName",
///     inVMAccessControlProfileVersionName: "1.0.0",
///     location: "West US",
///     mode: azure_native.compute.AccessControlRulesMode.Audit,
///     resourceGroupName: "myResourceGroup",
///     rules: {
///         identities: [{
///             exePath: "C:\\Windows\\System32\\cscript.exe",
///             groupName: "Administrators",
///             name: "WinPA",
///             processName: "cscript",
///             userName: "SYSTEM",
///         }],
///         privileges: [{
///             name: "GoalState",
///             path: "/machine",
///             queryParameters: {
///                 comp: "goalstate",
///             },
///         }],
///         roleAssignments: [{
///             identities: ["WinPA"],
///             role: "Provisioning",
///         }],
///         roles: [{
///             name: "Provisioning",
///             privileges: ["GoalState"],
///         }],
///     },
///     targetLocations: [
///         {
///             name: "West US",
///         },
///         {
///             name: "South Central US",
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_in_vm_access_control_profile_version = azure_native.compute.GalleryInVMAccessControlProfileVersion("galleryInVMAccessControlProfileVersion",
///     default_access=azure_native.compute.EndpointAccess.ALLOW,
///     exclude_from_latest=False,
///     gallery_name="myGalleryName",
///     in_vm_access_control_profile_name="myInVMAccessControlProfileName",
///     in_vm_access_control_profile_version_name="1.0.0",
///     location="West US",
///     mode=azure_native.compute.AccessControlRulesMode.AUDIT,
///     resource_group_name="myResourceGroup",
///     rules={
///         "identities": [{
///             "exe_path": "C:\\Windows\\System32\\cscript.exe",
///             "group_name": "Administrators",
///             "name": "WinPA",
///             "process_name": "cscript",
///             "user_name": "SYSTEM",
///         }],
///         "privileges": [{
///             "name": "GoalState",
///             "path": "/machine",
///             "query_parameters": {
///                 "comp": "goalstate",
///             },
///         }],
///         "role_assignments": [{
///             "identities": ["WinPA"],
///             "role": "Provisioning",
///         }],
///         "roles": [{
///             "name": "Provisioning",
///             "privileges": ["GoalState"],
///         }],
///     },
///     target_locations=[
///         {
///             "name": "West US",
///         },
///         {
///             "name": "South Central US",
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   galleryInVMAccessControlProfileVersion:
///     type: azure-native:compute:GalleryInVMAccessControlProfileVersion
///     properties:
///       defaultAccess: Allow
///       excludeFromLatest: false
///       galleryName: myGalleryName
///       inVMAccessControlProfileName: myInVMAccessControlProfileName
///       inVMAccessControlProfileVersionName: 1.0.0
///       location: West US
///       mode: Audit
///       resourceGroupName: myResourceGroup
///       rules:
///         identities:
///           - exePath: C:\Windows\System32\cscript.exe
///             groupName: Administrators
///             name: WinPA
///             processName: cscript
///             userName: SYSTEM
///         privileges:
///           - name: GoalState
///             path: /machine
///             queryParameters:
///               comp: goalstate
///         roleAssignments:
///           - identities:
///               - WinPA
///             role: Provisioning
///         roles:
///           - name: Provisioning
///             privileges:
///               - GoalState
///       targetLocations:
///         - name: West US
///         - name: South Central US
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
/// $ pulumi import azure-native:compute:GalleryInVMAccessControlProfileVersion 1.0.0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/inVMAccessControlProfiles/{inVMAccessControlProfileName}/versions/{inVMAccessControlProfileVersionName}
/// ```
class GalleryInVMAccessControlProfileVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// This property allows you to specify if the requests will be allowed to access the host endpoints. Possible values are: 'Allow', 'Deny'.
  late final pulumi.Output<String> defaultAccess;

  /// If set to true, Virtual Machines deployed from the latest version of the Resource Profile won't use this Profile version.
  late final pulumi.Output<bool?> excludeFromLatest;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// This property allows you to specify whether the access control rules are in Audit mode, in Enforce mode or Disabled. Possible values are: 'Audit', 'Enforce' or 'Disabled'.
  late final pulumi.Output<String> mode;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;

  /// The timestamp for when the Resource Profile Version is published.
  late final pulumi.Output<String> publishedDate;

  /// This is the replication status of the gallery image version.
  late final pulumi.Output<ReplicationStatusResponse> replicationStatus;

  /// This is the Access Control Rules specification for an inVMAccessControlProfile version.
  late final pulumi.Output<AccessControlRulesResponse?> rules;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The target regions where the Resource Profile version is going to be replicated to. This property is updatable.
  late final pulumi.Output<List<Map<String, dynamic>>?> targetLocations;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GalleryInVMAccessControlProfileVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryInVMAccessControlProfileVersion]. {@macro pulumi_compute_gallery_in_vmaccess_control_profile_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryInVMAccessControlProfileVersion(
    String name, {
    GalleryInVMAccessControlProfileVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:compute:GalleryInVMAccessControlProfileVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultAccess = registerOutput<String>('defaultAccess');
    excludeFromLatest = registerOutput<bool?>('excludeFromLatest');
    location = registerOutput<String>('location');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publishedDate = registerOutput<String>('publishedDate');
    replicationStatus = registerOutput<ReplicationStatusResponse>(
      'replicationStatus',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ReplicationStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rules = registerOutput<AccessControlRulesResponse?>(
      'rules',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AccessControlRulesResponse.fromMap(
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
    targetLocations = registerOutput<List<Map<String, dynamic>>?>(
      'targetLocations',
    );
    type = registerOutput<String>('type');
  }
}
