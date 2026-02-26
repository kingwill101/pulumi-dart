// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scraper_destination/scraper_destination.dart';
import '../scraper_role_configuration/scraper_role_configuration.dart';
import '../scraper_source/scraper_source.dart';
import '../scraper_timeouts/scraper_timeouts.dart';

/// The set of arguments for Scraper.
class ScraperArgs {
  /// a name to associate with the managed scraper. This is for your use, and does not need to be unique.
  final Input<String>? alias;

  /// Configuration block for the managed scraper to send metrics to. See <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span>.
  final Input<ScraperDestination> destination;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See <span pulumi-lang-nodejs="`roleConfiguration`" pulumi-lang-dotnet="`RoleConfiguration`" pulumi-lang-go="`roleConfiguration`" pulumi-lang-python="`role_configuration`" pulumi-lang-yaml="`roleConfiguration`" pulumi-lang-java="`roleConfiguration`">`role_configuration`</span> below.
  final Input<ScraperRoleConfiguration>? roleConfiguration;

  /// The configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  final Input<String> scrapeConfiguration;

  /// Configuration block to specify where the managed scraper will collect metrics from. See <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>.
  ///
  /// The following arguments are optional:
  final Input<ScraperSource>? source;
  final Input<Map<String, String>>? tags;
  final Input<ScraperTimeouts>? timeouts;

  ScraperArgs({
    this.alias,
    required this.destination,
    this.region,
    this.roleConfiguration,
    required this.scrapeConfiguration,
    this.source,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasValue = alias;
    if (aliasValue != null) {
      map['alias'] = aliasValue;
    }
    map['destination'] =
        Input.mapInputValue<ScraperDestination, Map<String, dynamic>>(
            destination, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleConfigurationValue = roleConfiguration;
    if (roleConfigurationValue != null) {
      map['roleConfiguration'] = Input.mapOptionalInputValue<
              ScraperRoleConfiguration, Map<String, dynamic>>(
          roleConfigurationValue, (value) => value.toMap());
    }
    map['scrapeConfiguration'] = scrapeConfiguration;
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] =
          Input.mapOptionalInputValue<ScraperSource, Map<String, dynamic>>(
              sourceValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<ScraperTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScraperArgs.fromMap(Map<String, dynamic> map) {
    return ScraperArgs(
      alias: Input.asOptionalInput<String>(map['alias']),
      destination: Input.asInput<ScraperDestination>(map['destination']),
      region: Input.asOptionalInput<String>(map['region']),
      roleConfiguration: Input.asOptionalInput<ScraperRoleConfiguration>(
          map['roleConfiguration']),
      scrapeConfiguration: Input.asInput<String>(map['scrapeConfiguration']),
      source: Input.asOptionalInput<ScraperSource>(map['source']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ScraperTimeouts>(map['timeouts']),
    );
  }
}
