// ignore_for_file: unused_element, unnecessary_cast

class ExperienceConfigurationContentSourceConfiguration {
  /// The identifiers of the data sources you want to use for your Amazon Kendra experience. Maximum number of 100 items.
  final List<String>? dataSourceIds;

  /// Whether to use documents you indexed directly using the `BatchPutDocument API`. Defaults to `false`.
  final bool? directPutContent;

  /// The identifier of the FAQs that you want to use for your Amazon Kendra experience. Maximum number of 100 items.
  final List<String>? faqIds;

  ExperienceConfigurationContentSourceConfiguration({
    this.dataSourceIds,
    this.directPutContent,
    this.faqIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataSourceIdsValue = dataSourceIds;
    if (dataSourceIdsValue != null) {
      map['dataSourceIds'] = dataSourceIdsValue;
    }
    final directPutContentValue = directPutContent;
    if (directPutContentValue != null) {
      map['directPutContent'] = directPutContentValue;
    }
    final faqIdsValue = faqIds;
    if (faqIdsValue != null) {
      map['faqIds'] = faqIdsValue;
    }
    return map;
  }

  factory ExperienceConfigurationContentSourceConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ExperienceConfigurationContentSourceConfiguration(
      dataSourceIds: map['dataSourceIds'] == null
          ? null
          : (map['dataSourceIds'] as List).cast<String>(),
      directPutContent: map['directPutContent'] == null
          ? null
          : map['directPutContent'] as bool,
      faqIds:
          map['faqIds'] == null ? null : (map['faqIds'] as List).cast<String>(),
    );
  }
}
