// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_config_response.dart';

/// Result data returned by getNodeGroup.
class GetNodeGroupDataprocV1Result {
  /// Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.
  final Map<String, String> labels;

  /// The Node group resource name (https://aip.dev/122).
  final String name;

  /// Optional. The node group instance group configuration.
  final InstanceGroupConfigResponse nodeGroupConfig;

  /// Node group roles.
  final List<String> roles;

  GetNodeGroupDataprocV1Result({
    required this.labels,
    required this.name,
    required this.nodeGroupConfig,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['name'] = name;
    map['nodeGroupConfig'] = nodeGroupConfig.toMap();
    map['roles'] = roles;
    return map;
  }

  factory GetNodeGroupDataprocV1Result.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupDataprocV1Result(
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      nodeGroupConfig: InstanceGroupConfigResponse.fromMap(
          (map['nodeGroupConfig'] as Map).cast<String, dynamic>()),
      roles: (map['roles'] as List).cast<String>(),
    );
  }
}
