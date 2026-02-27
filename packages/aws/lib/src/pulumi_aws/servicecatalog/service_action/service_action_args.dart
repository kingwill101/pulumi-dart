// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_action_definition/service_action_definition.dart';

/// The set of arguments for ServiceAction.
class ServiceActionArgs {
  /// Language code. Valid values are `en` (English), `jp` (Japanese), and `zh` (Chinese). Default is `en`.
  final Input<String>? acceptLanguage;

  /// Self-service action definition configuration block. Detailed below.
  final Input<ServiceActionDefinition> definition;

  /// Self-service action description.
  final Input<String>? description;

  /// Self-service action name.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
    map['definition'] =
        Input.mapInputValue<ServiceActionDefinition, Map<String, dynamic>>(
            definition, (value) => value.toMap());
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
      acceptLanguage: Input.asOptionalInput<String>(map['acceptLanguage']),
      definition: Input.asInput<ServiceActionDefinition>(map['definition']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
