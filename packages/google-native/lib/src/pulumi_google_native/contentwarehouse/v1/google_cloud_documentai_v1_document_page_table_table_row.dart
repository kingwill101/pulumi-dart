// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_documentai_v1_document_page_table_table_cell.dart';

/// A row of table cells.
class GoogleCloudDocumentaiV1DocumentPageTableTableRow {
  /// Cells that make up this row.
  final List<GoogleCloudDocumentaiV1DocumentPageTableTableCell>? cells;

  GoogleCloudDocumentaiV1DocumentPageTableTableRow({
    this.cells,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cellsValue = cells;
    if (cellsValue != null) {
      map['cells'] = Input.encodeList<
          GoogleCloudDocumentaiV1DocumentPageTableTableCell,
          Map<String, dynamic>>(cellsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTableTableRow(
      cells: map['cells'] == null
          ? null
          : Input.decodeList<GoogleCloudDocumentaiV1DocumentPageTableTableCell>(
              map['cells'],
              (value) =>
                  GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
