// ignore_for_file: unused_element, unnecessary_cast


/// Email Template Parameter contract.
class EmailTemplateParametersContractPropertiesResponse {
  /// Template parameter description.
  final String? description;
  /// Template parameter name.
  final String? name;
  /// Template parameter title.
  final String? title;

  /// Creates a new [EmailTemplateParametersContractPropertiesResponse].
  /// [description] Template parameter description.
  /// [name] Template parameter name.
  /// [title] Template parameter title.
  EmailTemplateParametersContractPropertiesResponse({
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
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

