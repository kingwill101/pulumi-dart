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
  ScraperState({
    pulumi.Output<String>? alias,
    pulumi.Output<String>? arn,
    pulumi.Output<ScraperDestination>? destination,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<ScraperRoleConfiguration>? roleConfiguration,
    pulumi.Output<String>? scrapeConfiguration,
    pulumi.Output<ScraperSource>? source,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ScraperTimeouts>? timeouts,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      destination = pulumi.Input.asOptionalInput<ScraperDestination>(destination),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      roleConfiguration = pulumi.Input.asOptionalInput<ScraperRoleConfiguration>(roleConfiguration),
      scrapeConfiguration = pulumi.Input.asOptionalInput<String>(scrapeConfiguration),
      source = pulumi.Input.asOptionalInput<ScraperSource>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ScraperTimeouts>(timeouts);

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
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<ScraperDestination>(ScraperDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      roleConfiguration: map['roleConfiguration'] == null ? null : pulumi.Output.create<ScraperRoleConfiguration>(ScraperRoleConfiguration.fromMap((map['roleConfiguration'] as Map).cast<String, dynamic>())),
      scrapeConfiguration: map['scrapeConfiguration'] == null ? null : pulumi.Output.create<String>(map['scrapeConfiguration'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<ScraperSource>(ScraperSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ScraperTimeouts>(ScraperTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

