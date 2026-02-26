// ignore_for_file: unused_element, unnecessary_cast

import 'error_response2.dart';
import 'vpc_peering_config_response3.dart';

/// Result data returned by getPrivateConnection.
class GetPrivateConnectionResult3 {
  /// The create time of the resource.
  final String createTime;

  /// Display name.
  final String displayName;

  /// In case of error, the details of the error in a user-friendly format.
  final ErrorResponse2 error;

  /// Labels.
  final Map<String, String> labels;

  /// The resource's name.
  final String name;

  /// The state of the Private Connection.
  final String state;

  /// The update time of the resource.
  final String updateTime;

  /// VPC Peering Config
  final VpcPeeringConfigResponse3 vpcPeeringConfig;

  GetPrivateConnectionResult3({
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

  factory GetPrivateConnectionResult3.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionResult3(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      error:
          ErrorResponse2.fromMap((map['error'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      vpcPeeringConfig: VpcPeeringConfigResponse3.fromMap(
          (map['vpcPeeringConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
