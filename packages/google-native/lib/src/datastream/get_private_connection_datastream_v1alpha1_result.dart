// ignore_for_file: unused_element, unnecessary_cast

import 'error_response_datastream_v1alpha1.dart';
import 'vpc_peering_config_response_datastream_v1alpha1.dart';

/// Result data returned by getPrivateConnection.
class GetPrivateConnectionDatastreamV1alpha1Result {
  /// The create time of the resource.
  final String createTime;

  /// Display name.
  final String displayName;

  /// In case of error, the details of the error in a user-friendly format.
  final ErrorResponseDatastreamV1alpha1 error;

  /// Labels.
  final Map<String, String> labels;

  /// The resource's name.
  final String name;

  /// The state of the Private Connection.
  final String state;

  /// The update time of the resource.
  final String updateTime;

  /// VPC Peering Config
  final VpcPeeringConfigResponseDatastreamV1alpha1 vpcPeeringConfig;

  /// Creates a new [GetPrivateConnectionDatastreamV1alpha1Result].
  /// [createTime] The create time of the resource.
  /// [displayName] Display name.
  /// [error] In case of error, the details of the error in a user-friendly format.
  /// [labels] Labels.
  /// [name] The resource's name.
  /// [state] The state of the Private Connection.
  /// [updateTime] The update time of the resource.
  /// [vpcPeeringConfig] VPC Peering Config
  GetPrivateConnectionDatastreamV1alpha1Result({
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
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'error': error.toMap(),
      'labels': labels,
      'name': name,
      'state': state,
      'updateTime': updateTime,
      'vpcPeeringConfig': vpcPeeringConfig.toMap(),
    };
  }

  factory GetPrivateConnectionDatastreamV1alpha1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPrivateConnectionDatastreamV1alpha1Result(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      error: ErrorResponseDatastreamV1alpha1.fromMap(
        (map['error'] as Map).cast<String, dynamic>(),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      vpcPeeringConfig: VpcPeeringConfigResponseDatastreamV1alpha1.fromMap(
        (map['vpcPeeringConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
