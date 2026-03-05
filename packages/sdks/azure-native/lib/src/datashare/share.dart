import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_args.dart';
import 'system_data_response.dart';

/// A share data transfer object.
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Shares_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var share = new AzureNative.DataShare.Share("share", new()
///     {
///         AccountName = "Account1",
///         Description = "share description",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareKind = AzureNative.DataShare.ShareKind.CopyBased,
///         ShareName = "Share1",
///         Terms = "Confidential",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewShare(ctx, "share", &datashare.ShareArgs{
/// 			AccountName:       pulumi.String("Account1"),
/// 			Description:       pulumi.String("share description"),
/// 			ResourceGroupName: pulumi.String("SampleResourceGroup"),
/// 			ShareKind:         pulumi.String(datashare.ShareKindCopyBased),
/// 			ShareName:         pulumi.String("Share1"),
/// 			Terms:             pulumi.String("Confidential"),
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
/// import com.pulumi.azurenative.datashare.Share;
/// import com.pulumi.azurenative.datashare.ShareArgs;
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
///         var share = new Share("share", ShareArgs.builder()
///             .accountName("Account1")
///             .description("share description")
///             .resourceGroupName("SampleResourceGroup")
///             .shareKind("CopyBased")
///             .shareName("Share1")
///             .terms("Confidential")
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
/// const share = new azure_native.datashare.Share("share", {
///     accountName: "Account1",
///     description: "share description",
///     resourceGroupName: "SampleResourceGroup",
///     shareKind: azure_native.datashare.ShareKind.CopyBased,
///     shareName: "Share1",
///     terms: "Confidential",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// share = azure_native.datashare.Share("share",
///     account_name="Account1",
///     description="share description",
///     resource_group_name="SampleResourceGroup",
///     share_kind=azure_native.datashare.ShareKind.COPY_BASED,
///     share_name="Share1",
///     terms="Confidential")
///
/// ```
///
/// ```yaml
/// resources:
///   share:
///     type: azure-native:datashare:Share
///     properties:
///       accountName: Account1
///       description: share description
///       resourceGroupName: SampleResourceGroup
///       shareKind: CopyBased
///       shareName: Share1
///       terms: Confidential
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
/// $ pulumi import azure-native:datashare:Share Share1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shares/{shareName}
/// ```
class Share extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Time at which the share was created.
  late final pulumi.Output<String> createdAt;
  /// Share description.
  late final pulumi.Output<String?> description;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// Gets or sets the provisioning state
  late final pulumi.Output<String> provisioningState;
  /// Share kind.
  late final pulumi.Output<String?> shareKind;
  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Share terms.
  late final pulumi.Output<String?> terms;
  /// Type of the azure resource
  late final pulumi.Output<String> type;
  /// Email of the user who created the resource
  late final pulumi.Output<String> userEmail;
  /// Name of the user who created the resource
  late final pulumi.Output<String> userName;

  /// Creates a new [Share].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Share]. {@macro pulumi_datashare_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Share(
    String name, {
    ShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:Share',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    shareKind = registerOutput<String?>('shareKind');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    terms = registerOutput<String?>('terms');
    type = registerOutput<String>('type');
    userEmail = registerOutput<String>('userEmail');
    userName = registerOutput<String>('userName');
  }
}
