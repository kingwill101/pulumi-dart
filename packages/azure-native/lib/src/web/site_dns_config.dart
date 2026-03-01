// ignore_for_file: unused_element, unnecessary_cast


class SiteDnsConfig {
  /// Alternate DNS server to be used by apps. This property replicates the WEBSITE_DNS_ALT_SERVER app setting.
  final String? dnsAltServer;
  /// Custom time for DNS to be cached in seconds. Allowed range: 0-60. Default is 30 seconds. 0 means caching disabled.
  final int? dnsMaxCacheTimeout;
  /// Total number of retries for dns lookup. Allowed range: 1-5. Default is 3.
  final int? dnsRetryAttemptCount;
  /// Timeout for a single dns lookup in seconds. Allowed range: 1-30. Default is 3.
  final int? dnsRetryAttemptTimeout;
  /// List of custom DNS servers to be used by an app for lookups. Maximum 5 dns servers can be set.
  final List<String>? dnsServers;

  /// Creates a new [SiteDnsConfig].
  /// [dnsAltServer] Alternate DNS server to be used by apps. This property replicates the WEBSITE_DNS_ALT_SERVER app setting.
  /// [dnsMaxCacheTimeout] Custom time for DNS to be cached in seconds. Allowed range: 0-60. Default is 30 seconds. 0 means caching disabled.
  /// [dnsRetryAttemptCount] Total number of retries for dns lookup. Allowed range: 1-5. Default is 3.
  /// [dnsRetryAttemptTimeout] Timeout for a single dns lookup in seconds. Allowed range: 1-30. Default is 3.
  /// [dnsServers] List of custom DNS servers to be used by an app for lookups. Maximum 5 dns servers can be set.
  SiteDnsConfig({
    this.dnsAltServer,
    this.dnsMaxCacheTimeout,
    this.dnsRetryAttemptCount,
    this.dnsRetryAttemptTimeout,
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsAltServer': ?dnsAltServer,
      'dnsMaxCacheTimeout': ?dnsMaxCacheTimeout,
      'dnsRetryAttemptCount': ?dnsRetryAttemptCount,
      'dnsRetryAttemptTimeout': ?dnsRetryAttemptTimeout,
      'dnsServers': ?dnsServers,
    };
  }

  factory SiteDnsConfig.fromMap(Map<String, dynamic> map) {
    return SiteDnsConfig(
      dnsAltServer: map['dnsAltServer'] == null ? null : map['dnsAltServer'] as String,
      dnsMaxCacheTimeout: map['dnsMaxCacheTimeout'] == null ? null : map['dnsMaxCacheTimeout'] as int,
      dnsRetryAttemptCount: map['dnsRetryAttemptCount'] == null ? null : map['dnsRetryAttemptCount'] as int,
      dnsRetryAttemptTimeout: map['dnsRetryAttemptTimeout'] == null ? null : map['dnsRetryAttemptTimeout'] as int,
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
    );
  }
}

