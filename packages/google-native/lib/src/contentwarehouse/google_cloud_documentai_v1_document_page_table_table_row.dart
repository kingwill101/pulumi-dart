// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_table_table_cell.dart';

/// A row of table cells.
class GoogleCloudDocumentaiV1DocumentPageTableTableRow {
  /// Cells that make up this row.
  final List<GoogleCloudDocumentaiV1DocumentPageTableTableCell>? cells;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTableTableRow].
  /// [cells] Cells that make up this row.
  GoogleCloudDocumentaiV1DocumentPageTableTableRow({this.cells});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cells': ?cells == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1DocumentPageTableTableCell,
              Map<String, dynamic>
            >(cells!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageTableTableRow(
      cells: map['cells'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1DocumentPageTableTableCell
            >(
              map['cells'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
