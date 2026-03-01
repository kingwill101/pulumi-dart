// ignore_for_file: unused_element, unnecessary_cast


class StoreShard {
  /// The begin value of the shard range(MD5), included in the shard range.
  final String? beginKey;
  /// The end value of the shard range(MD5), not included in shard range.
  final String? endKey;
  /// The ID of the shard.
  final int? id;
  /// Shard status, only two status of `readwrite` and `readonly`.
  final String? status;

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
      beginKey: map['beginKey'] == null ? null : map['beginKey'] as String,
      endKey: map['endKey'] == null ? null : map['endKey'] as String,
      id: map['id'] == null ? null : map['id'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

