// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkManagedServiceServiceNetworkEndpoint {
  final String vpcEndpointId;
  final String vpcEndpointType;

  /// Creates a new [GetNetworkManagedServiceServiceNetworkEndpoint].
  /// [vpcEndpointId] Required.
  /// [vpcEndpointType] Required.
  GetNetworkManagedServiceServiceNetworkEndpoint({
    required this.vpcEndpointId,
    required this.vpcEndpointType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vpcEndpointId': vpcEndpointId,
      'vpcEndpointType': vpcEndpointType,
    };
  }

  factory GetNetworkManagedServiceServiceNetworkEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkManagedServiceServiceNetworkEndpoint(
      vpcEndpointId: map['vpcEndpointId'] as String,
      vpcEndpointType: map['vpcEndpointType'] as String,
    );
  }
}
