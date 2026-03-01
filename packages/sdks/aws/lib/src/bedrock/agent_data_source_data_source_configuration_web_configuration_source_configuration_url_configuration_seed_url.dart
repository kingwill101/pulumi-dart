// ignore_for_file: unused_element, unnecessary_cast


class AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrl {
  /// Seed or starting point URL. Must match the pattern `^https?://[A-Za-z0-9][^\s]*$`.
  final String? url;

  /// Creates a new [AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrl].
  /// [url] Seed or starting point URL. Must match the pattern `^https?://[A-Za-z0-9][^\s]*$`.
  AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrl({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrl.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrl(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

