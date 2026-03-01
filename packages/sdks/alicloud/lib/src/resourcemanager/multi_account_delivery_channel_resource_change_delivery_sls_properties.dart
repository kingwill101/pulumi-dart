// ignore_for_file: unused_element, unnecessary_cast


class MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties {
  final String? oversizedDataOssTargetArn;

  /// Creates a new [MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties].
  /// [oversizedDataOssTargetArn] Optional.
  MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties({
    this.oversizedDataOssTargetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizedDataOssTargetArn': ?oversizedDataOssTargetArn,
    };
  }

  factory MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties.fromMap(Map<String, dynamic> map) {
    return MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties(
      oversizedDataOssTargetArn: map['oversizedDataOssTargetArn'] == null ? null : map['oversizedDataOssTargetArn'] as String,
    );
  }
}

