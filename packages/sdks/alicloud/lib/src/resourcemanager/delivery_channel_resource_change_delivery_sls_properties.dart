// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeliveryChannelResourceChangeDeliverySlsProperties {
  final pulumi.Input<String>? oversizedDataOssTargetArn;

  /// Creates a new [DeliveryChannelResourceChangeDeliverySlsProperties].
  /// [oversizedDataOssTargetArn] Optional.
  DeliveryChannelResourceChangeDeliverySlsProperties({
    this.oversizedDataOssTargetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizedDataOssTargetArn': ?oversizedDataOssTargetArn,
    };
  }

  factory DeliveryChannelResourceChangeDeliverySlsProperties.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelResourceChangeDeliverySlsProperties(
      oversizedDataOssTargetArn: map['oversizedDataOssTargetArn'] == null ? null : (map['oversizedDataOssTargetArn']! as String).input(),
    );
  }
}

