import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_profile_args.dart';
import 'system_data_response.dart';

/// Certificate profile resource.
///
/// Uses Azure REST API version 2024-09-30-preview. In version 2.x of the Azure Native provider, it used API version 2024-02-05-preview.
///
/// Other available API versions: 2024-02-05-preview, 2025-10-13. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native codesigning [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a certificate profile.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificateProfile = new AzureNative.CodeSigning.CertificateProfile("certificateProfile", new()
///     {
///         AccountName = "MyAccount",
///         IdentityValidationId = "00000000-1234-5678-3333-444444444444",
///         IncludePostalCode = true,
///         IncludeStreetAddress = false,
///         ProfileName = "profileA",
///         ProfileType = AzureNative.CodeSigning.ProfileType.PublicTrust,
///         ResourceGroupName = "MyResourceGroup",
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
/// 	codesigning "github.com/pulumi/pulumi-azure-native-sdk/codesigning/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codesigning.NewCertificateProfile(ctx, "certificateProfile", &codesigning.CertificateProfileArgs{
/// 			AccountName:          pulumi.String("MyAccount"),
/// 			IdentityValidationId: pulumi.String("00000000-1234-5678-3333-444444444444"),
/// 			IncludePostalCode:    pulumi.Bool(true),
/// 			IncludeStreetAddress: pulumi.Bool(false),
/// 			ProfileName:          pulumi.String("profileA"),
/// 			ProfileType:          pulumi.String(codesigning.ProfileTypePublicTrust),
/// 			ResourceGroupName:    pulumi.String("MyResourceGroup"),
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
/// import com.pulumi.azurenative.codesigning.CertificateProfile;
/// import com.pulumi.azurenative.codesigning.CertificateProfileArgs;
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
///         var certificateProfile = new CertificateProfile("certificateProfile", CertificateProfileArgs.builder()
///             .accountName("MyAccount")
///             .identityValidationId("00000000-1234-5678-3333-444444444444")
///             .includePostalCode(true)
///             .includeStreetAddress(false)
///             .profileName("profileA")
///             .profileType("PublicTrust")
///             .resourceGroupName("MyResourceGroup")
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
/// const certificateProfile = new azure_native.codesigning.CertificateProfile("certificateProfile", {
///     accountName: "MyAccount",
///     identityValidationId: "00000000-1234-5678-3333-444444444444",
///     includePostalCode: true,
///     includeStreetAddress: false,
///     profileName: "profileA",
///     profileType: azure_native.codesigning.ProfileType.PublicTrust,
///     resourceGroupName: "MyResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate_profile = azure_native.codesigning.CertificateProfile("certificateProfile",
///     account_name="MyAccount",
///     identity_validation_id="00000000-1234-5678-3333-444444444444",
///     include_postal_code=True,
///     include_street_address=False,
///     profile_name="profileA",
///     profile_type=azure_native.codesigning.ProfileType.PUBLIC_TRUST,
///     resource_group_name="MyResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   certificateProfile:
///     type: azure-native:codesigning:CertificateProfile
///     properties:
///       accountName: MyAccount
///       identityValidationId: 00000000-1234-5678-3333-444444444444
///       includePostalCode: true
///       includeStreetAddress: false
///       profileName: profileA
///       profileType: PublicTrust
///       resourceGroupName: MyResourceGroup
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
/// $ pulumi import azure-native:codesigning:CertificateProfile profileA /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CodeSigning/codeSigningAccounts/{accountName}/certificateProfiles/{profileName}
/// ```
class CertificateProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// List of renewed certificates.
  late final pulumi.Output<List<Map<String, dynamic>>> certificates;

  /// Identity validation id used for the certificate subject name.
  late final pulumi.Output<String> identityValidationId;

  /// Whether to include L in the certificate subject name. Applicable only for private trust, private trust ci profile types
  late final pulumi.Output<bool?> includeCity;

  /// Whether to include C in the certificate subject name. Applicable only for private trust, private trust ci profile types
  late final pulumi.Output<bool?> includeCountry;

  /// Whether to include PC in the certificate subject name.
  late final pulumi.Output<bool?> includePostalCode;

  /// Whether to include S in the certificate subject name. Applicable only for private trust, private trust ci profile types
  late final pulumi.Output<bool?> includeState;

  /// Whether to include STREET in the certificate subject name.
  late final pulumi.Output<bool?> includeStreetAddress;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Profile type of the certificate.
  late final pulumi.Output<String> profileType;

  /// Status of the current operation on certificate profile.
  late final pulumi.Output<String> provisioningState;

  /// Status of the certificate profile.
  late final pulumi.Output<String> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CertificateProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateProfile]. {@macro pulumi_codesigning_certificate_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateProfile(
    String name, {
    CertificateProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:codesigning:CertificateProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificates = registerOutput<List<Map<String, dynamic>>>('certificates');
    identityValidationId = registerOutput<String>('identityValidationId');
    includeCity = registerOutput<bool?>('includeCity');
    includeCountry = registerOutput<bool?>('includeCountry');
    includePostalCode = registerOutput<bool?>('includePostalCode');
    includeState = registerOutput<bool?>('includeState');
    includeStreetAddress = registerOutput<bool?>('includeStreetAddress');
    this.name = registerOutput<String>('name');
    profileType = registerOutput<String>('profileType');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
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
