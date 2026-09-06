import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_link_args.dart';
import 'system_data_response.dart';

/// A cloud link resource
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CloudLinks_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudLink = new AzureNative.AVS.CloudLink("cloudLink", new()
///     {
///         CloudLinkName = "cloudLink1",
///         LinkedCloud = "/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.AVS/privateClouds/cloud2",
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
/// 		_, err := avs.NewCloudLink(ctx, "cloudLink", &avs.CloudLinkArgs{
/// 			CloudLinkName:     pulumi.String("cloudLink1"),
/// 			LinkedCloud:       pulumi.String("/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.AVS/privateClouds/cloud2"),
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
/// resource "azure-native_avs_cloudlink" "cloudLink" {
///   cloud_link_name     = "cloudLink1"
///   linked_cloud        = "/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.AVS/privateClouds/cloud2"
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
/// import com.pulumi.azurenative.avs.CloudLink;
/// import com.pulumi.azurenative.avs.CloudLinkArgs;
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
///         var cloudLink = new CloudLink("cloudLink", CloudLinkArgs.builder()
///             .cloudLinkName("cloudLink1")
///             .linkedCloud("/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.AVS/privateClouds/cloud2")
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
/// const cloudLink = new azure_native.avs.CloudLink("cloudLink", {
///     cloudLinkName: "cloudLink1",
///     linkedCloud: "/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.AVS/privateClouds/cloud2",
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
/// cloud_link = azure_native.avs.CloudLink("cloudLink",
///     cloud_link_name="cloudLink1",
///     linked_cloud="/subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.AVS/privateClouds/cloud2",
///     private_cloud_name="cloud1",
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudLink:
///     type: azure-native:avs:CloudLink
///     properties:
///       cloudLinkName: cloudLink1
///       linkedCloud: /subscriptions/12341234-1234-1234-1234-123412341234/resourceGroups/mygroup/providers/Microsoft.AVS/privateClouds/cloud2
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
/// $ pulumi import azure-native:avs:CloudLink cloudLink1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/cloudLinks/{cloudLinkName}
/// ```
class CloudLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Identifier of the other private cloud participating in the link.
  late final pulumi.Output<String?> linkedCloud;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The state of the cloud link.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CloudLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudLink]. {@macro pulumi_avs_cloud_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudLink(
    String name, {
    CloudLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:CloudLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    linkedCloud = registerOutput<String?>('linkedCloud');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CloudLink] resource.
  CloudLink.reference(String urn)
    : super(
        'azure-native:avs:CloudLink',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    linkedCloud = registerOutput<String?>('linkedCloud');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
