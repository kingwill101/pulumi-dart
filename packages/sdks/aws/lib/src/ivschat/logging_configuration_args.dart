// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_configuration_destination_configuration.dart';

/// {@template pulumi_ivschat_logging_configuration_logging_configuration_args_doc}
/// The set of arguments for LoggingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_ivschat_logging_configuration_logging_configuration_args_doc}
class LoggingConfigurationArgs {
  /// Object containing destination configuration for where chat activity will be logged. This object must contain exactly one of the following children arguments:
  final pulumi.Input<LoggingConfigurationDestinationConfiguration>?
  destinationConfiguration;

  /// Logging Configuration name.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LoggingConfigurationArgs].
  /// [destinationConfiguration] Object containing destination configuration for where chat activity will be logged. This object must contain exactly one of the following children arguments:
  /// [name] Logging Configuration name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LoggingConfigurationArgs({
    this.destinationConfiguration,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            LoggingConfigurationDestinationConfiguration,
            Map<String, dynamic>
          >(destinationConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory LoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationArgs(
      destinationConfiguration: (() {
        final guardedValue = map['destinationConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoggingConfigurationDestinationConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
