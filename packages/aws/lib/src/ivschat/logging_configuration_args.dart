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
    LoggingConfigurationDestinationConfiguration? destinationConfiguration,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : destinationConfiguration = pulumi.Input.asOptionalInput<
                LoggingConfigurationDestinationConfiguration>(
            destinationConfiguration),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationConfigurationValue = destinationConfiguration;
    if (destinationConfigurationValue != null) {
      map['destinationConfiguration'] = pulumi.Input.mapOptionalInputValue<
              LoggingConfigurationDestinationConfiguration,
              Map<String, dynamic>>(
          destinationConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LoggingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationArgs(
      destinationConfiguration: map['destinationConfiguration'] == null
          ? null
          : LoggingConfigurationDestinationConfiguration.fromMap(
              (map['destinationConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
