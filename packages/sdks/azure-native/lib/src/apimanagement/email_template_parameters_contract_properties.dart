// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Email Template Parameter contract.
class EmailTemplateParametersContractProperties {
  /// Template parameter description.
  final pulumi.Input<String>? description;
  /// Template parameter name.
  final pulumi.Input<String>? name;
  /// Template parameter title.
  final pulumi.Input<String>? title;

  /// Creates a new [EmailTemplateParametersContractProperties].
  /// [description] Template parameter description.
  /// [name] Template parameter name.
  /// [title] Template parameter title.
  EmailTemplateParametersContractProperties({
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

  factory EmailTemplateParametersContractProperties.fromMap(Map<String, dynamic> map) {
    return EmailTemplateParametersContractProperties(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

