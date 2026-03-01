// ignore_for_file: unused_element, unnecessary_cast


/// A class that contains database statistics information.
class DatabaseStatisticsResponse {
  /// The database size - the total size of compressed data and index in bytes.
  final double? size;

  /// Creates a new [DatabaseStatisticsResponse].
  /// [size] The database size - the total size of compressed data and index in bytes.
  DatabaseStatisticsResponse({
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
    };
  }

  factory DatabaseStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseStatisticsResponse(
      size: map['size'] == null ? null : map['size'] as double,
    );
  }
}

