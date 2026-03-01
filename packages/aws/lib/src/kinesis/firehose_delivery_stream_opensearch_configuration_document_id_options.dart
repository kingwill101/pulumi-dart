// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions {
  /// The method for setting up document ID. Valid values: `FIREHOSE_DEFAULT`, `NO_DOCUMENT_ID`.
  final String defaultDocumentIdFormat;

  /// Creates a new [FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions].
  /// [defaultDocumentIdFormat] The method for setting up document ID. Valid values: `FIREHOSE_DEFAULT`, `NO_DOCUMENT_ID`.
  FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions({
    required this.defaultDocumentIdFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDocumentIdFormat': defaultDocumentIdFormat,
    };
  }

  factory FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions(
      defaultDocumentIdFormat: map['defaultDocumentIdFormat'] as String,
    );
  }
}
