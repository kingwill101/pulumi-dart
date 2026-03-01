// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_partner_resources_list_format_response.dart';

/// Result data returned by listConnectedPartnerResource.
class ListConnectedPartnerResourceResult {
  /// Link to the next set of results, if any.
  final String? nextLink;
  /// Results of a list operation.
  final List<ConnectedPartnerResourcesListFormatResponse>? value;

  /// Creates a new [ListConnectedPartnerResourceResult].
  /// [nextLink] Link to the next set of results, if any.
  /// [value] Results of a list operation.
  ListConnectedPartnerResourceResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<ConnectedPartnerResourcesListFormatResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListConnectedPartnerResourceResult.fromMap(Map<String, dynamic> map) {
    return ListConnectedPartnerResourceResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<ConnectedPartnerResourcesListFormatResponse>(map['value'], (value) => ConnectedPartnerResourcesListFormatResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

