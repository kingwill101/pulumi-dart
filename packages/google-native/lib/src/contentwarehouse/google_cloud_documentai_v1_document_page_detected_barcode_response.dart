// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_documentai_v1_barcode_response.dart';
import 'google_cloud_documentai_v1_document_page_layout_response.dart';

/// A detected barcode.
class GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse {
  /// Detailed barcode information of the DetectedBarcode.
  final GoogleCloudDocumentaiV1BarcodeResponse barcode;

  /// Layout for DetectedBarcode.
  final GoogleCloudDocumentaiV1DocumentPageLayoutResponse layout;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse].
  /// [barcode] Detailed barcode information of the DetectedBarcode.
  /// [layout] Layout for DetectedBarcode.
  GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse({
    required this.barcode,
    required this.layout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['barcode'] = barcode.toMap();
    map['layout'] = layout.toMap();
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageDetectedBarcodeResponse(
      barcode: GoogleCloudDocumentaiV1BarcodeResponse.fromMap(
          (map['barcode'] as Map).cast<String, dynamic>()),
      layout: GoogleCloudDocumentaiV1DocumentPageLayoutResponse.fromMap(
          (map['layout'] as Map).cast<String, dynamic>()),
    );
  }
}
