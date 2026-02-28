// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationV2RedirectAllRequestsTo {
  /// Name of the host where requests are redirected.
  final String hostName;

  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: `http`, `https`.
  final String? protocol;

  /// Creates a new [BucketWebsiteConfigurationV2RedirectAllRequestsTo].
  /// [hostName] Name of the host where requests are redirected.
  /// [protocol] Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: `http`, `https`.
  BucketWebsiteConfigurationV2RedirectAllRequestsTo({
    required this.hostName,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostName'] = hostName;
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    return map;
  }

  factory BucketWebsiteConfigurationV2RedirectAllRequestsTo.fromMap(
      Map<String, dynamic> map) {
    return BucketWebsiteConfigurationV2RedirectAllRequestsTo(
      hostName: map['hostName'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
