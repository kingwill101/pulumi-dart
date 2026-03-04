// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeliveryChannelResourceSnapshotDeliverySlsProperties {
  final pulumi.Input<String>? oversizedDataOssTargetArn;

  /// Creates a new [DeliveryChannelResourceSnapshotDeliverySlsProperties].
  /// [oversizedDataOssTargetArn] Optional.
  DeliveryChannelResourceSnapshotDeliverySlsProperties({
    this.oversizedDataOssTargetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizedDataOssTargetArn': ?oversizedDataOssTargetArn,
    };
  }

  factory DeliveryChannelResourceSnapshotDeliverySlsProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryChannelResourceSnapshotDeliverySlsProperties(
      oversizedDataOssTargetArn: (() {
        final guardedValue = map['oversizedDataOssTargetArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
