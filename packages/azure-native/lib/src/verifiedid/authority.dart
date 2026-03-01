import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_args.dart';
import 'system_data_response.dart';

/// A VerifiedId authority resource
///
/// Uses Azure REST API version 2024-01-26-preview. In version 2.x of the Azure Native provider, it used API version 2024-01-26-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateAuthority
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var authority = new AzureNative.VerifiedId.Authority("authority", new()
///     {
///         AuthorityName = "00000000-0000-0000-0000-000000000111",
///         Location = "westus",
///         ResourceGroupName = "testrg",
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
/// 	verifiedid "github.com/pulumi/pulumi-azure-native-sdk/verifiedid/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedid.NewAuthority(ctx, "authority", &verifiedid.AuthorityArgs{
/// 			AuthorityName:     pulumi.String("00000000-0000-0000-0000-000000000111"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("testrg"),
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
/// import com.pulumi.azurenative.verifiedid.Authority;
/// import com.pulumi.azurenative.verifiedid.AuthorityArgs;
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
///         var authority = new Authority("authority", AuthorityArgs.builder()
///             .authorityName("00000000-0000-0000-0000-000000000111")
///             .location("westus")
///             .resourceGroupName("testrg")
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
/// const authority = new azure_native.verifiedid.Authority("authority", {
///     authorityName: "00000000-0000-0000-0000-000000000111",
///     location: "westus",
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// authority = azure_native.verifiedid.Authority("authority",
///     authority_name="00000000-0000-0000-0000-000000000111",
///     location="westus",
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   authority:
///     type: azure-native:verifiedid:Authority
///     properties:
///       authorityName: 00000000-0000-0000-0000-000000000111
///       location: westus
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:verifiedid:Authority myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VerifiedId/authorities/{authorityName}
/// ```
class Authority extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Authority].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Authority]. {@macro pulumi_verifiedid_authority_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Authority(
    String name, {
    AuthorityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:verifiedid:Authority',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
