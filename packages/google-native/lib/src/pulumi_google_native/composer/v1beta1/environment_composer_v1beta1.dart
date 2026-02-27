import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_composer_v1beta1_args.dart';
import 'environment_config_response_composer_v1beta1.dart';
import 'storage_config_response_composer_v1beta1.dart';

/// Create a new environment.
class EnvironmentComposerV1beta1 extends pulumi.CustomResource {
  /// Configuration parameters for this environment.
  late final pulumi.Output<EnvironmentConfigResponseComposerV1beta1> config;

  /// The time at which this environment was created.
  late final pulumi.Output<String> createTime;

  /// Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name of the environment, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" EnvironmentId must start with a lowercase letter followed by up to 63 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;

  /// The current state of the environment.
  late final pulumi.Output<String> state;

  /// Optional. Storage configuration for this environment.
  late final pulumi.Output<StorageConfigResponseComposerV1beta1> storageConfig;

  /// The time at which this environment was last modified.
  late final pulumi.Output<String> updateTime;

  /// The UUID (Universally Unique IDentifier) associated with this environment. This value is generated when the environment is created.
  late final pulumi.Output<String> uuid;

  EnvironmentComposerV1beta1(
    String name, {
    EnvironmentComposerV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:composer/v1beta1:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config =
        registerOutput<EnvironmentConfigResponseComposerV1beta1>('config');
    this.createTime = registerOutput<String>('createTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.state = registerOutput<String>('state');
    this.storageConfig =
        registerOutput<StorageConfigResponseComposerV1beta1>('storageConfig');
    this.updateTime = registerOutput<String>('updateTime');
    this.uuid = registerOutput<String>('uuid');
  }
}
