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
    this.config = Output.createUnknown<EnvironmentConfigResponse2>();
    this.createTime = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.satisfiesPzs = Output.createUnknown<bool>();
    this.state = Output.createUnknown<String>();
    this.storageConfig = Output.createUnknown<StorageConfigResponse2>();
    this.updateTime = Output.createUnknown<String>();
    this.uuid = Output.createUnknown<String>();
  }
}
