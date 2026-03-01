// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_bigquery_table_spec_table_spec.dart';
import 'entry_bigquery_table_spec_view_spec.dart';

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

  /// Creates a new [EntryBigqueryTableSpec].
  /// [tableSourceType] (Output)
  /// [tableSpecs] (Output)
  /// [viewSpecs] (Output)
  EntryBigqueryTableSpec({
    this.tableSourceType,
    this.tableSpecs,
    this.viewSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableSourceType': ?tableSourceType,
      'tableSpecs': ?tableSpecs == null
          ? null
          : pulumi.Input.encodeList<
              EntryBigqueryTableSpecTableSpec,
              Map<String, dynamic>
            >(tableSpecs!, (value) => value.toMap()),
      'viewSpecs': ?viewSpecs == null
          ? null
          : pulumi.Input.encodeList<
              EntryBigqueryTableSpecViewSpec,
              Map<String, dynamic>
            >(viewSpecs!, (value) => value.toMap()),
    };
  }

  factory EntryBigqueryTableSpec.fromMap(Map<String, dynamic> map) {
    return EntryBigqueryTableSpec(
      tableSourceType: map['tableSourceType'] == null
          ? null
          : map['tableSourceType'] as String,
      tableSpecs: map['tableSpecs'] == null
          ? null
          : pulumi.Input.decodeList<EntryBigqueryTableSpecTableSpec>(
              map['tableSpecs'],
              (value) => EntryBigqueryTableSpecTableSpec.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      viewSpecs: map['viewSpecs'] == null
          ? null
          : pulumi.Input.decodeList<EntryBigqueryTableSpecViewSpec>(
              map['viewSpecs'],
              (value) => EntryBigqueryTableSpecViewSpec.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
