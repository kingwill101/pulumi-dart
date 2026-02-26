// ignore_for_file: unused_element, unnecessary_cast

import '../inventory_destination_bucket/inventory_destination_bucket.dart';

class InventoryDestination {
  /// S3 bucket configuration where inventory results are published (documented below).
  final InventoryDestinationBucket bucket;

  InventoryDestination({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket.toMap();
    return map;
  }

  factory InventoryDestination.fromMap(Map<String, dynamic> map) {
    return InventoryDestination(
      bucket: InventoryDestinationBucket.fromMap(
          (map['bucket'] as Map).cast<String, dynamic>()),
    );
  }
}
