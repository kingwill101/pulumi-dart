// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for servers Arc auto provisioning for a given environment
class ArcAutoProvisioningResponseConfiguration {
  /// Optional Arc private link scope resource id to link the Arc agent
  final String? privateLinkScope;
  /// Optional HTTP proxy endpoint to use for the Arc agent
  final String? proxy;

  /// Creates a new [ArcAutoProvisioningResponseConfiguration].
  /// [privateLinkScope] Optional Arc private link scope resource id to link the Arc agent
  /// [proxy] Optional HTTP proxy endpoint to use for the Arc agent
  ArcAutoProvisioningResponseConfiguration({
    this.privateLinkScope,
    this.proxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkScope': ?privateLinkScope,
      'proxy': ?proxy,
    };
  }

  factory ArcAutoProvisioningResponseConfiguration.fromMap(Map<String, dynamic> map) {
    return ArcAutoProvisioningResponseConfiguration(
      privateLinkScope: map['privateLinkScope'] == null ? null : map['privateLinkScope'] as String,
      proxy: map['proxy'] == null ? null : map['proxy'] as String,
    );
  }
}

