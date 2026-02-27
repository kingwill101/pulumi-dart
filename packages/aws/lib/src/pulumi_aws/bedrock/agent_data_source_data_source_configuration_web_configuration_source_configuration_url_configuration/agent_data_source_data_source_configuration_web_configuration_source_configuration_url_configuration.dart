// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_data_source_data_source_configuration_web_configuration_source_configuration_url_configuration_seed_url/agent_data_source_data_source_configuration_web_configuration_source_configuration_url_configuration_seed_url.dart';

class AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration {
  /// List of one or more seed URLs to crawl. See `seed_urls` block for details.
  final List<
          AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrl>?
      seedUrls;

  AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration({
    this.seedUrls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final seedUrlsValue = seedUrls;
    if (seedUrlsValue != null) {
      map['seedUrls'] = Input.encodeList<
          AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrl,
          Map<String, dynamic>>(seedUrlsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfiguration(
      seedUrls: map['seedUrls'] == null
          ? null
          : Input.decodeList<
                  AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrl>(
              map['seedUrls'],
              (value) =>
                  AgentDataSourceDataSourceConfigurationWebConfigurationSourceConfigurationUrlConfigurationSeedUrl
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
