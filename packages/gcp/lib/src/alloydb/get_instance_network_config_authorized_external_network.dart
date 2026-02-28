// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNetworkConfigAuthorizedExternalNetwork {
  /// CIDR range for one authorized network of the instance.
  final String cidrRange;

  /// Creates a new [GetInstanceNetworkConfigAuthorizedExternalNetwork].
  /// [cidrRange] CIDR range for one authorized network of the instance.
  GetInstanceNetworkConfigAuthorizedExternalNetwork({
    required this.cidrRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrRange'] = cidrRange;
    return map;
  }

  factory GetInstanceNetworkConfigAuthorizedExternalNetwork.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceNetworkConfigAuthorizedExternalNetwork(
      cidrRange: map['cidrRange'] as String,
    );
  }
}
