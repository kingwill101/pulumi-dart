// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';
import 'vpc_peering_config_response.dart';

/// Result data returned by getPrivateConnection.
class GetPrivateConnectionResult {
  /// The create time of the resource.
  final String createTime;

  /// The private connection display name.
  final String displayName;

  /// The error details in case of state FAILED.
  final StatusResponse error;

  /// The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Map<String, String> labels;

  /// The name of the resource.
  final String name;

  /// The state of the private connection.
  final String state;

  /// The last update time of the resource.
  final String updateTime;

  /// VPC peering configuration.
  final VpcPeeringConfigResponse vpcPeeringConfig;

  /// Creates a new [GetPrivateConnectionResult].
  /// [createTime] The create time of the resource.
  /// [displayName] The private connection display name.
  /// [error] The error details in case of state FAILED.
  /// [labels] The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [name] The name of the resource.
  /// [state] The state of the private connection.
  /// [updateTime] The last update time of the resource.
  /// [vpcPeeringConfig] VPC peering configuration.
  GetPrivateConnectionResult({
    required this.createTime,
    required this.displayName,
    required this.error,
    required this.labels,
    required this.name,
    required this.state,
    required this.updateTime,
    required this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['error'] = error.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['vpcPeeringConfig'] = vpcPeeringConfig.toMap();
    return map;
  }

  factory GetPrivateConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      error:
          StatusResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      vpcPeeringConfig: VpcPeeringConfigResponse.fromMap(
          (map['vpcPeeringConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
