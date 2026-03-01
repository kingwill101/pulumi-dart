// ignore_for_file: unused_element, unnecessary_cast

class NetworkManagedServiceServiceNetworkEndpoint {
  final String vpcEndpointId;
  final String vpcEndpointType;

  /// Creates a new [NetworkManagedServiceServiceNetworkEndpoint].
  /// [vpcEndpointId] Required.
  /// [vpcEndpointType] Required.
  NetworkManagedServiceServiceNetworkEndpoint({
    required this.vpcEndpointId,
    required this.vpcEndpointType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcEndpointId': vpcEndpointId,
      'vpcEndpointType': vpcEndpointType,
    };
  }

  factory NetworkManagedServiceServiceNetworkEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkManagedServiceServiceNetworkEndpoint(
      vpcEndpointId: map['vpcEndpointId'] as String,
      vpcEndpointType: map['vpcEndpointType'] as String,
    );
  }
}
