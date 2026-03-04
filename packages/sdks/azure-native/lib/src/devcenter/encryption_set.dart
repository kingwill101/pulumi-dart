import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_set_args.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Represents a devcenter encryption set resource.
///
/// Uses Azure REST API version 2024-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:devcenter:EncryptionSet EncryptionWestUs /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devcenters/{devCenterName}/encryptionSets/{encryptionSetName}
/// ```
class EncryptionSet extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Devbox disk encryption enable or disable status. Indicates if Devbox disks encryption using DevCenter CMK is enabled or not.
  late final pulumi.Output<String?> devboxDisksEncryptionEnableStatus;

  /// Managed identity properties
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// Key encryption key Url, versioned or non-versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  late final pulumi.Output<String?> keyEncryptionKeyUrl;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EncryptionSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EncryptionSet]. {@macro pulumi_devcenter_encryption_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EncryptionSet(
    String name, {
    EncryptionSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devcenter:EncryptionSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    devboxDisksEncryptionEnableStatus = registerOutput<String?>(
      'devboxDisksEncryptionEnableStatus',
    );
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    keyEncryptionKeyUrl = registerOutput<String?>('keyEncryptionKeyUrl');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
