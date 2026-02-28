// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_destination.dart';
import 'scraper_role_configuration.dart';
import 'scraper_source.dart';
import 'scraper_timeouts.dart';

/// {@template pulumi_amp_scraper_scraper_args_doc}
/// The set of arguments for Scraper.
/// {@endtemplate}
/// {@macro pulumi_amp_scraper_scraper_args_doc}
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

  /// Creates a new [ScraperArgs].
  /// [alias] a name to associate with the managed scraper. This is for your use, and does not need to be unique.
  /// [destination] Configuration block for the managed scraper to send metrics to. See `destination`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleConfiguration] Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See `role_configuration` below.
  /// [scrapeConfiguration] The configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  /// [source] Configuration block to specify where the managed scraper will collect metrics from. See `source`.
  /// [tags] Optional.
  /// [timeouts] Optional.
  ScraperArgs({
    String? alias,
    required ScraperDestination destination,
    String? region,
    ScraperRoleConfiguration? roleConfiguration,
    required String scrapeConfiguration,
    ScraperSource? source,
    Map<String, String>? tags,
    ScraperTimeouts? timeouts,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      destination = pulumi.Input.asInput<ScraperDestination>(destination),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleConfiguration = pulumi.Input.asOptionalInput<ScraperRoleConfiguration>(roleConfiguration),
      scrapeConfiguration = pulumi.Input.asInput<String>(scrapeConfiguration),
      source = pulumi.Input.asOptionalInput<ScraperSource>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ScraperTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'destination': pulumi.Input.mapInputValue<ScraperDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'region': ?region,
      'roleConfiguration': ?pulumi.Input.mapOptionalInputValue<ScraperRoleConfiguration, Map<String, dynamic>>(roleConfiguration, (value) => value.toMap()),
      'scrapeConfiguration': scrapeConfiguration,
      'source': ?pulumi.Input.mapOptionalInputValue<ScraperSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ScraperTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ScraperArgs.fromMap(Map<String, dynamic> map) {
    return ScraperArgs(
      alias: map['alias'] == null ? null : map['alias'] as String,
      destination: ScraperDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      roleConfiguration: map['roleConfiguration'] == null ? null : ScraperRoleConfiguration.fromMap((map['roleConfiguration'] as Map).cast<String, dynamic>()),
      scrapeConfiguration: map['scrapeConfiguration'] as String,
      source: map['source'] == null ? null : ScraperSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : ScraperTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

