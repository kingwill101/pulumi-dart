// ignore_for_file: unused_element, unnecessary_cast

import 'inventory_destination_bucket.dart';

class InventoryDestination {
  /// S3 bucket configuration where inventory results are published (documented below).
  final InventoryDestinationBucket bucket;

  /// Creates a new [InventoryDestination].
  /// [bucket] S3 bucket configuration where inventory results are published (documented below).
  InventoryDestination({
    required this.bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket.toMap(),
    };
  }

  factory InventoryDestination.fromMap(Map<String, dynamic> map) {
    return InventoryDestination(
      bucket: InventoryDestinationBucket.fromMap((map['bucket'] as Map).cast<String, dynamic>()),
    );
  }
}

