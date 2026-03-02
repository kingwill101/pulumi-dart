// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperienceConfigurationContentSourceConfiguration {
  /// The identifiers of the data sources you want to use for your Amazon Kendra experience. Maximum number of 100 items.
  final pulumi.Input<List<String>>? dataSourceIds;
  /// Whether to use documents you indexed directly using the `BatchPutDocument API`. Defaults to `false`.
  final pulumi.Input<bool>? directPutContent;
  /// The identifier of the FAQs that you want to use for your Amazon Kendra experience. Maximum number of 100 items.
  final pulumi.Input<List<String>>? faqIds;

  /// Creates a new [ExperienceConfigurationContentSourceConfiguration].
  /// [dataSourceIds] The identifiers of the data sources you want to use for your Amazon Kendra experience. Maximum number of 100 items.
  /// [directPutContent] Whether to use documents you indexed directly using the `BatchPutDocument API`. Defaults to `false`.
  /// [faqIds] The identifier of the FAQs that you want to use for your Amazon Kendra experience. Maximum number of 100 items.
  ExperienceConfigurationContentSourceConfiguration({
    this.dataSourceIds,
    this.directPutContent,
    this.faqIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceIds': ?dataSourceIds,
      'directPutContent': ?directPutContent,
      'faqIds': ?faqIds,
    };
  }

  factory ExperienceConfigurationContentSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperienceConfigurationContentSourceConfiguration(
      dataSourceIds: map['dataSourceIds'] == null ? null : ((map['dataSourceIds'] as List).cast<String>()).input(),
      directPutContent: map['directPutContent'] == null ? null : (map['directPutContent'] as bool).input(),
      faqIds: map['faqIds'] == null ? null : ((map['faqIds'] as List).cast<String>()).input(),
    );
  }
}

