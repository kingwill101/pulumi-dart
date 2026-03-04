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
  ListConnectedPartnerResourceResult({this.nextLink, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ConnectedPartnerResourcesListFormatResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory ListConnectedPartnerResourceResult.fromMap(Map<String, dynamic> map) {
    return ListConnectedPartnerResourceResult(
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<ConnectedPartnerResourcesListFormatResponse>(
          guardedValue,
          (value) => ConnectedPartnerResourcesListFormatResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
