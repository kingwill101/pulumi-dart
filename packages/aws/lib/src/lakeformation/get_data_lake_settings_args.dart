// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lakeformation_get_data_lake_settings_get_data_lake_settings_args_doc}
/// Arguments for getDataLakeSettings.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_get_data_lake_settings_get_data_lake_settings_args_doc}
class GetDataLakeSettingsArgs {
  /// Identifier for the Data Catalog. By default, the account ID.
  final pulumi.Input<String>? catalogId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDataLakeSettingsArgs].
  /// [catalogId] Identifier for the Data Catalog. By default, the account ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDataLakeSettingsArgs({String? catalogId, String? region})
    : catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'catalogId': ?catalogId, 'region': ?region};
  }

  factory GetDataLakeSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetDataLakeSettingsArgs(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
