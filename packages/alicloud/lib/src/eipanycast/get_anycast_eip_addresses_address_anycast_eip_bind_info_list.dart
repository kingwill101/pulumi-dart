// ignore_for_file: unused_element, unnecessary_cast


class GetAnycastEipAddressesAddressAnycastEipBindInfoList {
  /// The bound cloud resource instance ID.
  final String bindInstanceId;
  /// The region ID of the bound cloud resource instance.
  final String bindInstanceRegionId;
  /// Bind the cloud resource instance type.
  final String bindInstanceType;
  /// Binding time.
  final String bindTime;

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
      bindInstanceId: map['bindInstanceId'] as String,
      bindInstanceRegionId: map['bindInstanceRegionId'] as String,
      bindInstanceType: map['bindInstanceType'] as String,
      bindTime: map['bindTime'] as String,
    );
  }
}

