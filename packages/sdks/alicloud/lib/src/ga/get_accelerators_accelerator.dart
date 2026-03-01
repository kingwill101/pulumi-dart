// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accelerators_accelerator_basic_bandwidth_package.dart';
import 'get_accelerators_accelerator_cross_domain_bandwidth_package.dart';

class GetAcceleratorsAccelerator {
  /// The ID of the GA instance to query.
  final String acceleratorId;
  /// The Name of the GA instance.
  final String acceleratorName;
  /// Details of the basic bandwidth package bound to the global acceleration instance.
  final List<GetAcceleratorsAcceleratorBasicBandwidthPackage> basicBandwidthPackages;
  /// The cloud enterprise network instance ID bound to the global acceleration instance.
  final String cenId;
  /// Details of the cross-domain acceleration package bound to the global acceleration instance.
  final List<GetAcceleratorsAcceleratorCrossDomainBandwidthPackage> crossDomainBandwidthPackages;
  /// DDoS high-defense instance ID that is unbound from the global acceleration instance.
  final String ddosId;
  /// Descriptive information of the global acceleration instance.
  final String description;
  /// CNAME address assigned by Global Acceleration instance.
  final String dnsName;
  /// Time when the global acceleration instance expires.
  final int expiredTime;
  /// The ID of the Accelerator.
  final String id;
  /// The billing method of the GA instance. Valid values: `POSTPAY`, `PREPAY`.
  final String paymentType;
  /// CNAME of the Global Acceleration Linkage DDoS High Defense Instance.
  final String secondDnsName;
  /// The instance type of the GA instance.
  final String spec;
  /// The status of the GA instance. Valid values: `active`, `binding`, `configuring`, `deleting`, `finacialLocked`, `init`, `unbinding`.
  final String status;

  /// Creates a new [GetAcceleratorsAccelerator].
  /// [acceleratorId] The ID of the GA instance to query.
  /// [acceleratorName] The Name of the GA instance.
  /// [basicBandwidthPackages] Details of the basic bandwidth package bound to the global acceleration instance.
  /// [cenId] The cloud enterprise network instance ID bound to the global acceleration instance.
  /// [crossDomainBandwidthPackages] Details of the cross-domain acceleration package bound to the global acceleration instance.
  /// [ddosId] DDoS high-defense instance ID that is unbound from the global acceleration instance.
  /// [description] Descriptive information of the global acceleration instance.
  /// [dnsName] CNAME address assigned by Global Acceleration instance.
  /// [expiredTime] Time when the global acceleration instance expires.
  /// [id] The ID of the Accelerator.
  /// [paymentType] The billing method of the GA instance. Valid values: `POSTPAY`, `PREPAY`.
  /// [secondDnsName] CNAME of the Global Acceleration Linkage DDoS High Defense Instance.
  /// [spec] The instance type of the GA instance.
  /// [status] The status of the GA instance. Valid values: `active`, `binding`, `configuring`, `deleting`, `finacialLocked`, `init`, `unbinding`.
  GetAcceleratorsAccelerator({
    required this.acceleratorId,
    required this.acceleratorName,
    required this.basicBandwidthPackages,
    required this.cenId,
    required this.crossDomainBandwidthPackages,
    required this.ddosId,
    required this.description,
    required this.dnsName,
    required this.expiredTime,
    required this.id,
    required this.paymentType,
    required this.secondDnsName,
    required this.spec,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'acceleratorName': acceleratorName,
      'basicBandwidthPackages': pulumi.Input.encodeList<GetAcceleratorsAcceleratorBasicBandwidthPackage, Map<String, dynamic>>(basicBandwidthPackages, (value) => value.toMap()),
      'cenId': cenId,
      'crossDomainBandwidthPackages': pulumi.Input.encodeList<GetAcceleratorsAcceleratorCrossDomainBandwidthPackage, Map<String, dynamic>>(crossDomainBandwidthPackages, (value) => value.toMap()),
      'ddosId': ddosId,
      'description': description,
      'dnsName': dnsName,
      'expiredTime': expiredTime,
      'id': id,
      'paymentType': paymentType,
      'secondDnsName': secondDnsName,
      'spec': spec,
      'status': status,
    };
  }

  factory GetAcceleratorsAccelerator.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorsAccelerator(
      acceleratorId: map['acceleratorId'] as String,
      acceleratorName: map['acceleratorName'] as String,
      basicBandwidthPackages: pulumi.Input.decodeList<GetAcceleratorsAcceleratorBasicBandwidthPackage>(map['basicBandwidthPackages'], (value) => GetAcceleratorsAcceleratorBasicBandwidthPackage.fromMap((value as Map).cast<String, dynamic>())),
      cenId: map['cenId'] as String,
      crossDomainBandwidthPackages: pulumi.Input.decodeList<GetAcceleratorsAcceleratorCrossDomainBandwidthPackage>(map['crossDomainBandwidthPackages'], (value) => GetAcceleratorsAcceleratorCrossDomainBandwidthPackage.fromMap((value as Map).cast<String, dynamic>())),
      ddosId: map['ddosId'] as String,
      description: map['description'] as String,
      dnsName: map['dnsName'] as String,
      expiredTime: map['expiredTime'] as int,
      id: map['id'] as String,
      paymentType: map['paymentType'] as String,
      secondDnsName: map['secondDnsName'] as String,
      spec: map['spec'] as String,
      status: map['status'] as String,
    );
  }
}

