// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification {
  final pulumi.Input<int> tcpEstablishedTimeout;
  final pulumi.Input<int> udpStreamTimeout;
  final pulumi.Input<int> udpTimeout;

  /// Creates a new [GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification].
  /// [tcpEstablishedTimeout] Required.
  /// [udpStreamTimeout] Required.
  /// [udpTimeout] Required.
  GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification({
    required this.tcpEstablishedTimeout,
    required this.udpStreamTimeout,
    required this.udpTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tcpEstablishedTimeout': tcpEstablishedTimeout,
      'udpStreamTimeout': udpStreamTimeout,
      'udpTimeout': udpTimeout,
    };
  }

  factory GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateNetworkInterfaceConnectionTrackingSpecification(
      tcpEstablishedTimeout: (map['tcpEstablishedTimeout'] as int).input(),
      udpStreamTimeout: (map['udpStreamTimeout'] as int).input(),
      udpTimeout: (map['udpTimeout'] as int).input(),
    );
  }
}

