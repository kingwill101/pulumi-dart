// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inventory_destination_bucket.dart';

class InventoryDestination {
  /// S3 bucket configuration where inventory results are published (documented below).
  final pulumi.Input<InventoryDestinationBucket> bucket;

  /// Creates a new [InventoryDestination].
  /// [bucket] S3 bucket configuration where inventory results are published (documented below).
  InventoryDestination({required this.bucket});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket':
          pulumi.Input.mapInputValue<
            InventoryDestinationBucket,
            Map<String, dynamic>
          >(bucket, (value) => value.toMap()),
    };
  }

  factory InventoryDestination.fromMap(Map<String, dynamic> map) {
    return InventoryDestination(
      bucket: pulumi.Input.fromValue(
        InventoryDestinationBucket.fromMap(
          (map['bucket']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
