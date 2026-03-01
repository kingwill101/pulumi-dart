// ignore_for_file: unused_element, unnecessary_cast

class BucketWebsiteConfigurationRedirectAllRequestsTo {
  /// Name of the host where requests are redirected.
  final String hostName;

  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: `http`, `https`.
  final String? protocol;

  /// Creates a new [BucketWebsiteConfigurationRedirectAllRequestsTo].
  /// [hostName] Name of the host where requests are redirected.
  /// [protocol] Protocol to use when redirecting requests. The default is the protocol that is used in the original request. Valid values: `http`, `https`.
  BucketWebsiteConfigurationRedirectAllRequestsTo({
    required this.hostName,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hostName': hostName, 'protocol': ?protocol};
  }

  factory BucketWebsiteConfigurationRedirectAllRequestsTo.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketWebsiteConfigurationRedirectAllRequestsTo(
      hostName: map['hostName'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}
