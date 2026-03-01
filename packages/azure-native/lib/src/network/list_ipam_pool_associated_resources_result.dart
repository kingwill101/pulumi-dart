// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_association_response.dart';

/// Result data returned by listIpamPoolAssociatedResources.
class ListIpamPoolAssociatedResourcesResult {
  /// The link used to get the next page of operations.
  final String? nextLink;
  final List<PoolAssociationResponse>? value;

  /// Creates a new [ListIpamPoolAssociatedResourcesResult].
  /// [nextLink] The link used to get the next page of operations.
  /// [value] Optional.
  ListIpamPoolAssociatedResourcesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<PoolAssociationResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListIpamPoolAssociatedResourcesResult.fromMap(Map<String, dynamic> map) {
    return ListIpamPoolAssociatedResourcesResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<PoolAssociationResponse>(map['value'], (value) => PoolAssociationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

