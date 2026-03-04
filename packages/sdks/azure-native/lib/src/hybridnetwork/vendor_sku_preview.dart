import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'vendor_sku_preview_args.dart';

/// Customer subscription which can use a sku.
///
/// Uses Azure REST API version 2022-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update preview subscription of vendor sku sub resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vendorSkuPreview = new AzureNative.HybridNetwork.VendorSkuPreview("vendorSkuPreview", new()
///     {
///         PreviewSubscription = "previewSub",
///         SkuName = "TestSku",
///         VendorName = "TestVendor",
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
/// 	hybridnetwork "github.com/pulumi/pulumi-azure-native-sdk/hybridnetwork/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridnetwork.NewVendorSkuPreview(ctx, "vendorSkuPreview", &hybridnetwork.VendorSkuPreviewArgs{
/// 			PreviewSubscription: pulumi.String("previewSub"),
/// 			SkuName:             pulumi.String("TestSku"),
/// 			VendorName:          pulumi.String("TestVendor"),
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
/// import com.pulumi.azurenative.hybridnetwork.VendorSkuPreview;
/// import com.pulumi.azurenative.hybridnetwork.VendorSkuPreviewArgs;
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
///         var vendorSkuPreview = new VendorSkuPreview("vendorSkuPreview", VendorSkuPreviewArgs.builder()
///             .previewSubscription("previewSub")
///             .skuName("TestSku")
///             .vendorName("TestVendor")
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
/// const vendorSkuPreview = new azure_native.hybridnetwork.VendorSkuPreview("vendorSkuPreview", {
///     previewSubscription: "previewSub",
///     skuName: "TestSku",
///     vendorName: "TestVendor",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vendor_sku_preview = azure_native.hybridnetwork.VendorSkuPreview("vendorSkuPreview",
///     preview_subscription="previewSub",
///     sku_name="TestSku",
///     vendor_name="TestVendor")
///
/// ```
///
/// ```yaml
/// resources:
///   vendorSkuPreview:
///     type: azure-native:hybridnetwork:VendorSkuPreview
///     properties:
///       previewSubscription: previewSub
///       skuName: TestSku
///       vendorName: TestVendor
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
/// $ pulumi import azure-native:hybridnetwork:VendorSkuPreview previewSub /subscriptions/{subscriptionId}/providers/Microsoft.HybridNetwork/vendors/{vendorName}/vendorSkus/{skuName}/previewSubscriptions/{previewSubscription}
/// ```
class VendorSkuPreview extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The preview subscription ID.
  late final pulumi.Output<String> name;

  /// The provisioning state of the PreviewSubscription resource.
  late final pulumi.Output<String> provisioningState;

  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [VendorSkuPreview].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VendorSkuPreview]. {@macro pulumi_hybridnetwork_vendor_sku_preview_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VendorSkuPreview(
    String name, {
    VendorSkuPreviewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridnetwork:VendorSkuPreview',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
