// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_log_source_configuration_crawler_configuration.dart';
import 'custom_log_source_configuration_provider_identity.dart';

class CustomLogSourceConfiguration {
  /// The configuration for the Glue Crawler for the third-party custom source.
  final pulumi.Input<CustomLogSourceConfigurationCrawlerConfiguration> crawlerConfiguration;
  /// The identity of the log provider for the third-party custom source.
  final pulumi.Input<CustomLogSourceConfigurationProviderIdentity> providerIdentity;

  /// Creates a new [CustomLogSourceConfiguration].
  /// [crawlerConfiguration] The configuration for the Glue Crawler for the third-party custom source.
  /// [providerIdentity] The identity of the log provider for the third-party custom source.
  const CustomLogSourceConfiguration({
    required this.crawlerConfiguration,
    required this.providerIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crawlerConfiguration': pulumi.Input.mapInputValue<CustomLogSourceConfigurationCrawlerConfiguration, Map<String, dynamic>>(crawlerConfiguration, (value) => value.toMap()),
      'providerIdentity': pulumi.Input.mapInputValue<CustomLogSourceConfigurationProviderIdentity, Map<String, dynamic>>(providerIdentity, (value) => value.toMap()),
    };
  }

  factory CustomLogSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceConfiguration(
      crawlerConfiguration: pulumi.Input.fromValue(CustomLogSourceConfigurationCrawlerConfiguration.fromMap((map['crawlerConfiguration']! as Map).cast<String, dynamic>())),
      providerIdentity: pulumi.Input.fromValue(CustomLogSourceConfigurationProviderIdentity.fromMap((map['providerIdentity']! as Map).cast<String, dynamic>())),
    );
  }
}
