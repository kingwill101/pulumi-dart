// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lakeformation_get_data_lake_settings_get_data_lake_settings_args_doc}
/// Arguments for getDataLakeSettings.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_get_data_lake_settings_get_data_lake_settings_args_doc}
class GetDataLakeSettingsArgs {
  /// Identifier for the Data Catalog. By default, the account ID.
  final pulumi.Input<String?>? catalogId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetDataLakeSettingsArgs].
  /// [catalogId] Identifier for the Data Catalog. By default, the account ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetDataLakeSettingsArgs({
    this.catalogId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'region': ?region,
    };
  }

  factory GetDataLakeSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetDataLakeSettingsArgs(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
