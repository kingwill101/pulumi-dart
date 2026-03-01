// ignore_for_file: unused_element, unnecessary_cast


/// The storage properties of the cluster. This includes the data storage size and scaling applied to servers in the cluster.
class StoragePropertiesResponse {
  /// The size of the data disk assigned to each server.
  final double? sizeGb;

  /// Creates a new [StoragePropertiesResponse].
  /// [sizeGb] The size of the data disk assigned to each server.
  StoragePropertiesResponse({
    this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeGb': ?sizeGb,
    };
  }

  factory StoragePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StoragePropertiesResponse(
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as double,
    );
  }
}

