// ignore_for_file: unused_element, unnecessary_cast


/// The network interface definition.
class NetworkInterfaceResponse {
  /// Private Ip address of the interface
  final String? privateIpAddress;
  /// The Azure resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
  final String resourceId;

  /// Creates a new [NetworkInterfaceResponse].
  /// [privateIpAddress] Private Ip address of the interface
  /// [resourceId] The Azure resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
  NetworkInterfaceResponse({
    this.privateIpAddress,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': ?privateIpAddress,
      'resourceId': resourceId,
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

