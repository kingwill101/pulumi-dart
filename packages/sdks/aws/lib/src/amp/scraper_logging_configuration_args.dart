// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_logging_configuration_logging_destination.dart';
import 'scraper_logging_configuration_timeouts.dart';

/// {@template pulumi_amp_scraper_logging_configuration_scraper_logging_configuration_args_doc}
/// The set of arguments for ScraperLoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_amp_scraper_logging_configuration_scraper_logging_configuration_args_doc}
class ScraperLoggingConfigurationArgs {
  /// Configuration block for the logging destination. See `loggingDestination` Block below.
  final pulumi.Input<ScraperLoggingConfigurationLoggingDestination> loggingDestination;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Scraper components to log. Valid values: `COLLECTOR`, `EXPORTER`, `SERVICE_DISCOVERY`.
  final pulumi.Input<List<String>>? scraperComponents;
  /// ID of the scraper to configure logging for.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> scraperId;
  final pulumi.Input<ScraperLoggingConfigurationTimeouts>? timeouts;

  /// Creates a new [ScraperLoggingConfigurationArgs].
  /// [loggingDestination] Configuration block for the logging destination. See `loggingDestination` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scraperComponents] Scraper components to log. Valid values: `COLLECTOR`, `EXPORTER`, `SERVICE_DISCOVERY`.
  /// [scraperId] ID of the scraper to configure logging for.
  /// [timeouts] Optional.
  const ScraperLoggingConfigurationArgs({
    required this.loggingDestination,
    this.region,
    this.scraperComponents,
    required this.scraperId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingDestination': pulumi.Input.mapInputValue<ScraperLoggingConfigurationLoggingDestination, Map<String, dynamic>>(loggingDestination, (value) => value.toMap()),
      'region': ?region,
      'scraperComponents': ?scraperComponents,
      'scraperId': scraperId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ScraperLoggingConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ScraperLoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ScraperLoggingConfigurationArgs(
      loggingDestination: pulumi.Input.fromValue(ScraperLoggingConfigurationLoggingDestination.fromMap((map['loggingDestination']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scraperComponents: (() { final guardedValue = map['scraperComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scraperId: pulumi.Input.fromValue(map['scraperId'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperLoggingConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
