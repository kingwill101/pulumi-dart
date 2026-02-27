// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table_types_types_item.dart';

/// The types of BigQuery tables supported by Cloud DLP.
class GooglePrivacyDlpV2BigQueryTableTypes {
  /// A set of BigQuery table types.
  final List<GooglePrivacyDlpV2BigQueryTableTypesTypesItem>? types;

  GooglePrivacyDlpV2BigQueryTableTypes({
    this.types,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typesValue = types;
    if (typesValue != null) {
      map['types'] = pulumi.Input.encodeList<
          GooglePrivacyDlpV2BigQueryTableTypesTypesItem,
          String>(typesValue, (value) => value.value);
    }
    return map;
  }

  factory GooglePrivacyDlpV2BigQueryTableTypes.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryTableTypes(
      types: map['types'] == null
          ? null
          : pulumi.Input.decodeList<
                  GooglePrivacyDlpV2BigQueryTableTypesTypesItem>(
              map['types'],
              (value) =>
                  GooglePrivacyDlpV2BigQueryTableTypesTypesItem.fromValue(
                      value as String)),
    );
  }
}
