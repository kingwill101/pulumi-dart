// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkConfigAuthorizedExternalNetwork {
  /// CIDR range for one authorized network of the instance.
  final String? cidrRange;

  /// Creates a new [InstanceNetworkConfigAuthorizedExternalNetwork].
  /// [cidrRange] CIDR range for one authorized network of the instance.
  InstanceNetworkConfigAuthorizedExternalNetwork({
    this.cidrRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrRangeValue = cidrRange;
    if (cidrRangeValue != null) {
      map['cidrRange'] = cidrRangeValue;
    }
    return map;
  }

  factory InstanceNetworkConfigAuthorizedExternalNetwork.fromMap(
      Map<String, dynamic> map) {
    return InstanceNetworkConfigAuthorizedExternalNetwork(
      cidrRange: map['cidrRange'] == null ? null : map['cidrRange'] as String,
    );
  }
}
