// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAnycastEipAddressesAddressAnycastEipBindInfoList {
  /// The bound cloud resource instance ID.
  final pulumi.Input<String> bindInstanceId;
  /// The region ID of the bound cloud resource instance.
  final pulumi.Input<String> bindInstanceRegionId;
  /// Bind the cloud resource instance type.
  final pulumi.Input<String> bindInstanceType;
  /// Binding time.
  final pulumi.Input<String> bindTime;

  /// Creates a new [GetAnycastEipAddressesAddressAnycastEipBindInfoList].
  /// [bindInstanceId] The bound cloud resource instance ID.
  /// [bindInstanceRegionId] The region ID of the bound cloud resource instance.
  /// [bindInstanceType] Bind the cloud resource instance type.
  /// [bindTime] Binding time.
  GetAnycastEipAddressesAddressAnycastEipBindInfoList({
    required this.bindInstanceId,
    required this.bindInstanceRegionId,
    required this.bindInstanceType,
    required this.bindTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindInstanceId': bindInstanceId,
      'bindInstanceRegionId': bindInstanceRegionId,
      'bindInstanceType': bindInstanceType,
      'bindTime': bindTime,
    };
  }

  factory GetAnycastEipAddressesAddressAnycastEipBindInfoList.fromMap(Map<String, dynamic> map) {
    return GetAnycastEipAddressesAddressAnycastEipBindInfoList(
      bindInstanceId: (map['bindInstanceId'] as String).input(),
      bindInstanceRegionId: (map['bindInstanceRegionId'] as String).input(),
      bindInstanceType: (map['bindInstanceType'] as String).input(),
      bindTime: (map['bindTime'] as String).input(),
    );
  }
}

