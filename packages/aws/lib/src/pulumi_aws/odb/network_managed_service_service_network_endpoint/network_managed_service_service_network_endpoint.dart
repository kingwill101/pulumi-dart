// ignore_for_file: unused_element, unnecessary_cast

class NetworkManagedServiceServiceNetworkEndpoint {
  final String vpcEndpointId;
  final String vpcEndpointType;

  NetworkManagedServiceServiceNetworkEndpoint({
    required this.vpcEndpointId,
    required this.vpcEndpointType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vpcEndpointId'] = vpcEndpointId;
    map['vpcEndpointType'] = vpcEndpointType;
    return map;
  }

  factory NetworkManagedServiceServiceNetworkEndpoint.fromMap(
      Map<String, dynamic> map) {
    return NetworkManagedServiceServiceNetworkEndpoint(
      vpcEndpointId: map['vpcEndpointId'] as String,
      vpcEndpointType: map['vpcEndpointType'] as String,
    );
  }
}
