// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Result data returned by listDnsResolverPolicyByVirtualNetwork.
class ListDnsResolverPolicyByVirtualNetworkResult {
  /// The continuation token for the next page of results.
  final String nextLink;
  /// Enumeration of the sub-resources.
  final List<SubResourceResponse>? value;

  /// Creates a new [ListDnsResolverPolicyByVirtualNetworkResult].
  /// [nextLink] The continuation token for the next page of results.
  /// [value] Enumeration of the sub-resources.
  ListDnsResolverPolicyByVirtualNetworkResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListDnsResolverPolicyByVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return ListDnsResolverPolicyByVirtualNetworkResult(
      nextLink: map['nextLink'] as String,
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

