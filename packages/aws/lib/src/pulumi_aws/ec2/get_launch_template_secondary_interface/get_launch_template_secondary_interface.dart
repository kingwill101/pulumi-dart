// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateSecondaryInterface {
  final bool deleteOnTermination;
  final int deviceIndex;
  final String interfaceType;
  final int networkCardIndex;
  final int privateIpAddressCount;
  final List<String> privateIpAddresses;
  final String secondarySubnetId;

  GetLaunchTemplateSecondaryInterface({
    required this.deleteOnTermination,
    required this.deviceIndex,
    required this.interfaceType,
    required this.networkCardIndex,
    required this.privateIpAddressCount,
    required this.privateIpAddresses,
    required this.secondarySubnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleteOnTermination'] = deleteOnTermination;
    map['deviceIndex'] = deviceIndex;
    map['interfaceType'] = interfaceType;
    map['networkCardIndex'] = networkCardIndex;
    map['privateIpAddressCount'] = privateIpAddressCount;
    map['privateIpAddresses'] = privateIpAddresses;
    map['secondarySubnetId'] = secondarySubnetId;
    return map;
  }

  factory GetLaunchTemplateSecondaryInterface.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateSecondaryInterface(
      deleteOnTermination: map['deleteOnTermination'] as bool,
      deviceIndex: map['deviceIndex'] as int,
      interfaceType: map['interfaceType'] as String,
      networkCardIndex: map['networkCardIndex'] as int,
      privateIpAddressCount: map['privateIpAddressCount'] as int,
      privateIpAddresses: (map['privateIpAddresses'] as List).cast<String>(),
      secondarySubnetId: map['secondarySubnetId'] as String,
    );
  }
}
