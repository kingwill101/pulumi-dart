import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_certificate_args.dart';
import 'key_vault_key_reference_response.dart';

/// The integration account certificate.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccountCertificate = new AzureNative.Logic.IntegrationAccountCertificate("integrationAccountCertificate", new()
///     {
///         CertificateName = "testCertificate",
///         IntegrationAccountName = "testIntegrationAccount",
///         Key = new AzureNative.Logic.Inputs.KeyVaultKeyReferenceArgs
///         {
///             KeyName = "<keyName>",
///             KeyVault = new AzureNative.Logic.Inputs.KeyVaultKeyReferenceKeyVaultArgs
///             {
///                 Id = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testResourceGroup/providers/microsoft.keyvault/vaults/<keyVaultName>",
///             },
///             KeyVersion = "87d9764197604449b9b8eb7bd8710868",
///         },
///         Location = "brazilsouth",
///         PublicCertificate = "<publicCertificateValue>",
///         ResourceGroupName = "testResourceGroup",
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationAccountCertificate(ctx, "integrationAccountCertificate", &logic.IntegrationAccountCertificateArgs{
/// 			CertificateName:        pulumi.String("testCertificate"),
/// 			IntegrationAccountName: pulumi.String("testIntegrationAccount"),
/// 			Key: &logic.KeyVaultKeyReferenceArgs{
/// 				KeyName: pulumi.String("<keyName>"),
/// 				KeyVault: &logic.KeyVaultKeyReferenceKeyVaultArgs{
/// 					Id: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testResourceGroup/providers/microsoft.keyvault/vaults/<keyVaultName>"),
/// 				},
/// 				KeyVersion: pulumi.String("87d9764197604449b9b8eb7bd8710868"),
/// 			},
/// 			Location:          pulumi.String("brazilsouth"),
/// 			PublicCertificate: pulumi.String("<publicCertificateValue>"),
/// 			ResourceGroupName: pulumi.String("testResourceGroup"),
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
/// import com.pulumi.azurenative.logic.IntegrationAccountCertificate;
/// import com.pulumi.azurenative.logic.IntegrationAccountCertificateArgs;
/// import com.pulumi.azurenative.logic.inputs.KeyVaultKeyReferenceArgs;
/// import com.pulumi.azurenative.logic.inputs.KeyVaultKeyReferenceKeyVaultArgs;
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
///         var integrationAccountCertificate = new IntegrationAccountCertificate("integrationAccountCertificate", IntegrationAccountCertificateArgs.builder()
///             .certificateName("testCertificate")
///             .integrationAccountName("testIntegrationAccount")
///             .key(KeyVaultKeyReferenceArgs.builder()
///                 .keyName("<keyName>")
///                 .keyVault(KeyVaultKeyReferenceKeyVaultArgs.builder()
///                     .id("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testResourceGroup/providers/microsoft.keyvault/vaults/<keyVaultName>")
///                     .build())
///                 .keyVersion("87d9764197604449b9b8eb7bd8710868")
///                 .build())
///             .location("brazilsouth")
///             .publicCertificate("<publicCertificateValue>")
///             .resourceGroupName("testResourceGroup")
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
/// const integrationAccountCertificate = new azure_native.logic.IntegrationAccountCertificate("integrationAccountCertificate", {
///     certificateName: "testCertificate",
///     integrationAccountName: "testIntegrationAccount",
///     key: {
///         keyName: "<keyName>",
///         keyVault: {
///             id: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testResourceGroup/providers/microsoft.keyvault/vaults/<keyVaultName>",
///         },
///         keyVersion: "87d9764197604449b9b8eb7bd8710868",
///     },
///     location: "brazilsouth",
///     publicCertificate: "<publicCertificateValue>",
///     resourceGroupName: "testResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account_certificate = azure_native.logic.IntegrationAccountCertificate("integrationAccountCertificate",
///     certificate_name="testCertificate",
///     integration_account_name="testIntegrationAccount",
///     key={
///         "key_name": "<keyName>",
///         "key_vault": {
///             "id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testResourceGroup/providers/microsoft.keyvault/vaults/<keyVaultName>",
///         },
///         "key_version": "87d9764197604449b9b8eb7bd8710868",
///     },
///     location="brazilsouth",
///     public_certificate="<publicCertificateValue>",
///     resource_group_name="testResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccountCertificate:
///     type: azure-native:logic:IntegrationAccountCertificate
///     properties:
///       certificateName: testCertificate
///       integrationAccountName: testIntegrationAccount
///       key:
///         keyName: <keyName>
///         keyVault:
///           id: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourcegroups/testResourceGroup/providers/microsoft.keyvault/vaults/<keyVaultName>
///         keyVersion: 87d9764197604449b9b8eb7bd8710868
///       location: brazilsouth
///       publicCertificate: <publicCertificateValue>
///       resourceGroupName: testResourceGroup
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
/// $ pulumi import azure-native:logic:IntegrationAccountCertificate testCertificate /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/certificates/{certificateName}
/// ```
class IntegrationAccountCertificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The changed time.
  late final pulumi.Output<String> changedTime;

  /// The created time.
  late final pulumi.Output<String> createdTime;

  /// The key details in the key vault.
  late final pulumi.Output<KeyVaultKeyReferenceResponse?> key;

  /// The resource location.
  late final pulumi.Output<String?> location;

  /// The metadata.
  late final pulumi.Output<dynamic> metadata;

  /// Gets the resource name.
  late final pulumi.Output<String> name;

  /// The public certificate.
  late final pulumi.Output<String?> publicCertificate;

  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationAccountCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountCertificate]. {@macro pulumi_logic_integration_account_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountCertificate(
    String name, {
    IntegrationAccountCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:logic:IntegrationAccountCertificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changedTime = registerOutput<String>('changedTime');
    createdTime = registerOutput<String>('createdTime');
    key = registerOutput<KeyVaultKeyReferenceResponse?>(
      'key',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KeyVaultKeyReferenceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String?>('location');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    publicCertificate = registerOutput<String?>('publicCertificate');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
