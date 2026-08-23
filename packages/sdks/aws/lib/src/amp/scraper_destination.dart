// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_destination_amp.dart';
import 'scraper_destination_cloudwatch.dart';

class ScraperDestination {
  /// Configuration block for an Amazon Managed Prometheus workspace destination. See `amp` Block for details.
  final pulumi.Input<ScraperDestinationAmp>? amp;
  /// Configuration block for a CloudWatch Metrics destination. See `cloudwatch` Block for details.
  ///
  /// &gt; **NOTE:** Either `amp` or `cloudwatch` must be specified, but not both.
  final pulumi.Input<ScraperDestinationCloudwatch>? cloudwatch;

  /// Creates a new [ScraperDestination].
  /// [amp] Configuration block for an Amazon Managed Prometheus workspace destination. See `amp` Block for details.
  /// [cloudwatch] Configuration block for a CloudWatch Metrics destination. See `cloudwatch` Block for details.
  const ScraperDestination({
    this.amp,
    this.cloudwatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amp': ?pulumi.Input.mapOptionalInputValue<ScraperDestinationAmp, Map<String, dynamic>>(amp, (value) => value.toMap()),
      'cloudwatch': ?pulumi.Input.mapOptionalInputValue<ScraperDestinationCloudwatch, Map<String, dynamic>>(cloudwatch, (value) => value.toMap()),
    };
  }

  factory ScraperDestination.fromMap(Map<String, dynamic> map) {
    return ScraperDestination(
      amp: (() { final guardedValue = map['amp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperDestinationAmp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudwatch: (() { final guardedValue = map['cloudwatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperDestinationCloudwatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
