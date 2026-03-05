import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_image_args.dart';
import 'custom_image_properties_custom_response.dart';
import 'custom_image_properties_from_plan_response.dart';
import 'custom_image_properties_from_vm_response.dart';

/// A custom image.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CustomImages_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customImage = new AzureNative.DevTestLab.CustomImage("customImage", new()
///     {
///         Description = "My Custom Image",
///         LabName = "{labName}",
///         Name = "{customImageName}",
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
///         },
///         Vm = new AzureNative.DevTestLab.Inputs.CustomImagePropertiesFromVmArgs
///         {
///             LinuxOsInfo = new AzureNative.DevTestLab.Inputs.LinuxOsInfoArgs
///             {
///                 LinuxOsState = AzureNative.DevTestLab.LinuxOsState.NonDeprovisioned,
///             },
///             SourceVmId = "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/{vmName}",
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
/// 		_, err := devtestlab.NewCustomImage(ctx, "customImage", &devtestlab.CustomImageArgs{
/// 			Description:       pulumi.String("My Custom Image"),
/// 			LabName:           pulumi.String("{labName}"),
/// 			Name:              pulumi.String("{customImageName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 			},
/// 			Vm: &devtestlab.CustomImagePropertiesFromVmArgs{
/// 				LinuxOsInfo: &devtestlab.LinuxOsInfoArgs{
/// 					LinuxOsState: pulumi.String(devtestlab.LinuxOsStateNonDeprovisioned),
/// 				},
/// 				SourceVmId: pulumi.String("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/{vmName}"),
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
/// import com.pulumi.azurenative.devtestlab.CustomImage;
/// import com.pulumi.azurenative.devtestlab.CustomImageArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.CustomImagePropertiesFromVmArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.LinuxOsInfoArgs;
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
///         var customImage = new CustomImage("customImage", CustomImageArgs.builder()
///             .description("My Custom Image")
///             .labName("{labName}")
///             .name("{customImageName}")
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.of("tagName1", "tagValue1"))
///             .vm(CustomImagePropertiesFromVmArgs.builder()
///                 .linuxOsInfo(LinuxOsInfoArgs.builder()
///                     .linuxOsState("NonDeprovisioned")
///                     .build())
///                 .sourceVmId("/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/{vmName}")
///                 .build())
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
/// const customImage = new azure_native.devtestlab.CustomImage("customImage", {
///     description: "My Custom Image",
///     labName: "{labName}",
///     name: "{customImageName}",
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         tagName1: "tagValue1",
///     },
///     vm: {
///         linuxOsInfo: {
///             linuxOsState: azure_native.devtestlab.LinuxOsState.NonDeprovisioned,
///         },
///         sourceVmId: "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/{vmName}",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_image = azure_native.devtestlab.CustomImage("customImage",
///     description="My Custom Image",
///     lab_name="{labName}",
///     name="{customImageName}",
///     resource_group_name="resourceGroupName",
///     tags={
///         "tagName1": "tagValue1",
///     },
///     vm={
///         "linux_os_info": {
///             "linux_os_state": azure_native.devtestlab.LinuxOsState.NON_DEPROVISIONED,
///         },
///         "source_vm_id": "/subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/{vmName}",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   customImage:
///     type: azure-native:devtestlab:CustomImage
///     properties:
///       description: My Custom Image
///       labName: '{labName}'
///       name: '{customImageName}'
///       resourceGroupName: resourceGroupName
///       tags:
///         tagName1: tagValue1
///       vm:
///         linuxOsInfo:
///           linuxOsState: NonDeprovisioned
///         sourceVmId: /subscriptions/{subscriptionId}/resourcegroups/resourceGroupName/providers/microsoft.devtestlab/labs/{labName}/virtualmachines/{vmName}
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
/// $ pulumi import azure-native:devtestlab:CustomImage {customImageName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/customimages/{name}
/// ```
class CustomImage extends pulumi.CustomResource {
  /// The author of the custom image.
  late final pulumi.Output<String?> author;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The creation date of the custom image.
  late final pulumi.Output<String> creationDate;

  /// Storage information about the plan related to this custom image
  late final pulumi.Output<CustomImagePropertiesFromPlanResponse?>
  customImagePlan;

  /// Storage information about the data disks present in the custom image
  late final pulumi.Output<List<Map<String, dynamic>>?> dataDiskStorageInfo;

  /// The description of the custom image.
  late final pulumi.Output<String?> description;

  /// Whether or not the custom images underlying offer/plan has been enabled for programmatic deployment
  late final pulumi.Output<bool?> isPlanAuthorized;

  /// The location of the resource.
  late final pulumi.Output<String?> location;

  /// The Managed Image Id backing the custom image.
  late final pulumi.Output<String?> managedImageId;

  /// The Managed Snapshot Id backing the custom image.
  late final pulumi.Output<String?> managedSnapshotId;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;

  /// The VHD from which the image is to be created.
  late final pulumi.Output<CustomImagePropertiesCustomResponse?> vhd;

  /// The virtual machine from which the image is to be created.
  late final pulumi.Output<CustomImagePropertiesFromVmResponse?> vm;

  /// Creates a new [CustomImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomImage]. {@macro pulumi_devtestlab_custom_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomImage(
    String name, {
    CustomImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devtestlab:CustomImage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    author = registerOutput<String?>('author');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    customImagePlan = registerOutput<CustomImagePropertiesFromPlanResponse?>(
      'customImagePlan',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomImagePropertiesFromPlanResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    dataDiskStorageInfo = registerOutput<List<Map<String, dynamic>>?>(
      'dataDiskStorageInfo',
    );
    description = registerOutput<String?>('description');
    isPlanAuthorized = registerOutput<bool?>('isPlanAuthorized');
    location = registerOutput<String?>('location');
    managedImageId = registerOutput<String?>('managedImageId');
    managedSnapshotId = registerOutput<String?>('managedSnapshotId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    vhd = registerOutput<CustomImagePropertiesCustomResponse?>(
      'vhd',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomImagePropertiesCustomResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vm = registerOutput<CustomImagePropertiesFromVmResponse?>(
      'vm',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomImagePropertiesFromVmResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
