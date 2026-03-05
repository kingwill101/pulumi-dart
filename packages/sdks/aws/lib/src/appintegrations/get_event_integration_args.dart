// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appintegrations_get_event_integration_get_event_integration_args_doc}
/// Arguments for getEventIntegration.
/// {@endtemplate}
/// {@macro pulumi_appintegrations_get_event_integration_get_event_integration_args_doc}
class GetEventIntegrationArgs {
  /// The AppIntegrations Event Integration name.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Metadata that you can assign to help organize the report plans you create.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEventIntegrationArgs].
  /// [name] The AppIntegrations Event Integration name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the report plans you create.
  GetEventIntegrationArgs({
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetEventIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return GetEventIntegrationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

