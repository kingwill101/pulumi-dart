// ignore_for_file: unused_element, unnecessary_cast

class GetAcceleratorIpSet {
  final List<String> ipAddresses;
  final String ipFamily;

  /// Creates a new [GetAcceleratorIpSet].
  /// [ipAddresses] Required.
  /// [ipFamily] Required.
  GetAcceleratorIpSet({required this.ipAddresses, required this.ipFamily});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddresses': ipAddresses, 'ipFamily': ipFamily};
  }

  factory GetAcceleratorIpSet.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorIpSet(
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      ipFamily: map['ipFamily'] as String,
    );
  }
}
