// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'replica_info.dart';

/// The set of arguments for InstanceConfig.
class InstanceConfigArgs {
  /// Base configuration name, e.g. projects//instanceConfigs/nam3, based on which this configuration is created. Only set for user managed configurations. `base_config` must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  final Input<String>? baseConfig;

  /// The name of this instance configuration as it appears in UIs.
  final Input<String>? displayName;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a instance config from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform instance config updates in order to avoid race conditions: An etag is returned in the response which contains instance configs, and systems are expected to put that etag in the request to update instance config to ensure that their change will be applied to the same version of the instance config. If no etag is provided in the call to update instance config, then the existing instance config is overwritten blindly.
  final Input<String>? etag;

  /// The ID of the instance config to create. Valid identifiers are of the form `custom-[-a-z0-9]*[a-z0-9]` and must be between 2 and 64 characters in length. The `custom-` prefix is required to avoid name conflicts with Google managed configurations.
  final Input<String> instanceConfigId;

  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. Therefore, you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  final Input<Map<String, String>>? labels;

  /// Allowed values of the "default_leader" schema option for databases in instances that use this instance configuration.
  final Input<List<String>>? leaderOptions;

  /// A unique identifier for the instance configuration. Values are of the form `projects//instanceConfigs/a-z*`.
  final Input<String>? name;
  final Input<String>? project;

  /// The geographic placement of nodes in this instance configuration and their replication properties.
  final Input<List<ReplicaInfo>>? replicas;

  /// An option to validate, but not actually execute, a request, and provide the same response.
  final Input<bool>? validateOnly;

  InstanceConfigArgs({
    this.baseConfig,
    this.displayName,
    this.etag,
    required this.instanceConfigId,
    this.labels,
    this.leaderOptions,
    this.name,
    this.project,
    this.replicas,
    this.validateOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseConfigValue = baseConfig;
    if (baseConfigValue != null) {
      map['baseConfig'] = baseConfigValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['instanceConfigId'] = instanceConfigId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final leaderOptionsValue = leaderOptions;
    if (leaderOptionsValue != null) {
      map['leaderOptions'] = leaderOptionsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final replicasValue = replicas;
    if (replicasValue != null) {
      map['replicas'] = Input.mapOptionalInputValue<List<ReplicaInfo>,
              List<Map<String, dynamic>>>(
          replicasValue,
          (value) => Input.encodeList<ReplicaInfo, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final validateOnlyValue = validateOnly;
    if (validateOnlyValue != null) {
      map['validateOnly'] = validateOnlyValue;
    }
    return map;
  }

  factory InstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return InstanceConfigArgs(
      baseConfig: Input.asOptionalInput<String>(map['baseConfig']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      instanceConfigId: Input.asInput<String>(map['instanceConfigId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      leaderOptions: Input.asOptionalInput<List<String>>(map['leaderOptions']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      replicas: Input.asOptionalInput<List<ReplicaInfo>>(map['replicas']),
      validateOnly: Input.asOptionalInput<bool>(map['validateOnly']),
    );
  }
}
