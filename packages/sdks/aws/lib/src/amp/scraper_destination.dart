// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_destination_amp.dart';

class ScraperDestination {
  /// Configuration block for an Amazon Managed Prometheus workspace destination. See `amp`.
  final pulumi.Input<ScraperDestinationAmp>? amp;

  /// Creates a new [ScraperDestination].
  /// [amp] Configuration block for an Amazon Managed Prometheus workspace destination. See `amp`.
  ScraperDestination({
    this.amp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amp': ?pulumi.Input.mapOptionalInputValue<ScraperDestinationAmp, Map<String, dynamic>>(amp, (value) => value.toMap()),
    };
  }

  factory ScraperDestination.fromMap(Map<String, dynamic> map) {
    return ScraperDestination(
      amp: (() { final guardedValue = map['amp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperDestinationAmp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

