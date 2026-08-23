// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_collection_response_value.dart';

/// Result data returned by listWorkspacePolicyFragmentReferences.
class ListWorkspacePolicyFragmentReferencesResult {
  /// Total record count number.
  final double? count;
  /// Next page link if any.
  final String? nextLink;
  /// A collection of resources.
  final List<ResourceCollectionResponseValue>? value;

  /// Creates a new [ListWorkspacePolicyFragmentReferencesResult].
  /// [count] Total record count number.
  /// [nextLink] Next page link if any.
  /// [value] A collection of resources.
  const ListWorkspacePolicyFragmentReferencesResult({
    this.count,
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceCollectionResponseValue, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListWorkspacePolicyFragmentReferencesResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspacePolicyFragmentReferencesResult(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return guardedValue as double; })(),
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceCollectionResponseValue>(guardedValue, (value) => ResourceCollectionResponseValue.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
