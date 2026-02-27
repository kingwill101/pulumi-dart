// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'replica_info_response.dart';

/// Result data returned by getInstanceConfig.
class GetInstanceConfigResult {
  /// Base configuration name, e.g. projects//instanceConfigs/nam3, based on which this configuration is created. Only set for user managed configurations. `base_config` must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  final String baseConfig;

  /// Whether this instance config is a Google or User Managed Configuration.
  final String configType;

  /// The name of this instance configuration as it appears in UIs.
  final String displayName;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a instance config from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform instance config updates in order to avoid race conditions: An etag is returned in the response which contains instance configs, and systems are expected to put that etag in the request to update instance config to ensure that their change will be applied to the same version of the instance config. If no etag is provided in the call to update instance config, then the existing instance config is overwritten blindly.
  final String etag;

  /// Describes whether free instances are available to be created in this instance config.
  final String freeInstanceAvailability;

  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. Therefore, you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  final Map<String, String> labels;

  /// Allowed values of the "default_leader" schema option for databases in instances that use this instance configuration.
  final List<String> leaderOptions;

  /// A unique identifier for the instance configuration. Values are of the form `projects//instanceConfigs/a-z*`.
  final String name;

  /// The available optional replicas to choose from for user managed configurations. Populated for Google managed configurations.
  final List<ReplicaInfoResponse> optionalReplicas;

  /// If true, the instance config is being created or updated. If false, there are no ongoing operations for the instance config.
  final bool reconciling;

  /// The geographic placement of nodes in this instance configuration and their replication properties.
  final List<ReplicaInfoResponse> replicas;

  /// The current instance config state. Applicable only for USER_MANAGED configs.
  final String state;

  GetInstanceConfigResult({
    required this.baseConfig,
    required this.configType,
    required this.displayName,
    required this.etag,
    required this.freeInstanceAvailability,
    required this.labels,
    required this.leaderOptions,
    required this.name,
    required this.optionalReplicas,
    required this.reconciling,
    required this.replicas,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseConfig'] = baseConfig;
    map['configType'] = configType;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['freeInstanceAvailability'] = freeInstanceAvailability;
    map['labels'] = labels;
    map['leaderOptions'] = leaderOptions;
    map['name'] = name;
    map['optionalReplicas'] =
        Input.encodeList<ReplicaInfoResponse, Map<String, dynamic>>(
            optionalReplicas, (value) => value.toMap());
    map['reconciling'] = reconciling;
    map['replicas'] =
        Input.encodeList<ReplicaInfoResponse, Map<String, dynamic>>(
            replicas, (value) => value.toMap());
    map['state'] = state;
    return map;
  }

  factory GetInstanceConfigResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceConfigResult(
      baseConfig: map['baseConfig'] as String,
      configType: map['configType'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      freeInstanceAvailability: map['freeInstanceAvailability'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      leaderOptions: (map['leaderOptions'] as List).cast<String>(),
      name: map['name'] as String,
      optionalReplicas: Input.decodeList<ReplicaInfoResponse>(
          map['optionalReplicas'],
          (value) => ReplicaInfoResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      reconciling: map['reconciling'] as bool,
      replicas: Input.decodeList<ReplicaInfoResponse>(
          map['replicas'],
          (value) => ReplicaInfoResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
    );
  }
}
