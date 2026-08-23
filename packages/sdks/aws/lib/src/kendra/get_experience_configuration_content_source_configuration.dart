// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExperienceConfigurationContentSourceConfiguration {
  /// Identifiers of the data sources you want to use for your Amazon Kendra Experience.
  final pulumi.Input<List<String>> dataSourceIds;
  /// Whether to use documents you indexed directly using the `BatchPutDocument API`.
  final pulumi.Input<bool> directPutContent;
  /// Identifier of the FAQs that you want to use for your Amazon Kendra Experience.
  final pulumi.Input<List<String>> faqIds;

  /// Creates a new [GetExperienceConfigurationContentSourceConfiguration].
  /// [dataSourceIds] Identifiers of the data sources you want to use for your Amazon Kendra Experience.
  /// [directPutContent] Whether to use documents you indexed directly using the `BatchPutDocument API`.
  /// [faqIds] Identifier of the FAQs that you want to use for your Amazon Kendra Experience.
  const GetExperienceConfigurationContentSourceConfiguration({
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
      dataSourceIds: pulumi.Input.fromValue((map['dataSourceIds'] as List).cast<String>()),
      directPutContent: pulumi.Input.fromValue(map['directPutContent'] as bool),
      faqIds: pulumi.Input.fromValue((map['faqIds'] as List).cast<String>()),
    );
  }
}
