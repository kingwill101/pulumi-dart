import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'kubernetes_version_profile_response_properties.dart';
import 'kubernetes_versions_args.dart';
import 'system_data_response.dart';

/// The supported kubernetes versions.
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutKubernetesVersions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kubernetesVersions = new AzureNative.HybridContainerService.KubernetesVersions("kubernetesVersions", new()
///     {
///         CustomLocationResourceUri = "subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation",
///         ExtendedLocation = new AzureNative.HybridContainerService.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///             Type = AzureNative.HybridContainerService.ExtendedLocationTypes.CustomLocation,
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
/// 	hybridcontainerservice "github.com/pulumi/pulumi-azure-native-sdk/hybridcontainerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcontainerservice.NewKubernetesVersions(ctx, "kubernetesVersions", &hybridcontainerservice.KubernetesVersionsArgs{
/// 			CustomLocationResourceUri: pulumi.String("subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation"),
/// 			ExtendedLocation: &hybridcontainerservice.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation"),
/// 				Type: pulumi.String(hybridcontainerservice.ExtendedLocationTypesCustomLocation),
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
/// import com.pulumi.azurenative.hybridcontainerservice.KubernetesVersions;
/// import com.pulumi.azurenative.hybridcontainerservice.KubernetesVersionsArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.ExtendedLocationArgs;
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
///         var kubernetesVersions = new KubernetesVersions("kubernetesVersions", KubernetesVersionsArgs.builder()
///             .customLocationResourceUri("subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation")
///                 .type("CustomLocation")
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
/// const kubernetesVersions = new azure_native.hybridcontainerservice.KubernetesVersions("kubernetesVersions", {
///     customLocationResourceUri: "subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation",
///     extendedLocation: {
///         name: "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///         type: azure_native.hybridcontainerservice.ExtendedLocationTypes.CustomLocation,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kubernetes_versions = azure_native.hybridcontainerservice.KubernetesVersions("kubernetesVersions",
///     custom_location_resource_uri="subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation",
///     extended_location={
///         "name": "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///         "type": azure_native.hybridcontainerservice.ExtendedLocationTypes.CUSTOM_LOCATION,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   kubernetesVersions:
///     type: azure-native:hybridcontainerservice:KubernetesVersions
///     properties:
///       customLocationResourceUri: subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation
///       extendedLocation:
///         name: /subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation
///         type: CustomLocation
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
/// $ pulumi import azure-native:hybridcontainerservice:KubernetesVersions default /{customLocationResourceUri}/providers/Microsoft.HybridContainerService/kubernetesVersions/default
/// ```
class KubernetesVersions extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Extended location pointing to the underlying infrastructure
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<KubernetesVersionProfileResponseProperties>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [KubernetesVersions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesVersions]. {@macro pulumi_hybridcontainerservice_kubernetes_versions_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesVersions(
    String name, {
    KubernetesVersionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcontainerservice:KubernetesVersions',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    this.name = registerOutput<String>('name');
    properties = registerOutput<KubernetesVersionProfileResponseProperties>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
