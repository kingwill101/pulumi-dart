import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key_args.dart';
import 'system_data_response.dart';

/// Specifies information about the SSH public key.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01, 2025-11-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new SSH public key resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sshPublicKey = new AzureNative.Compute.SshPublicKey("sshPublicKey", new()
///     {
///         Location = "westus",
///         PublicKey = "{ssh-rsa public key}",
///         ResourceGroupName = "myResourceGroup",
///         SshPublicKeyName = "mySshPublicKeyName",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSshPublicKey(ctx, "sshPublicKey", &compute.SshPublicKeyArgs{
/// 			Location:          pulumi.String("westus"),
/// 			PublicKey:         pulumi.String("{ssh-rsa public key}"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SshPublicKeyName:  pulumi.String("mySshPublicKeyName"),
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
/// resource "azure-native_compute_sshpublickey" "sshPublicKey" {
///   location            = "westus"
///   public_key          = "{ssh-rsa public key}"
///   resource_group_name = "myResourceGroup"
///   ssh_public_key_name = "mySshPublicKeyName"
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
/// import com.pulumi.azurenative.compute.SshPublicKey;
/// import com.pulumi.azurenative.compute.SshPublicKeyArgs;
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
///         var sshPublicKey = new SshPublicKey("sshPublicKey", SshPublicKeyArgs.builder()
///             .location("westus")
///             .publicKey("{ssh-rsa public key}")
///             .resourceGroupName("myResourceGroup")
///             .sshPublicKeyName("mySshPublicKeyName")
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
/// const sshPublicKey = new azure_native.compute.SshPublicKey("sshPublicKey", {
///     location: "westus",
///     publicKey: "{ssh-rsa public key}",
///     resourceGroupName: "myResourceGroup",
///     sshPublicKeyName: "mySshPublicKeyName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ssh_public_key = azure_native.compute.SshPublicKey("sshPublicKey",
///     location="westus",
///     public_key="{ssh-rsa public key}",
///     resource_group_name="myResourceGroup",
///     ssh_public_key_name="mySshPublicKeyName")
///
/// ```
///
/// ```yaml
/// resources:
///   sshPublicKey:
///     type: azure-native:compute:SshPublicKey
///     properties:
///       location: westus
///       publicKey: '{ssh-rsa public key}'
///       resourceGroupName: myResourceGroup
///       sshPublicKeyName: mySshPublicKeyName
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
/// $ pulumi import azure-native:compute:SshPublicKey mySshPublicKeyName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/sshPublicKeys/{sshPublicKeyName}
/// ```
class SshPublicKeyCompute extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// SSH public key used to authenticate to a virtual machine through ssh. If this property is not initially provided when the resource is created, the publicKey property will be populated when generateKeyPair is called. If the public key is provided upon resource creation, the provided public key needs to be at least 2048-bit and in ssh-rsa format.
  late final pulumi.Output<String?> publicKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SshPublicKeyCompute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SshPublicKeyCompute]. {@macro pulumi_compute_ssh_public_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SshPublicKeyCompute(
    String name, {
    SshPublicKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:SshPublicKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicKey = registerOutput<String?>('publicKey');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SshPublicKeyCompute] resource.
  SshPublicKeyCompute.reference(String urn)
    : super(
        'azure-native:compute:SshPublicKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    publicKey = registerOutput<String?>('publicKey');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
