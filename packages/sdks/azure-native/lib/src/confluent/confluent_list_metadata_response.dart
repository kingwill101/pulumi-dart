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
  const ConfluentListMetadataResponse({
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
      first: (() { final guardedValue = map['first']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      last: (() { final guardedValue = map['last']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      next: (() { final guardedValue = map['next']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prev: (() { final guardedValue = map['prev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalSize: (() { final guardedValue = map['totalSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
