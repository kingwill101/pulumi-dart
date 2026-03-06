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
  const StoreShard({
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
      beginKey: (() { final guardedValue = map['beginKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endKey: (() { final guardedValue = map['endKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

