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
      dataSourceIds: (() { final guardedValue = map['dataSourceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      directPutContent: (() { final guardedValue = map['directPutContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      faqIds: (() { final guardedValue = map['faqIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

