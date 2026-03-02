// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_action_definition.dart';

/// Input properties used for looking up and filtering ServiceAction resources.
class ServiceActionState {
  /// Language code. Valid values are `en` (English), `jp` (Japanese), and `zh` (Chinese). Default is `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// Self-service action definition configuration block. Detailed below.
  final pulumi.Input<ServiceActionDefinition>? definition;
  /// Self-service action description.
  final pulumi.Input<String>? description;
  /// Self-service action name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ServiceActionState].
  /// [acceptLanguage] Language code. Valid values are `en` (English), `jp` (Japanese), and `zh` (Chinese). Default is `en`.
  /// [definition] Self-service action definition configuration block. Detailed below.
  /// [description] Self-service action description.
  /// [name] Self-service action name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ServiceActionState({
    this.acceptLanguage,
    this.definition,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'definition': ?pulumi.Input.mapOptionalInputValue<ServiceActionDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ServiceActionState.fromMap(Map<String, dynamic> map) {
    return ServiceActionState(
      acceptLanguage: map['acceptLanguage'] == null ? null : (map['acceptLanguage'] as String).input(),
      definition: map['definition'] == null ? null : (ServiceActionDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

