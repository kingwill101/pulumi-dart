import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_args.dart';
import 'system_data_response.dart';

/// A Credential Resource
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrReplace_Credentials
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var credential = new AzureNative.DeviceRegistry.Credential("credential", new()
///     {
///         Location = "East US 2",
///         NamespaceName = "mynamespace",
///         ResourceGroupName = "rgdeviceregistry",
///         Tags =
///         {
///             { "key7121", "mtdjqipusqaqhdvekrknyjeo" },
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewCredential(ctx, "credential", &deviceregistry.CredentialArgs{
/// 			Location:          pulumi.String("East US 2"),
/// 			NamespaceName:     pulumi.String("mynamespace"),
/// 			ResourceGroupName: pulumi.String("rgdeviceregistry"),
/// 			Tags: pulumi.StringMap{
/// 				"key7121": pulumi.String("mtdjqipusqaqhdvekrknyjeo"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_deviceregistry_credential" "credential" {
///   location            = "East US 2"
///   namespace_name      = "mynamespace"
///   resource_group_name = "rgdeviceregistry"
///   tags = {
///     "key7121" = "mtdjqipusqaqhdvekrknyjeo"
///   }
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
/// import com.pulumi.azurenative.deviceregistry.Credential;
/// import com.pulumi.azurenative.deviceregistry.CredentialArgs;
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
///         var credential = new Credential("credential", CredentialArgs.builder()
///             .location("East US 2")
///             .namespaceName("mynamespace")
///             .resourceGroupName("rgdeviceregistry")
///             .tags(Map.of("key7121", "mtdjqipusqaqhdvekrknyjeo"))
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
/// const credential = new azure_native.deviceregistry.Credential("credential", {
///     location: "East US 2",
///     namespaceName: "mynamespace",
///     resourceGroupName: "rgdeviceregistry",
///     tags: {
///         key7121: "mtdjqipusqaqhdvekrknyjeo",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// credential = azure_native.deviceregistry.Credential("credential",
///     location="East US 2",
///     namespace_name="mynamespace",
///     resource_group_name="rgdeviceregistry",
///     tags={
///         "key7121": "mtdjqipusqaqhdvekrknyjeo",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   credential:
///     type: azure-native:deviceregistry:Credential
///     properties:
///       location: East US 2
///       namespaceName: mynamespace
///       resourceGroupName: rgdeviceregistry
///       tags:
///         key7121: mtdjqipusqaqhdvekrknyjeo
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
/// $ pulumi import azure-native:deviceregistry:Credential default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/namespaces/{namespaceName}/credentials/default
/// ```
class Credential extends pulumi.CustomResource {
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

  /// Creates a new [Credential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Credential]. {@macro pulumi_deviceregistry_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Credential(
    String name, {
    CredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:Credential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
