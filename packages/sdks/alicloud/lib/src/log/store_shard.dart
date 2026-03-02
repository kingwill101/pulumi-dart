// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StoreShard {
  /// The begin value of the shard range(MD5), included in the shard range.
  final pulumi.Input<String>? beginKey;
  /// The end value of the shard range(MD5), not included in shard range.
  final pulumi.Input<String>? endKey;
  /// The ID of the shard.
  final pulumi.Input<int>? id;
  /// Shard status, only two status of `readwrite` and `readonly`.
  final pulumi.Input<String>? status;

  /// Creates a new [StoreShard].
  /// [beginKey] The begin value of the shard range(MD5), included in the shard range.
  /// [endKey] The end value of the shard range(MD5), not included in shard range.
  /// [id] The ID of the shard.
  /// [status] Shard status, only two status of `readwrite` and `readonly`.
  StoreShard({
    this.beginKey,
    this.endKey,
    this.id,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beginKey': ?beginKey,
      'endKey': ?endKey,
      'id': ?id,
      'status': ?status,
    };
  }

  factory StoreShard.fromMap(Map<String, dynamic> map) {
    return StoreShard(
      beginKey: map['beginKey'] == null ? null : (map['beginKey']! as String).input(),
      endKey: map['endKey'] == null ? null : (map['endKey']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

