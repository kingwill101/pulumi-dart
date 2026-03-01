// ignore_for_file: unused_element, unnecessary_cast


class GetExperienceConfigurationContentSourceConfiguration {
  /// Identifiers of the data sources you want to use for your Amazon Kendra Experience.
  final List<String> dataSourceIds;
  /// Whether to use documents you indexed directly using the `BatchPutDocument API`.
  final bool directPutContent;
  /// Identifier of the FAQs that you want to use for your Amazon Kendra Experience.
  final List<String> faqIds;

  /// Creates a new [GetExperienceConfigurationContentSourceConfiguration].
  /// [dataSourceIds] Identifiers of the data sources you want to use for your Amazon Kendra Experience.
  /// [directPutContent] Whether to use documents you indexed directly using the `BatchPutDocument API`.
  /// [faqIds] Identifier of the FAQs that you want to use for your Amazon Kendra Experience.
  GetExperienceConfigurationContentSourceConfiguration({
    required this.dataSourceIds,
    required this.directPutContent,
    required this.faqIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceIds': dataSourceIds,
      'directPutContent': directPutContent,
      'faqIds': faqIds,
    };
  }

  factory GetExperienceConfigurationContentSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return GetExperienceConfigurationContentSourceConfiguration(
      dataSourceIds: (map['dataSourceIds'] as List).cast<String>(),
      directPutContent: map['directPutContent'] as bool,
      faqIds: (map['faqIds'] as List).cast<String>(),
    );
  }
}

