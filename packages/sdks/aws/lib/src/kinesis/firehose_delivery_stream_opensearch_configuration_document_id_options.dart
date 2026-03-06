// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions {
  /// The method for setting up document ID. Valid values: `FIREHOSE_DEFAULT`, `NO_DOCUMENT_ID`.
  final pulumi.Input<String> defaultDocumentIdFormat;

  /// Creates a new [FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions].
  /// [defaultDocumentIdFormat] The method for setting up document ID. Valid values: `FIREHOSE_DEFAULT`, `NO_DOCUMENT_ID`.
  const FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions({
    required this.defaultDocumentIdFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDocumentIdFormat': defaultDocumentIdFormat,
    };
  }

  factory FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions.fromMap(Map<String, dynamic> map) {
    return FirehoseDeliveryStreamOpensearchConfigurationDocumentIdOptions(
      defaultDocumentIdFormat: pulumi.Input.fromValue(map['defaultDocumentIdFormat'] as String),
    );
  }
}

