// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../scraper_destination/scraper_destination.dart';
import '../scraper_role_configuration/scraper_role_configuration.dart';
import '../scraper_source/scraper_source.dart';
import '../scraper_timeouts/scraper_timeouts.dart';

/// The set of arguments for Scraper.
class ScraperArgs {
  /// a name to associate with the managed scraper. This is for your use, and does not need to be unique.
  final pulumi.Input<String>? alias;

  /// Configuration block for the managed scraper to send metrics to. See `destination`.
  final pulumi.Input<ScraperDestination> destination;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See `role_configuration` below.
  final pulumi.Input<ScraperRoleConfiguration>? roleConfiguration;

  /// The configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  final pulumi.Input<String> scrapeConfiguration;

  /// Configuration block to specify where the managed scraper will collect metrics from. See `source`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ScraperSource>? source;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ScraperTimeouts>? timeouts;

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
        pulumi.Input.mapInputValue<ScraperDestination, Map<String, dynamic>>(
            destination, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleConfigurationValue = roleConfiguration;
    if (roleConfigurationValue != null) {
      map['roleConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ScraperRoleConfiguration, Map<String, dynamic>>(
          roleConfigurationValue, (value) => value.toMap());
    }
    map['scrapeConfiguration'] = scrapeConfiguration;
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = pulumi.Input.mapOptionalInputValue<ScraperSource,
          Map<String, dynamic>>(sourceValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ScraperTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ScraperArgs.fromMap(Map<String, dynamic> map) {
    return ScraperArgs(
      alias: pulumi.Input.asOptionalInput<String>(map['alias']),
      destination: pulumi.Input.asInput<ScraperDestination>(map['destination']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleConfiguration: pulumi.Input.asOptionalInput<ScraperRoleConfiguration>(
          map['roleConfiguration']),
      scrapeConfiguration:
          pulumi.Input.asInput<String>(map['scrapeConfiguration']),
      source: pulumi.Input.asOptionalInput<ScraperSource>(map['source']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<ScraperTimeouts>(map['timeouts']),
    );
  }
}
