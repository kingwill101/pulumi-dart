// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata of the list
class ConfluentListMetadataResponse {
  /// First page of the list
  final pulumi.Input<String>? first;
  /// Last page of the list
  final pulumi.Input<String>? last;
  /// Next page of the list
  final pulumi.Input<String>? next;
  /// Previous page of the list
  final pulumi.Input<String>? prev;
  /// Total size of the list
  final pulumi.Input<int>? totalSize;

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
      first: map['first'] == null ? null : (map['first'] as String).input(),
      last: map['last'] == null ? null : (map['last'] as String).input(),
      next: map['next'] == null ? null : (map['next'] as String).input(),
      prev: map['prev'] == null ? null : (map['prev'] as String).input(),
      totalSize: map['totalSize'] == null ? null : (map['totalSize'] as int).input(),
    );
  }
}

