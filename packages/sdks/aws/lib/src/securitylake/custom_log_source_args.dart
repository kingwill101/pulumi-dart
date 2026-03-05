// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_log_source_configuration.dart';

/// {@template pulumi_securitylake_custom_log_source_custom_log_source_args_doc}
/// The set of arguments for CustomLogSource.
/// {@endtemplate}
/// {@macro pulumi_securitylake_custom_log_source_custom_log_source_args_doc}
class CustomLogSourceArgs {
  /// The configuration for the third-party custom source.
  final pulumi.Input<CustomLogSourceConfiguration> configuration;
  /// The Open Cybersecurity Schema Framework (OCSF) event classes which describes the type of data that the custom source will send to Security Lake.
  final pulumi.Input<List<String>>? eventClasses;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specify the name for a third-party custom source.
  /// This must be a Regionally unique value.
  /// Has a maximum length of 20.
  final pulumi.Input<String> sourceName;
  /// Specify the source version for the third-party custom source, to limit log collection to a specific version of custom data source.
  final pulumi.Input<String>? sourceVersion;

  /// Creates a new [CustomLogSourceArgs].
  /// [configuration] The configuration for the third-party custom source.
  /// [eventClasses] The Open Cybersecurity Schema Framework (OCSF) event classes which describes the type of data that the custom source will send to Security Lake.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceName] Specify the name for a third-party custom source.
  /// [sourceVersion] Specify the source version for the third-party custom source, to limit log collection to a specific version of custom data source.
  CustomLogSourceArgs({
    required this.configuration,
    this.eventClasses,
    this.region,
    required this.sourceName,
    this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<CustomLogSourceConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'eventClasses': ?eventClasses,
      'region': ?region,
      'sourceName': sourceName,
      'sourceVersion': ?sourceVersion,
    };
  }

  factory CustomLogSourceArgs.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceArgs(
      configuration: pulumi.Input.fromValue(CustomLogSourceConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      eventClasses: (() { final guardedValue = map['eventClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
      sourceVersion: (() { final guardedValue = map['sourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

