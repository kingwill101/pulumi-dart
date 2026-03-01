// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Result data returned by listDnsResolverByVirtualNetwork.
class ListDnsResolverByVirtualNetworkResult {
  /// The continuation token for the next page of results.
  final String nextLink;
  /// Enumeration of the sub-resources.
  final List<SubResourceResponse>? value;

  /// Creates a new [ListDnsResolverByVirtualNetworkResult].
  /// [nextLink] The continuation token for the next page of results.
  /// [value] Enumeration of the sub-resources.
  ListDnsResolverByVirtualNetworkResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListDnsResolverByVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return ListDnsResolverByVirtualNetworkResult(
      nextLink: map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['value'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

