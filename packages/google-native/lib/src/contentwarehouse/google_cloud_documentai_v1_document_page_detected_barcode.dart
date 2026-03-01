// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_documentai_v1_barcode.dart';
import 'google_cloud_documentai_v1_document_page_layout.dart';

/// A detected barcode.
class GoogleCloudDocumentaiV1DocumentPageDetectedBarcode {
  /// Detailed barcode information of the DetectedBarcode.
  final GoogleCloudDocumentaiV1Barcode? barcode;

  /// Layout for DetectedBarcode.
  final GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageDetectedBarcode].
  /// [barcode] Detailed barcode information of the DetectedBarcode.
  /// [layout] Layout for DetectedBarcode.
  GoogleCloudDocumentaiV1DocumentPageDetectedBarcode({
    this.barcode,
    this.layout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'barcode': ?barcode == null ? null : barcode!.toMap(),
      'layout': ?layout == null ? null : layout!.toMap(),
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageDetectedBarcode.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageDetectedBarcode(
      barcode: map['barcode'] == null
          ? null
          : GoogleCloudDocumentaiV1Barcode.fromMap(
              (map['barcode'] as Map).cast<String, dynamic>(),
            ),
      layout: map['layout'] == null
          ? null
          : GoogleCloudDocumentaiV1DocumentPageLayout.fromMap(
              (map['layout'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
