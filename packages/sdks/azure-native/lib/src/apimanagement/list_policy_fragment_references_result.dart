// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_collection_response_value.dart';

/// Result data returned by listPolicyFragmentReferences.
class ListPolicyFragmentReferencesResult {
  /// Total record count number.
  final double? count;
  /// Next page link if any.
  final String? nextLink;
  /// A collection of resources.
  final List<ResourceCollectionResponseValue>? value;

  /// Creates a new [ListPolicyFragmentReferencesResult].
  /// [count] Total record count number.
  /// [nextLink] Next page link if any.
  /// [value] A collection of resources.
  ListPolicyFragmentReferencesResult({
    this.count,
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<ResourceCollectionResponseValue, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListPolicyFragmentReferencesResult.fromMap(Map<String, dynamic> map) {
    return ListPolicyFragmentReferencesResult(
      count: map['count'] == null ? null : map['count']! as double,
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<ResourceCollectionResponseValue>(map['value']!, (value) => ResourceCollectionResponseValue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

