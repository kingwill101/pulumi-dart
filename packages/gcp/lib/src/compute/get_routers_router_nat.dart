// ignore_for_file: unused_element, unnecessary_cast

class GetRoutersRouterNat {
  final bool enableEndpointIndependentMapping;
  final int icmpIdleTimeoutSec;
  final int minPortsPerVm;
  final String name;
  final String natIpAllocateOption;
  final List<String> natIps;
  final String sourceSubnetworkIpRangesToNat;
  final int tcpEstablishedIdleTimeoutSec;
  final int tcpTransitoryIdleTimeoutSec;
  final int udpIdleTimeoutSec;

  /// Creates a new [GetRoutersRouterNat].
  /// [enableEndpointIndependentMapping] Required.
  /// [icmpIdleTimeoutSec] Required.
  /// [minPortsPerVm] Required.
  /// [name] Required.
  /// [natIpAllocateOption] Required.
  /// [natIps] Required.
  /// [sourceSubnetworkIpRangesToNat] Required.
  /// [tcpEstablishedIdleTimeoutSec] Required.
  /// [tcpTransitoryIdleTimeoutSec] Required.
  /// [udpIdleTimeoutSec] Required.
  GetRoutersRouterNat({
    required this.enableEndpointIndependentMapping,
    required this.icmpIdleTimeoutSec,
    required this.minPortsPerVm,
    required this.name,
    required this.natIpAllocateOption,
    required this.natIps,
    required this.sourceSubnetworkIpRangesToNat,
    required this.tcpEstablishedIdleTimeoutSec,
    required this.tcpTransitoryIdleTimeoutSec,
    required this.udpIdleTimeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableEndpointIndependentMapping': enableEndpointIndependentMapping,
      'icmpIdleTimeoutSec': icmpIdleTimeoutSec,
      'minPortsPerVm': minPortsPerVm,
      'name': name,
      'natIpAllocateOption': natIpAllocateOption,
      'natIps': natIps,
      'sourceSubnetworkIpRangesToNat': sourceSubnetworkIpRangesToNat,
      'tcpEstablishedIdleTimeoutSec': tcpEstablishedIdleTimeoutSec,
      'tcpTransitoryIdleTimeoutSec': tcpTransitoryIdleTimeoutSec,
      'udpIdleTimeoutSec': udpIdleTimeoutSec,
    };
  }

  factory GetRoutersRouterNat.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterNat(
      enableEndpointIndependentMapping:
          map['enableEndpointIndependentMapping'] as bool,
      icmpIdleTimeoutSec: map['icmpIdleTimeoutSec'] as int,
      minPortsPerVm: map['minPortsPerVm'] as int,
      name: map['name'] as String,
      natIpAllocateOption: map['natIpAllocateOption'] as String,
      natIps: (map['natIps'] as List).cast<String>(),
      sourceSubnetworkIpRangesToNat:
          map['sourceSubnetworkIpRangesToNat'] as String,
      tcpEstablishedIdleTimeoutSec: map['tcpEstablishedIdleTimeoutSec'] as int,
      tcpTransitoryIdleTimeoutSec: map['tcpTransitoryIdleTimeoutSec'] as int,
      udpIdleTimeoutSec: map['udpIdleTimeoutSec'] as int,
    );
  }
}
