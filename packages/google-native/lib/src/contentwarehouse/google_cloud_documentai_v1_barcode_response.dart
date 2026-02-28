// ignore_for_file: unused_element, unnecessary_cast

/// Encodes the detailed information of a barcode.
class GoogleCloudDocumentaiV1BarcodeResponse {
  /// Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. - `CODE_39`: Code 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type. - `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13 type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`: UPC-A type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D Aztec code type. - `DATABAR`: GS1 DataBar code type.
  final String format;

  /// Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https://www.google.com;;'`.
  final String rawValue;

  /// Value format describes the format of the value that a barcode encodes. The supported formats are: - `CONTACT_INFO`: Contact information. - `EMAIL`: Email address. - `ISBN`: ISBN identifier. - `PHONE`: Phone number. - `PRODUCT`: Product. - `SMS`: SMS message. - `TEXT`: Text string. - `URL`: URL address. - `WIFI`: Wifi information. - `GEO`: Geo-localization. - `CALENDAR_EVENT`: Calendar event. - `DRIVER_LICENSE`: Driver's license.
  final String valueFormat;

  /// Creates a new [GoogleCloudDocumentaiV1BarcodeResponse].
  /// [format] Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. - `CODE_39`: Code 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type. - `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13 type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`: UPC-A type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D Aztec code type. - `DATABAR`: GS1 DataBar code type.
  /// [rawValue] Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https://www.google.com;;'`.
  /// [valueFormat] Value format describes the format of the value that a barcode encodes. The supported formats are: - `CONTACT_INFO`: Contact information. - `EMAIL`: Email address. - `ISBN`: ISBN identifier. - `PHONE`: Phone number. - `PRODUCT`: Product. - `SMS`: SMS message. - `TEXT`: Text string. - `URL`: URL address. - `WIFI`: Wifi information. - `GEO`: Geo-localization. - `CALENDAR_EVENT`: Calendar event. - `DRIVER_LICENSE`: Driver's license.
  GoogleCloudDocumentaiV1BarcodeResponse({
    required this.format,
    required this.rawValue,
    required this.valueFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['format'] = format;
    map['rawValue'] = rawValue;
    map['valueFormat'] = valueFormat;
    return map;
  }

  factory GoogleCloudDocumentaiV1BarcodeResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1BarcodeResponse(
      format: map['format'] as String,
      rawValue: map['rawValue'] as String,
      valueFormat: map['valueFormat'] as String,
    );
  }
}
