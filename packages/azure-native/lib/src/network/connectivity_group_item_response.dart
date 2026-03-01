// ignore_for_file: unused_element, unnecessary_cast


/// Connectivity group item.
class ConnectivityGroupItemResponse {
  /// Group connectivity type.
  final String groupConnectivity;
  /// Flag if global is supported.
  final String? isGlobal;
  /// Network group Id.
  final String networkGroupId;
  /// Flag if need to use hub gateway.
  final String? useHubGateway;

  /// Creates a new [ConnectivityGroupItemResponse].
  /// [groupConnectivity] Group connectivity type.
  /// [isGlobal] Flag if global is supported.
  /// [networkGroupId] Network group Id.
  /// [useHubGateway] Flag if need to use hub gateway.
  ConnectivityGroupItemResponse({
    required this.groupConnectivity,
    this.isGlobal,
    required this.networkGroupId,
    this.useHubGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupConnectivity': groupConnectivity,
      'isGlobal': ?isGlobal,
      'networkGroupId': networkGroupId,
      'useHubGateway': ?useHubGateway,
    };
  }

  factory ConnectivityGroupItemResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityGroupItemResponse(
      groupConnectivity: map['groupConnectivity'] as String,
      isGlobal: map['isGlobal'] == null ? null : map['isGlobal'] as String,
      networkGroupId: map['networkGroupId'] as String,
      useHubGateway: map['useHubGateway'] == null ? null : map['useHubGateway'] as String,
    );
  }
}

