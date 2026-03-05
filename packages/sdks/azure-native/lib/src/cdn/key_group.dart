import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_group_args.dart';
import 'system_data_response.dart';

/// Contains a list of references of UrlSigningKey type secret objects.
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-07-01-preview.
///
/// Other available API versions: 2023-07-01-preview, 2024-05-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KeyGroups_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyGroup = new AzureNative.Cdn.KeyGroup("keyGroup", new()
///     {
///         KeyGroupName = "kg1",
///         KeyReferences = new[]
///         {
///             new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret1",
///             },
///             new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret2",
///             },
///             new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret3",
///             },
///         },
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewKeyGroup(ctx, "keyGroup", &cdn.KeyGroupArgs{
/// 			KeyGroupName: pulumi.String("kg1"),
/// 			KeyReferences: cdn.ResourceReferenceArray{
/// 				&cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret1"),
/// 				},
/// 				&cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret2"),
/// 				},
/// 				&cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret3"),
/// 				},
/// 			},
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
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
/// import com.pulumi.azurenative.cdn.KeyGroup;
/// import com.pulumi.azurenative.cdn.KeyGroupArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResourceReferenceArgs;
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
///         var keyGroup = new KeyGroup("keyGroup", KeyGroupArgs.builder()
///             .keyGroupName("kg1")
///             .keyReferences(
///                 ResourceReferenceArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret1")
///                     .build(),
///                 ResourceReferenceArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret2")
///                     .build(),
///                 ResourceReferenceArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret3")
///                     .build())
///             .profileName("profile1")
///             .resourceGroupName("RG")
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
/// const keyGroup = new azure_native.cdn.KeyGroup("keyGroup", {
///     keyGroupName: "kg1",
///     keyReferences: [
///         {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret1",
///         },
///         {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret2",
///         },
///         {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret3",
///         },
///     ],
///     profileName: "profile1",
///     resourceGroupName: "RG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// key_group = azure_native.cdn.KeyGroup("keyGroup",
///     key_group_name="kg1",
///     key_references=[
///         {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret1",
///         },
///         {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret2",
///         },
///         {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret3",
///         },
///     ],
///     profile_name="profile1",
///     resource_group_name="RG")
///
/// ```
///
/// ```yaml
/// resources:
///   keyGroup:
///     type: azure-native:cdn:KeyGroup
///     properties:
///       keyGroupName: kg1
///       keyReferences:
///         - id: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret1
///         - id: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret2
///         - id: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/RG/providers/Microsoft.Cdn/profiles/profile1/secrets/secret3
///       profileName: profile1
///       resourceGroupName: RG
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
/// $ pulumi import azure-native:cdn:KeyGroup kg1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/keyGroups/{keyGroupName}
/// ```
class KeyGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String> deploymentStatus;

  /// Names of UrlSigningKey type secret objects
  late final pulumi.Output<List<Map<String, dynamic>>?> keyReferences;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Provisioning status
  late final pulumi.Output<String> provisioningState;

  /// Read only system data
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [KeyGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyGroup]. {@macro pulumi_cdn_key_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyGroup(
    String name, {
    KeyGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cdn:KeyGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deploymentStatus = registerOutput<String>('deploymentStatus');
    keyReferences = registerOutput<List<Map<String, dynamic>>?>(
      'keyReferences',
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
