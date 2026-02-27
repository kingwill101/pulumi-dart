// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_action_definition/service_action_definition.dart';

/// The set of arguments for ServiceAction.
class ServiceActionArgs {
  /// Language code. Valid values are `en` (English), `jp` (Japanese), and `zh` (Chinese). Default is `en`.
  final pulumi.Input<String>? acceptLanguage;

  /// Self-service action definition configuration block. Detailed below.
  final pulumi.Input<ServiceActionDefinition> definition;

  /// Self-service action description.
  final pulumi.Input<String>? description;

  /// Self-service action name.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ServiceActionArgs({
    this.acceptLanguage,
    required this.definition,
    this.description,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['definition'] = pulumi.Input.mapInputValue<ServiceActionDefinition,
        Map<String, dynamic>>(definition, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ServiceActionArgs.fromMap(Map<String, dynamic> map) {
    return ServiceActionArgs(
      acceptLanguage:
          pulumi.Input.asOptionalInput<String>(map['acceptLanguage']),
      definition:
          pulumi.Input.asInput<ServiceActionDefinition>(map['definition']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
