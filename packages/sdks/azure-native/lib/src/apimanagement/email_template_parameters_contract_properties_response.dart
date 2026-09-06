// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Email Template Parameter contract.
class EmailTemplateParametersContractPropertiesResponse {
  /// Template parameter description.
  final pulumi.Input<String?>? description;
  /// Template parameter name.
  final pulumi.Input<String?>? name;
  /// Template parameter title.
  final pulumi.Input<String?>? title;

  /// Creates a new [EmailTemplateParametersContractPropertiesResponse].
  /// [description] Template parameter description.
  /// [name] Template parameter name.
  /// [title] Template parameter title.
  const EmailTemplateParametersContractPropertiesResponse({
    this.description,
    this.name,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'title': ?title,
    };
  }

  factory EmailTemplateParametersContractPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EmailTemplateParametersContractPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
