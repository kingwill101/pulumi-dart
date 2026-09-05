// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_logging_configuration_logging_destination.dart';
import 'scraper_logging_configuration_timeouts.dart';

/// Input properties used for looking up and filtering ScraperLoggingConfiguration resources.
class ScraperLoggingConfigurationState {
  /// Configuration block for the logging destination. See `loggingDestination` Block below.
  final pulumi.Input<ScraperLoggingConfigurationLoggingDestination?>? loggingDestination;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Scraper components to log. Valid values: `COLLECTOR`, `EXPORTER`, `SERVICE_DISCOVERY`.
  final pulumi.Input<List<String>?>? scraperComponents;
  /// ID of the scraper to configure logging for.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? scraperId;
  final pulumi.Input<ScraperLoggingConfigurationTimeouts?>? timeouts;

  /// Creates a new [ScraperLoggingConfigurationState].
  /// [loggingDestination] Configuration block for the logging destination. See `loggingDestination` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scraperComponents] Scraper components to log. Valid values: `COLLECTOR`, `EXPORTER`, `SERVICE_DISCOVERY`.
  /// [scraperId] ID of the scraper to configure logging for.
  /// [timeouts] Optional.
  const ScraperLoggingConfigurationState({
    this.loggingDestination,
    this.region,
    this.scraperComponents,
    this.scraperId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingDestination': ?pulumi.Input.mapOptionalInputValue<ScraperLoggingConfigurationLoggingDestination, Map<String, dynamic>>(loggingDestination, (value) => value.toMap()),
      'region': ?region,
      'scraperComponents': ?scraperComponents,
      'scraperId': ?scraperId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ScraperLoggingConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ScraperLoggingConfigurationState.fromMap(Map<String, dynamic> map) {
    return ScraperLoggingConfigurationState(
      loggingDestination: (() { final guardedValue = map['loggingDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperLoggingConfigurationLoggingDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scraperComponents: (() { final guardedValue = map['scraperComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scraperId: (() { final guardedValue = map['scraperId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperLoggingConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
