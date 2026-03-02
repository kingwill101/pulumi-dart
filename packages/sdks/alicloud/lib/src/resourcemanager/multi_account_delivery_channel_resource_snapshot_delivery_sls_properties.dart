// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties {
  final pulumi.Input<String>? oversizedDataOssTargetArn;

  /// Creates a new [MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties].
  /// [oversizedDataOssTargetArn] Optional.
  MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties({
    this.oversizedDataOssTargetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizedDataOssTargetArn': ?oversizedDataOssTargetArn,
    };
  }

  factory MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties.fromMap(Map<String, dynamic> map) {
    return MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties(
      oversizedDataOssTargetArn: map['oversizedDataOssTargetArn'] == null ? null : (map['oversizedDataOssTargetArn'] as String).input(),
    );
  }
}

