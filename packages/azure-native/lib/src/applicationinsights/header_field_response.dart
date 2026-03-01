// ignore_for_file: unused_element, unnecessary_cast


/// A header to add to the WebTest.
class HeaderFieldResponse {
  /// The name of the header.
  final String? headerFieldName;
  /// The value of the header.
  final String? headerFieldValue;

  /// Creates a new [HeaderFieldResponse].
  /// [headerFieldName] The name of the header.
  /// [headerFieldValue] The value of the header.
  HeaderFieldResponse({
    this.headerFieldName,
    this.headerFieldValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerFieldName': ?headerFieldName,
      'headerFieldValue': ?headerFieldValue,
    };
  }

  factory HeaderFieldResponse.fromMap(Map<String, dynamic> map) {
    return HeaderFieldResponse(
      headerFieldName: map['headerFieldName'] == null ? null : map['headerFieldName'] as String,
      headerFieldValue: map['headerFieldValue'] == null ? null : map['headerFieldValue'] as String,
    );
  }
}

