// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions {
  /// The method for setting up document ID. Valid values: `FIREHOSE_DEFAULT`, `NO_DOCUMENT_ID`.
  final String defaultDocumentIdFormat;

  FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions({
    required this.defaultDocumentIdFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultDocumentIdFormat'] = defaultDocumentIdFormat;
    return map;
  }

  factory FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions.fromMap(
      Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions(
      defaultDocumentIdFormat: map['defaultDocumentIdFormat'] as String,
    );
  }
}
