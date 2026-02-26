// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entry_bigquery_table_spec_table_spec/entry_bigquery_table_spec_table_spec.dart';
import '../entry_bigquery_table_spec_view_spec/entry_bigquery_table_spec_view_spec.dart';

class EntryBigqueryTableSpec {
  /// (Output)
  /// The table source type.
  final String? tableSourceType;

  /// (Output)
  /// Spec of a BigQuery table. This field should only be populated if tableSourceType is BIGQUERY_TABLE.
  /// Structure is documented below.
  final List<EntryBigqueryTableSpecTableSpec>? tableSpecs;

  /// (Output)
  /// Table view specification. This field should only be populated if tableSourceType is BIGQUERY_VIEW.
  /// Structure is documented below.
  final List<EntryBigqueryTableSpecViewSpec>? viewSpecs;

  EntryBigqueryTableSpec({
    this.tableSourceType,
    this.tableSpecs,
    this.viewSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tableSourceTypeValue = tableSourceType;
    if (tableSourceTypeValue != null) {
      map['tableSourceType'] = tableSourceTypeValue;
    }
    final tableSpecsValue = tableSpecs;
    if (tableSpecsValue != null) {
      map['tableSpecs'] = Input.encodeList<EntryBigqueryTableSpecTableSpec,
          Map<String, dynamic>>(tableSpecsValue, (value) => value.toMap());
    }
    final viewSpecsValue = viewSpecs;
    if (viewSpecsValue != null) {
      map['viewSpecs'] = Input.encodeList<EntryBigqueryTableSpecViewSpec,
          Map<String, dynamic>>(viewSpecsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EntryBigqueryTableSpec.fromMap(Map<String, dynamic> map) {
    return EntryBigqueryTableSpec(
      tableSourceType: map['tableSourceType'] == null
          ? null
          : map['tableSourceType'] as String,
      tableSpecs: map['tableSpecs'] == null
          ? null
          : Input.decodeList<EntryBigqueryTableSpecTableSpec>(
              map['tableSpecs'],
              (value) => EntryBigqueryTableSpecTableSpec.fromMap(
                  (value as Map).cast<String, dynamic>())),
      viewSpecs: map['viewSpecs'] == null
          ? null
          : Input.decodeList<EntryBigqueryTableSpecViewSpec>(
              map['viewSpecs'],
              (value) => EntryBigqueryTableSpecViewSpec.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
