import 'package:pulumi/pulumi.dart';
import 'environment_args3.dart';
import 'environment_config_response2.dart';
import 'storage_config_response2.dart';

/// Create a new environment.
class Environment6 extends CustomResource {
  /// Configuration parameters for this environment.
  late final Output<EnvironmentConfigResponse2> config;

  /// The time at which this environment was created.
  late final Output<String> createTime;

  /// Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the environment, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}" EnvironmentId must start with a lowercase letter followed by up to 63 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  late final Output<String> name;
  late final Output<String> project;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// The current state of the environment.
  late final Output<String> state;

  /// Optional. Storage configuration for this environment.
  late final Output<StorageConfigResponse2> storageConfig;

  /// The time at which this environment was last modified.
  late final Output<String> updateTime;

  /// The UUID (Universally Unique IDentifier) associated with this environment. This value is generated when the environment is created.
  late final Output<String> uuid;

  Environment6(
    String name, {
    EnvironmentArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:composer/v1beta1:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config = registerOutput<EnvironmentConfigResponse2>('config');
    this.createTime = registerOutput<String>('createTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.state = registerOutput<String>('state');
    this.storageConfig =
        registerOutput<StorageConfigResponse2>('storageConfig');
    this.updateTime = registerOutput<String>('updateTime');
    this.uuid = registerOutput<String>('uuid');
  }
}
