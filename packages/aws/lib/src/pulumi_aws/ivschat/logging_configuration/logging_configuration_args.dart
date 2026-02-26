// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../logging_configuration_destination_configuration/logging_configuration_destination_configuration.dart';

/// The set of arguments for LoggingConfiguration.
class LoggingConfigurationArgs {
  /// Object containing destination configuration for where chat activity will be logged. This object must contain exactly one of the following children arguments:
  final Input<LoggingConfigurationDestinationConfiguration>?
      destinationConfiguration;

  /// Logging Configuration name.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  LoggingConfigurationArgs({
    this.destinationConfiguration,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationConfigurationValue = destinationConfiguration;
    if (destinationConfigurationValue != null) {
      map['destinationConfiguration'] = Input.mapOptionalInputValue<
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
      destinationConfiguration:
          Input.asOptionalInput<LoggingConfigurationDestinationConfiguration>(
              map['destinationConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
