// ignore_for_file: unused_element, unnecessary_cast


class GetHavipsHavip {
  /// EIP bound to HaVip.
  final List<String> associatedEipAddresses;
  /// An ECS instance that is bound to HaVip.
  final List<String> associatedInstances;
  /// Dependence of a HaVip instance.
  final String description;
  /// The  ID of the resource.
  final String havipId;
  /// The name of the HaVip instance.
  final String havipName;
  /// The ID of the Ha Vip.
  final String id;
  /// IP address of private network.
  final String ipAddress;
  /// The primary instance ID bound to HaVip.
  final String masterInstanceId;
  /// The status.
  final String status;
  /// The VPC ID to which the HaVip instance belongs.
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;

  /// Creates a new [GetHavipsHavip].
  /// [associatedEipAddresses] EIP bound to HaVip.
  /// [associatedInstances] An ECS instance that is bound to HaVip.
  /// [description] Dependence of a HaVip instance.
  /// [havipId] The  ID of the resource.
  /// [havipName] The name of the HaVip instance.
  /// [id] The ID of the Ha Vip.
  /// [ipAddress] IP address of private network.
  /// [masterInstanceId] The primary instance ID bound to HaVip.
  /// [status] The status.
  /// [vpcId] The VPC ID to which the HaVip instance belongs.
  /// [vswitchId] The vswitch id.
  GetHavipsHavip({
    required this.associatedEipAddresses,
    required this.associatedInstances,
    required this.description,
    required this.havipId,
    required this.havipName,
    required this.id,
    required this.ipAddress,
    required this.masterInstanceId,
    required this.status,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedEipAddresses': associatedEipAddresses,
      'associatedInstances': associatedInstances,
      'description': description,
      'havipId': havipId,
      'havipName': havipName,
      'id': id,
      'ipAddress': ipAddress,
      'masterInstanceId': masterInstanceId,
      'status': status,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetHavipsHavip.fromMap(Map<String, dynamic> map) {
    return GetHavipsHavip(
      associatedEipAddresses: (map['associatedEipAddresses'] as List).cast<String>(),
      associatedInstances: (map['associatedInstances'] as List).cast<String>(),
      description: map['description'] as String,
      havipId: map['havipId'] as String,
      havipName: map['havipName'] as String,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      masterInstanceId: map['masterInstanceId'] as String,
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

