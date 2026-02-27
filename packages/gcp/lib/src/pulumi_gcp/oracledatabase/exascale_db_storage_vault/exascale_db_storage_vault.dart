import 'package:pulumi/pulumi.dart' as pulumi;
import '../exascale_db_storage_vault_properties/exascale_db_storage_vault_properties.dart';
import 'exascale_db_storage_vault_args.dart';

/// An Exascale Storage Vault Resource
///
///
///
/// ## Example Usage
///
/// ### Oracledatabase Exascale Db Storage Vault Basic
///
///
///
/// ### Oracledatabase Exascale Db Storage Vault Full
///
///
///
///
/// ## Import
///
/// ExascaleDbStorageVault can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/exascaleDbStorageVaults/{{exascale_db_storage_vault_id}}`
///
/// * `{{project}}/{{location}}/{{exascale_db_storage_vault_id}}`
///
/// * `{{location}}/{{exascale_db_storage_vault_id}}`
///
/// When using the `pulumi import` command, ExascaleDbStorageVault can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/exascaleDbStorageVault:ExascaleDbStorageVault default projects/{{project}}/locations/{{location}}/exascaleDbStorageVaults/{{exascale_db_storage_vault_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/exascaleDbStorageVault:ExascaleDbStorageVault default {{project}}/{{location}}/{{exascale_db_storage_vault_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/exascaleDbStorageVault:ExascaleDbStorageVault default {{location}}/{{exascale_db_storage_vault_id}}
/// ```
class ExascaleDbStorageVault extends pulumi.CustomResource {
  /// The date and time when the ExascaleDbStorageVault was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;

  /// The display name for the ExascaleDbStorageVault. The name does not have to
  /// be unique within your project. The name must be 1-255 characters long and
  /// can only contain alphanumeric characters.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The ID of the subscription entitlement associated with the
  /// ExascaleDbStorageVault.
  late final pulumi.Output<String> entitlementId;

  /// The ID of the ExascaleDbStorageVault to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  late final pulumi.Output<String> exascaleDbStorageVaultId;

  /// The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  late final pulumi.Output<String> gcpOracleZone;

  /// The labels or tags associated with the ExascaleDbStorageVault.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the ExascaleDbStorageVault.
  /// Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The properties of the ExascaleDbStorageVault.
  /// next ID: 12
  /// Structure is documented below.
  late final pulumi.Output<ExascaleDbStorageVaultProperties> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  ExascaleDbStorageVault(
    String name, {
    ExascaleDbStorageVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/exascaleDbStorageVault:ExascaleDbStorageVault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.entitlementId = registerOutput<String>('entitlementId');
    this.exascaleDbStorageVaultId =
        registerOutput<String>('exascaleDbStorageVaultId');
    this.gcpOracleZone = registerOutput<String>('gcpOracleZone');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.properties =
        registerOutput<ExascaleDbStorageVaultProperties>('properties');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
