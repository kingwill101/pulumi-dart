// ignore_for_file: unused_element, unnecessary_cast

class ServiceNetworkConfigurationIngressConfiguration {
  /// Specifies whether your App Runner service is publicly accessible. To make the service publicly accessible set it to True. To make the service privately accessible, from only within an Amazon VPC set it to False.
  final bool? isPubliclyAccessible;

  /// Creates a new [ServiceNetworkConfigurationIngressConfiguration].
  /// [isPubliclyAccessible] Specifies whether your App Runner service is publicly accessible. To make the service publicly accessible set it to True. To make the service privately accessible, from only within an Amazon VPC set it to False.
  ServiceNetworkConfigurationIngressConfiguration({this.isPubliclyAccessible});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isPubliclyAccessible': ?isPubliclyAccessible};
  }

  factory ServiceNetworkConfigurationIngressConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceNetworkConfigurationIngressConfiguration(
      isPubliclyAccessible: map['isPubliclyAccessible'] == null
          ? null
          : map['isPubliclyAccessible'] as bool,
    );
  }
}
