// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkConfigAuthorizedExternalNetwork {
  /// CIDR range for one authorized network of the instance.
  final String? cidrRange;

  /// Creates a new [InstanceNetworkConfigAuthorizedExternalNetwork].
  /// [cidrRange] CIDR range for one authorized network of the instance.
  InstanceNetworkConfigAuthorizedExternalNetwork({this.cidrRange});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cidrRange': ?cidrRange};
  }

  factory InstanceNetworkConfigAuthorizedExternalNetwork.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceNetworkConfigAuthorizedExternalNetwork(
      cidrRange: map['cidrRange'] == null ? null : map['cidrRange'] as String,
    );
  }
}
