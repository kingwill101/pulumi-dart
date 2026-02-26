// ignore_for_file: unused_element, unnecessary_cast

import '../scraper_destination_amp/scraper_destination_amp.dart';

class ScraperDestination {
  /// Configuration block for an Amazon Managed Prometheus workspace destination. See <span pulumi-lang-nodejs="`amp`" pulumi-lang-dotnet="`Amp`" pulumi-lang-go="`amp`" pulumi-lang-python="`amp`" pulumi-lang-yaml="`amp`" pulumi-lang-java="`amp`">`amp`</span>.
  final ScraperDestinationAmp? amp;

  ScraperDestination({
    this.amp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ampValue = amp;
    if (ampValue != null) {
      map['amp'] = ampValue.toMap();
    }
    return map;
  }

  factory ScraperDestination.fromMap(Map<String, dynamic> map) {
    return ScraperDestination(
      amp: map['amp'] == null
          ? null
          : ScraperDestinationAmp.fromMap(
              (map['amp'] as Map).cast<String, dynamic>()),
    );
  }
}
