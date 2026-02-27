import 'package:pulumi/pulumi.dart';
import '../cmek_config_single_region_key/cmek_config_single_region_key.dart';
import 'cmek_config_args.dart';

/// CmekConfig represents configurations used to enable CMEK data encryption with
/// Cloud KMS keys.
///
///
/// To get more information about CmekConfig, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.cmekConfigs)
///
/// ## Example Usage
///
/// ### Discoveryengine Cmekconfig Default
///
///
///
///
/// ## Import
///
/// CmekConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/cmekConfigs/{{cmek_config_id}}`
///
/// * `{{project}}/{{location}}/{{cmek_config_id}}`
///
/// * `{{location}}/{{cmek_config_id}}`
///
/// When using the `pulumi import` command, CmekConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/cmekConfig:CmekConfig default projects/{{project}}/locations/{{location}}/cmekConfigs/{{cmek_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/cmekConfig:CmekConfig default {{project}}/{{location}}/{{cmek_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/cmekConfig:CmekConfig default {{location}}/{{cmek_config_id}}
/// ```
class CmekConfig extends CustomResource {
  /// The unique id of the cmek config.
  late final Output<String> cmekConfigId;

  /// The default CmekConfig for the Customer.
  late final Output<bool> isDefault;

  /// KMS key resource name which will be used to encrypt resources
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  late final Output<String> kmsKey;

  /// KMS key version resource name which will be used to encrypt resources
  /// `<kms_key>/cryptoKeyVersions/{keyVersion}`.
  late final Output<String> kmsKeyVersion;

  /// The timestamp of the last key rotation.
  late final Output<int> lastRotationTimestampMicros;

  /// The geographic location where the CMEK config should reside. The value can
  /// only be one of "us" and "eu".
  late final Output<String> location;

  /// The unique full resource name of the cmek config. Values are of the format
  /// `projects/{project}/locations/{location}/cmekConfigs/{cmek_config_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final Output<String> name;

  /// Whether the NotebookLM Corpus is ready to be used.
  late final Output<String> notebooklmState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Set the following CmekConfig as the default to be used for child resources
  /// if one is not specified. The default value is true.
  late final Output<bool?> setDefault;

  /// Single-regional CMEKs that are required for some VAIS features.
  /// Structure is documented below.
  late final Output<List<CmekConfigSingleRegionKey>?> singleRegionKeys;

  /// The state of the CmekConfig.
  late final Output<String> state;

  CmekConfig(
    String name, {
    CmekConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/cmekConfig:CmekConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cmekConfigId = registerOutput<String>('cmekConfigId');
    this.isDefault = registerOutput<bool>('isDefault');
    this.kmsKey = registerOutput<String>('kmsKey');
    this.kmsKeyVersion = registerOutput<String>('kmsKeyVersion');
    this.lastRotationTimestampMicros =
        registerOutput<int>('lastRotationTimestampMicros');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notebooklmState = registerOutput<String>('notebooklmState');
    this.project = registerOutput<String>('project');
    this.setDefault = registerOutput<bool?>('setDefault');
    this.singleRegionKeys =
        registerOutput<List<CmekConfigSingleRegionKey>?>('singleRegionKeys');
    this.state = registerOutput<String>('state');
  }
}
