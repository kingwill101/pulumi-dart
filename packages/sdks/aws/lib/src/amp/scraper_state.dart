// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_destination.dart';
import 'scraper_exporter.dart';
import 'scraper_role_configuration.dart';
import 'scraper_source.dart';
import 'scraper_timeouts.dart';

/// Input properties used for looking up and filtering Scraper resources.
class ScraperState {
  /// Name to associate with the managed scraper. This is for your use, and does not need to be unique.
  final pulumi.Input<String?>? alias;
  /// ARN of the scraper.
  final pulumi.Input<String?>? arn;
  /// Configuration block for the managed scraper to send metrics to. See `destination` Block for details.
  final pulumi.Input<ScraperDestination?>? destination;
  /// Configuration block for additional exporters. See `exporter` Block for details.
  final pulumi.Input<ScraperExporter?>? exporter;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the IAM role that provides permissions for the scraper to discover, collect, and produce metrics
  final pulumi.Input<String?>? roleArn;
  /// Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See `roleConfiguration` Block for details.
  final pulumi.Input<ScraperRoleConfiguration?>? roleConfiguration;
  /// Configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  final pulumi.Input<String?>? scrapeConfiguration;
  /// Configuration block to specify where the managed scraper will collect metrics from. See `source` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ScraperSource?>? source;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<ScraperTimeouts?>? timeouts;

  /// Creates a new [ScraperState].
  /// [alias] Name to associate with the managed scraper. This is for your use, and does not need to be unique.
  /// [arn] ARN of the scraper.
  /// [destination] Configuration block for the managed scraper to send metrics to. See `destination` Block for details.
  /// [exporter] Configuration block for additional exporters. See `exporter` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role that provides permissions for the scraper to discover, collect, and produce metrics
  /// [roleConfiguration] Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See `roleConfiguration` Block for details.
  /// [scrapeConfiguration] Configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  /// [source] Configuration block to specify where the managed scraper will collect metrics from. See `source` Block for details.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const ScraperState({
    this.alias,
    this.arn,
    this.destination,
    this.exporter,
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
      'exporter': ?pulumi.Input.mapOptionalInputValue<ScraperExporter, Map<String, dynamic>>(exporter, (value) => value.toMap()),
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
      exporter: (() { final guardedValue = map['exporter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScraperExporter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
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
