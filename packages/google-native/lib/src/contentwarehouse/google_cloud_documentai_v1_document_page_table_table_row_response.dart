// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_page_table_table_cell_response.dart';

/// A row of table cells.
class GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse {
  /// Cells that make up this row.
  final List<GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse> cells;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse].
  /// [cells] Cells that make up this row.
  GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse({
    required this.cells,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cells':
          pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse,
            Map<String, dynamic>
          >(cells, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageTableTableRowResponse(
      cells:
          pulumi.Input.decodeList<
            GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse
          >(
            map['cells'],
            (value) =>
                GoogleCloudDocumentaiV1DocumentPageTableTableCellResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
