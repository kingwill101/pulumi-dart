// ignore_for_file: unused_element, unnecessary_cast

import 'custom_log_source_configuration_crawler_configuration.dart';
import 'custom_log_source_configuration_provider_identity.dart';

class CustomLogSourceConfiguration {
  /// The configuration for the Glue Crawler for the third-party custom source.
  final CustomLogSourceConfigurationCrawlerConfiguration crawlerConfiguration;

  /// The identity of the log provider for the third-party custom source.
  final CustomLogSourceConfigurationProviderIdentity providerIdentity;

  /// Creates a new [CustomLogSourceConfiguration].
  /// [crawlerConfiguration] The configuration for the Glue Crawler for the third-party custom source.
  /// [providerIdentity] The identity of the log provider for the third-party custom source.
  CustomLogSourceConfiguration({
    required this.crawlerConfiguration,
    required this.providerIdentity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['crawlerConfiguration'] = crawlerConfiguration.toMap();
    map['providerIdentity'] = providerIdentity.toMap();
    return map;
  }

  factory CustomLogSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceConfiguration(
      crawlerConfiguration:
          CustomLogSourceConfigurationCrawlerConfiguration.fromMap(
              (map['crawlerConfiguration'] as Map).cast<String, dynamic>()),
      providerIdentity: CustomLogSourceConfigurationProviderIdentity.fromMap(
          (map['providerIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}
