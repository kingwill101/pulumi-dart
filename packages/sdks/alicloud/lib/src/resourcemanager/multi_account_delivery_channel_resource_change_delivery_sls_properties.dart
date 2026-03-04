// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties {
  final pulumi.Input<String>? oversizedDataOssTargetArn;

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

  factory MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultiAccountDeliveryChannelResourceChangeDeliverySlsProperties(
      oversizedDataOssTargetArn: (() {
        final guardedValue = map['oversizedDataOssTargetArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
