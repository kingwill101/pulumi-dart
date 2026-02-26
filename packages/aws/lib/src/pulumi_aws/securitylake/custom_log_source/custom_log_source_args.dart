// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_log_source_configuration/custom_log_source_configuration.dart';

/// The set of arguments for CustomLogSource.
class CustomLogSourceArgs {
  /// The configuration for the third-party custom source.
  final Input<CustomLogSourceConfiguration> configuration;

  /// The Open Cybersecurity Schema Framework (OCSF) event classes which describes the type of data that the custom source will send to Security Lake.
  final Input<List<String>>? eventClasses;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specify the name for a third-party custom source.
  /// This must be a Regionally unique value.
  /// Has a maximum length of 20.
  final Input<String> sourceName;

  /// Specify the source version for the third-party custom source, to limit log collection to a specific version of custom data source.
  final Input<String>? sourceVersion;

  CustomLogSourceArgs({
    required this.configuration,
    this.eventClasses,
    this.region,
    required this.sourceName,
    this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configuration'] =
        Input.mapInputValue<CustomLogSourceConfiguration, Map<String, dynamic>>(
            configuration, (value) => value.toMap());
    final eventClassesValue = eventClasses;
    if (eventClassesValue != null) {
      map['eventClasses'] = eventClassesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceName'] = sourceName;
    final sourceVersionValue = sourceVersion;
    if (sourceVersionValue != null) {
      map['sourceVersion'] = sourceVersionValue;
    }
    return map;
  }

  factory CustomLogSourceArgs.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceArgs(
      configuration:
          Input.asInput<CustomLogSourceConfiguration>(map['configuration']),
      eventClasses: Input.asOptionalInput<List<String>>(map['eventClasses']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceName: Input.asInput<String>(map['sourceName']),
      sourceVersion: Input.asOptionalInput<String>(map['sourceVersion']),
    );
  }
}
