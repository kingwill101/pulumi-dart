// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_destination.dart';
import 'scraper_role_configuration.dart';
import 'scraper_source.dart';
import 'scraper_timeouts.dart';

/// Input properties used for looking up and filtering Scraper resources.
class ScraperState {
  /// a name to associate with the managed scraper. This is for your use, and does not need to be unique.
  final pulumi.Input<String>? alias;
  /// The Amazon Resource Name (ARN) of the new scraper.
  final pulumi.Input<String>? arn;
  /// Configuration block for the managed scraper to send metrics to. See `destination`.
  final pulumi.Input<ScraperDestination>? destination;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the IAM role that provides permissions for the scraper to discover, collect, and produce metrics
  final pulumi.Input<String>? roleArn;
  /// Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See `role_configuration` below.
  final pulumi.Input<ScraperRoleConfiguration>? roleConfiguration;
  /// The configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  final pulumi.Input<String>? scrapeConfiguration;
  /// Configuration block to specify where the managed scraper will collect metrics from. See `source`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ScraperSource>? source;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ScraperTimeouts>? timeouts;

  /// Creates a new [ScraperState].
  /// [alias] a name to associate with the managed scraper. This is for your use, and does not need to be unique.
  /// [arn] The Amazon Resource Name (ARN) of the new scraper.
  /// [destination] Configuration block for the managed scraper to send metrics to. See `destination`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role that provides permissions for the scraper to discover, collect, and produce metrics
  /// [roleConfiguration] Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See `role_configuration` below.
  /// [scrapeConfiguration] The configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  /// [source] Configuration block to specify where the managed scraper will collect metrics from. See `source`.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  const ScraperState({
    this.alias,
    this.arn,
    this.destination,
    this.region,
    this.roleArn,
    this.roleConfiguration,
    this.scrapeConfiguration,
    this.source,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'arn': ?arn,
      'destination': ?pulumi.Input.mapOptionalInputValue<ScraperDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'roleConfiguration': ?pulumi.Input.mapOptionalInputValue<ScraperRoleConfiguration, Map<String, dynamic>>(roleConfiguration, (value) => value.toMap()),
      'scrapeConfiguration': ?scrapeConfiguration,
      'source': ?pulumi.Input.mapOptionalInputValue<ScraperSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ScraperTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ScraperState.fromMap(Map<String, dynamic> map) {
    return ScraperState(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleConfiguration: (() { final guardedValue = map['roleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperRoleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scrapeConfiguration: (() { final guardedValue = map['scrapeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

