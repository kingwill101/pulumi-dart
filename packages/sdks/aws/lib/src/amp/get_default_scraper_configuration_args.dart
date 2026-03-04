// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amp_get_default_scraper_configuration_get_default_scraper_configuration_args_doc}
/// Arguments for getDefaultScraperConfiguration.
/// {@endtemplate}
/// {@macro pulumi_amp_get_default_scraper_configuration_get_default_scraper_configuration_args_doc}
class GetDefaultScraperConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDefaultScraperConfigurationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDefaultScraperConfigurationArgs({this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region};
  }

  factory GetDefaultScraperConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultScraperConfigurationArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
