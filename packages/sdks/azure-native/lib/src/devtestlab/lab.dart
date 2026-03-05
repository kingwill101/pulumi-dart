import 'package:pulumi/pulumi.dart' as pulumi;
import 'lab_announcement_properties_response.dart';
import 'lab_args.dart';
import 'lab_support_properties_response.dart';

/// A lab.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Labs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lab = new AzureNative.DevTestLab.Lab("lab", new()
///     {
///         LabStorageType = "{Standard|Premium}",
///         Location = "{location}",
///         Name = "{labName}",
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewLab(ctx, "lab", &devtestlab.LabArgs{
/// 			LabStorageType:    pulumi.String("{Standard|Premium}"),
/// 			Location:          pulumi.String("{location}"),
/// 			Name:              pulumi.String("{labName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
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
/// import com.pulumi.azurenative.devtestlab.Lab;
/// import com.pulumi.azurenative.devtestlab.LabArgs;
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
///         var lab = new Lab("lab", LabArgs.builder()
///             .labStorageType("{Standard|Premium}")
///             .location("{location}")
///             .name("{labName}")
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.of("tagName1", "tagValue1"))
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
/// const lab = new azure_native.devtestlab.Lab("lab", {
///     labStorageType: "{Standard|Premium}",
///     location: "{location}",
///     name: "{labName}",
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         tagName1: "tagValue1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// lab = azure_native.devtestlab.Lab("lab",
///     lab_storage_type="{Standard|Premium}",
///     location="{location}",
///     name="{labName}",
///     resource_group_name="resourceGroupName",
///     tags={
///         "tagName1": "tagValue1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   lab:
///     type: azure-native:devtestlab:Lab
///     properties:
///       labStorageType: '{Standard|Premium}'
///       location: '{location}'
///       name: '{labName}'
///       resourceGroupName: resourceGroupName
///       tags:
///         tagName1: tagValue1
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
/// $ pulumi import azure-native:devtestlab:Lab {labName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{name}
/// ```
class Lab extends pulumi.CustomResource {
  /// The properties of any lab announcement associated with this lab
  late final pulumi.Output<LabAnnouncementPropertiesResponse?> announcement;
  /// The lab's artifact storage account.
  late final pulumi.Output<String> artifactsStorageAccount;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The creation date of the lab.
  late final pulumi.Output<String> createdDate;
  /// The lab's default premium storage account.
  late final pulumi.Output<String> defaultPremiumStorageAccount;
  /// The lab's default storage account.
  late final pulumi.Output<String> defaultStorageAccount;
  /// The access rights to be granted to the user when provisioning an environment
  late final pulumi.Output<String?> environmentPermission;
  /// Extended properties of the lab used for experimental features
  late final pulumi.Output<Map<String, String>?> extendedProperties;
  /// Type of storage used by the lab. It can be either Premium or Standard. Default is Premium.
  late final pulumi.Output<String?> labStorageType;
  /// The load balancer used to for lab VMs that use shared IP address.
  late final pulumi.Output<String> loadBalancerId;
  /// The location of the resource.
  late final pulumi.Output<String?> location;
  /// The ordered list of artifact resource IDs that should be applied on all Linux VM creations by default, prior to the artifacts specified by the user.
  late final pulumi.Output<List<String>?> mandatoryArtifactsResourceIdsLinux;
  /// The ordered list of artifact resource IDs that should be applied on all Windows VM creations by default, prior to the artifacts specified by the user.
  late final pulumi.Output<List<String>?> mandatoryArtifactsResourceIdsWindows;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The Network Security Group attached to the lab VMs Network interfaces to restrict open ports.
  late final pulumi.Output<String> networkSecurityGroupId;
  /// The lab's premium data disk storage account.
  late final pulumi.Output<String> premiumDataDiskStorageAccount;
  /// The setting to enable usage of premium data disks.
  /// When its value is 'Enabled', creation of standard or premium data disks is allowed.
  /// When its value is 'Disabled', only creation of standard data disks is allowed.
  late final pulumi.Output<String?> premiumDataDisks;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The public IP address for the lab's load balancer.
  late final pulumi.Output<String> publicIpId;
  /// The properties of any lab support message associated with this lab
  late final pulumi.Output<LabSupportPropertiesResponse?> support;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;
  /// The lab's Key vault.
  late final pulumi.Output<String> vaultName;
  /// The resource group in which all new lab virtual machines will be created. To let DevTest Labs manage resource group creation, set this value to null.
  late final pulumi.Output<String> vmCreationResourceGroup;

  /// Creates a new [Lab].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Lab]. {@macro pulumi_devtestlab_lab_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Lab(
    String name, {
    LabArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:Lab',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    announcement = registerOutput<LabAnnouncementPropertiesResponse?>('announcement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabAnnouncementPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    artifactsStorageAccount = registerOutput<String>('artifactsStorageAccount');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdDate = registerOutput<String>('createdDate');
    defaultPremiumStorageAccount = registerOutput<String>('defaultPremiumStorageAccount');
    defaultStorageAccount = registerOutput<String>('defaultStorageAccount');
    environmentPermission = registerOutput<String?>('environmentPermission');
    extendedProperties = registerOutput<Map<String, String>?>('extendedProperties');
    labStorageType = registerOutput<String?>('labStorageType');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    location = registerOutput<String?>('location');
    mandatoryArtifactsResourceIdsLinux = registerOutput<List<String>?>('mandatoryArtifactsResourceIdsLinux');
    mandatoryArtifactsResourceIdsWindows = registerOutput<List<String>?>('mandatoryArtifactsResourceIdsWindows');
    this.name = registerOutput<String>('name');
    networkSecurityGroupId = registerOutput<String>('networkSecurityGroupId');
    premiumDataDiskStorageAccount = registerOutput<String>('premiumDataDiskStorageAccount');
    premiumDataDisks = registerOutput<String?>('premiumDataDisks');
    provisioningState = registerOutput<String>('provisioningState');
    publicIpId = registerOutput<String>('publicIpId');
    support = registerOutput<LabSupportPropertiesResponse?>('support', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabSupportPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    vaultName = registerOutput<String>('vaultName');
    vmCreationResourceGroup = registerOutput<String>('vmCreationResourceGroup');
  }
}
