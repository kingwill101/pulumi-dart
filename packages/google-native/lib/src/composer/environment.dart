import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_config_response.dart';
import 'storage_config_response.dart';

/// Create a new environment.
class Environment extends pulumi.CustomResource {
  /// Configuration parameters for this environment.
  late final pulumi.Output<EnvironmentConfigResponse> config;

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
  late final pulumi.Output<StorageConfigResponse> storageConfig;

  /// The time at which this environment was last modified.
  late final pulumi.Output<String> updateTime;

  /// The UUID (Universally Unique IDentifier) associated with this environment. This value is generated when the environment is created.
  late final pulumi.Output<String> uuid;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_composer_v1_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:composer/v1:Environment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.config = registerOutput<EnvironmentConfigResponse>('config');
    this.createTime = registerOutput<String>('createTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.state = registerOutput<String>('state');
    this.storageConfig = registerOutput<StorageConfigResponse>('storageConfig');
    this.updateTime = registerOutput<String>('updateTime');
    this.uuid = registerOutput<String>('uuid');
  }
}
