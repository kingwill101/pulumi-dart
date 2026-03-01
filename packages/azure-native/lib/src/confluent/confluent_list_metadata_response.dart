// ignore_for_file: unused_element, unnecessary_cast


/// Metadata of the list
class ConfluentListMetadataResponse {
  /// First page of the list
  final String? first;
  /// Last page of the list
  final String? last;
  /// Next page of the list
  final String? next;
  /// Previous page of the list
  final String? prev;
  /// Total size of the list
  final int? totalSize;

  /// Creates a new [ConfluentListMetadataResponse].
  /// [first] First page of the list
  /// [last] Last page of the list
  /// [next] Next page of the list
  /// [prev] Previous page of the list
  /// [totalSize] Total size of the list
  ConfluentListMetadataResponse({
    this.first,
    this.last,
    this.next,
    this.prev,
    this.totalSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first': ?first,
      'last': ?last,
      'next': ?next,
      'prev': ?prev,
      'totalSize': ?totalSize,
    };
  }

  factory ConfluentListMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ConfluentListMetadataResponse(
      first: map['first'] == null ? null : map['first'] as String,
      last: map['last'] == null ? null : map['last'] as String,
      next: map['next'] == null ? null : map['next'] as String,
      prev: map['prev'] == null ? null : map['prev'] as String,
      totalSize: map['totalSize'] == null ? null : map['totalSize'] as int,
    );
  }
}

