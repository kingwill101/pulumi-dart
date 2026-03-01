// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterProxy {
  /// A comma-separated list of IP addresses, IP address ranges,
  /// host names, and domain names that should not go through the proxy server.
  final String? noProxy;

  /// The proxy url.
  final String url;

  /// Creates a new [VmwareAdminClusterProxy].
  /// [noProxy] A comma-separated list of IP addresses, IP address ranges,
  /// [url] The proxy url.
  VmwareAdminClusterProxy({this.noProxy, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'noProxy': ?noProxy, 'url': url};
  }

  factory VmwareAdminClusterProxy.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterProxy(
      noProxy: map['noProxy'] == null ? null : map['noProxy'] as String,
      url: map['url'] as String,
    );
  }
}
