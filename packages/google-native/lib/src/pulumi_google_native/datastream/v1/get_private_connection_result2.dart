// ignore_for_file: unused_element, unnecessary_cast

import 'error_response.dart';
import 'vpc_peering_config_response2.dart';

/// Result data returned by getPrivateConnection.
class GetPrivateConnectionResult2 {
  /// The create time of the resource.
  final String createTime;

  /// Display name.
  final String displayName;

  /// In case of error, the details of the error in a user-friendly format.
  final ErrorResponse error;

  /// Labels.
  final Map<String, String> labels;

  /// The resource's name.
  final String name;

  /// The state of the Private Connection.
  final String state;

  /// The update time of the resource.
  final String updateTime;

  /// VPC Peering Config.
  final VpcPeeringConfigResponse2 vpcPeeringConfig;

  GetPrivateConnectionResult2({
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

  factory GetPrivateConnectionResult2.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionResult2(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      error:
          ErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      vpcPeeringConfig: VpcPeeringConfigResponse2.fromMap(
          (map['vpcPeeringConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
