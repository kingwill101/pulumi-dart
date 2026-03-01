import 'package:pulumi/pulumi.dart' as pulumi;
import 'multiple_activation_key_args.dart';

/// MAK key details.
///
/// Uses Azure REST API version 2019-09-16-preview. In version 2.x of the Azure Native provider, it used API version 2019-09-16-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateMultipleActivationKey
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var multipleActivationKey = new AzureNative.WindowsESU.MultipleActivationKey("multipleActivationKey", new()
///     {
///         AgreementNumber = "1a2b45ag",
///         InstalledServerNumber = 100,
///         IsEligible = true,
///         Location = "East US",
///         MultipleActivationKeyName = "server08-key-2019",
///         OsType = AzureNative.WindowsESU.OsType.WindowsServer2008,
///         ResourceGroupName = "testgr1",
///         SupportType = AzureNative.WindowsESU.SupportType.SupplementalServicing,
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
/// 	windowsesu "github.com/pulumi/pulumi-azure-native-sdk/windowsesu/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := windowsesu.NewMultipleActivationKey(ctx, "multipleActivationKey", &windowsesu.MultipleActivationKeyArgs{
/// 			AgreementNumber:           pulumi.String("1a2b45ag"),
/// 			InstalledServerNumber:     pulumi.Int(100),
/// 			IsEligible:                pulumi.Bool(true),
/// 			Location:                  pulumi.String("East US"),
/// 			MultipleActivationKeyName: pulumi.String("server08-key-2019"),
/// 			OsType:                    pulumi.String(windowsesu.OsTypeWindowsServer2008),
/// 			ResourceGroupName:         pulumi.String("testgr1"),
/// 			SupportType:               pulumi.String(windowsesu.SupportTypeSupplementalServicing),
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
/// import com.pulumi.azurenative.windowsesu.MultipleActivationKey;
/// import com.pulumi.azurenative.windowsesu.MultipleActivationKeyArgs;
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
///         var multipleActivationKey = new MultipleActivationKey("multipleActivationKey", MultipleActivationKeyArgs.builder()
///             .agreementNumber("1a2b45ag")
///             .installedServerNumber(100)
///             .isEligible(true)
///             .location("East US")
///             .multipleActivationKeyName("server08-key-2019")
///             .osType("WindowsServer2008")
///             .resourceGroupName("testgr1")
///             .supportType("SupplementalServicing")
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
/// const multipleActivationKey = new azure_native.windowsesu.MultipleActivationKey("multipleActivationKey", {
///     agreementNumber: "1a2b45ag",
///     installedServerNumber: 100,
///     isEligible: true,
///     location: "East US",
///     multipleActivationKeyName: "server08-key-2019",
///     osType: azure_native.windowsesu.OsType.WindowsServer2008,
///     resourceGroupName: "testgr1",
///     supportType: azure_native.windowsesu.SupportType.SupplementalServicing,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// multiple_activation_key = azure_native.windowsesu.MultipleActivationKey("multipleActivationKey",
///     agreement_number="1a2b45ag",
///     installed_server_number=100,
///     is_eligible=True,
///     location="East US",
///     multiple_activation_key_name="server08-key-2019",
///     os_type=azure_native.windowsesu.OsType.WINDOWS_SERVER2008,
///     resource_group_name="testgr1",
///     support_type=azure_native.windowsesu.SupportType.SUPPLEMENTAL_SERVICING)
///
/// ```
///
/// ```yaml
/// resources:
///   multipleActivationKey:
///     type: azure-native:windowsesu:MultipleActivationKey
///     properties:
///       agreementNumber: 1a2b45ag
///       installedServerNumber: 100
///       isEligible: true
///       location: East US
///       multipleActivationKeyName: server08-key-2019
///       osType: WindowsServer2008
///       resourceGroupName: testgr1
///       supportType: SupplementalServicing
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
/// $ pulumi import azure-native:windowsesu:MultipleActivationKey server08-key-2019 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.WindowsESU/multipleActivationKeys/{multipleActivationKeyName}
/// ```
class MultipleActivationKey extends pulumi.CustomResource {
  /// Agreement number under which the key is requested.
  late final pulumi.Output<String?> agreementNumber;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// End of support of security updates activated by the MAK key.
  late final pulumi.Output<String> expirationDate;
  /// Number of activations/servers using the MAK key.
  late final pulumi.Output<int?> installedServerNumber;
  /// <code> true </code> if user has eligible on-premises Windows physical or virtual machines, and that the requested key will only be used in their organization; <code> false </code> otherwise.
  late final pulumi.Output<bool?> isEligible;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// MAK 5x5 key.
  late final pulumi.Output<String> multipleActivationKey;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Type of OS for which the key is requested.
  late final pulumi.Output<String?> osType;
  late final pulumi.Output<String> provisioningState;
  /// Type of support
  late final pulumi.Output<String?> supportType;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MultipleActivationKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultipleActivationKey]. {@macro pulumi_windowsesu_multiple_activation_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultipleActivationKey(
    String name, {
    MultipleActivationKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:windowsesu:MultipleActivationKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agreementNumber = registerOutput<String?>('agreementNumber');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.installedServerNumber = registerOutput<int?>('installedServerNumber');
    this.isEligible = registerOutput<bool?>('isEligible');
    this.location = registerOutput<String>('location');
    this.multipleActivationKey = registerOutput<String>('multipleActivationKey');
    this.name = registerOutput<String>('name');
    this.osType = registerOutput<String?>('osType');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.supportType = registerOutput<String?>('supportType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
