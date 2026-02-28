// ignore_for_file: unused_element, unnecessary_cast

class DataSourceConfigurationTemplateConfiguration {
  /// JSON string containing a [data source template schema](https://docs.aws.amazon.com/kendra/latest/dg/ds-schemas.html).
  final String template;

  /// Creates a new [DataSourceConfigurationTemplateConfiguration].
  /// [template] JSON string containing a [data source template schema](https://docs.aws.amazon.com/kendra/latest/dg/ds-schemas.html).
  DataSourceConfigurationTemplateConfiguration({
    required this.template,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['template'] = template;
    return map;
  }

  factory DataSourceConfigurationTemplateConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DataSourceConfigurationTemplateConfiguration(
      template: map['template'] as String,
    );
  }
}
