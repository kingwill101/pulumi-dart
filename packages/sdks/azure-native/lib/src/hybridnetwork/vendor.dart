import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'vendor_args.dart';

/// Vendor resource.
///
/// Uses Azure REST API version 2022-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update Vendor resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vendor = new AzureNative.HybridNetwork.Vendor("vendor", new()
///     {
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
/// 		_, err := hybridnetwork.NewVendor(ctx, "vendor", &hybridnetwork.VendorArgs{
/// 			VendorName: pulumi.String("TestVendor"),
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
/// resource "azure-native_hybridnetwork_vendor" "vendor" {
///   vendor_name = "TestVendor"
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
/// import com.pulumi.azurenative.hybridnetwork.Vendor;
/// import com.pulumi.azurenative.hybridnetwork.VendorArgs;
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
///         var vendor = new Vendor("vendor", VendorArgs.builder()
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
/// const vendor = new azure_native.hybridnetwork.Vendor("vendor", {vendorName: "TestVendor"});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vendor = azure_native.hybridnetwork.Vendor("vendor", vendor_name="TestVendor")
///
/// ```
///
/// ```yaml
/// resources:
///   vendor:
///     type: azure-native:hybridnetwork:Vendor
///     properties:
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
/// $ pulumi import azure-native:hybridnetwork:Vendor TestVendor /subscriptions/{subscriptionId}/providers/Microsoft.HybridNetwork/vendors/{vendorName}
/// ```
class Vendor extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the vendor resource.
  late final pulumi.Output<String> provisioningState;
  /// A list of IDs of the vendor skus offered by the vendor.
  late final pulumi.Output<List<Map<String, dynamic>>> skus;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Vendor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vendor]. {@macro pulumi_hybridnetwork_vendor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vendor(
    String name, {
    VendorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridnetwork:Vendor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    skus = registerOutput<List<Map<String, dynamic>>>('skus');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
