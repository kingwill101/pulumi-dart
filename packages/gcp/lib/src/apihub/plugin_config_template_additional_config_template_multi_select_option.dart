// ignore_for_file: unused_element, unnecessary_cast

class PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption {
  /// Description of the option.
  final String? description;

  /// Display name of the option.
  final String displayName;

  /// Id of the option.
  final String id;

  /// Creates a new [PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption].
  /// [description] Description of the option.
  /// [displayName] Display name of the option.
  /// [id] Id of the option.
  PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption({
    this.description,
    required this.displayName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'id': id,
    };
  }

  factory PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
    );
  }
}
