// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_shareable_link_response.dart';

/// Result data returned by getBastionShareableLink.
class GetBastionShareableLinkResult {
  /// The URL to get the next set of results.
  final String? nextLink;
  /// List of Bastion Shareable Links for the request.
  final List<BastionShareableLinkResponse>? value;

  /// Creates a new [GetBastionShareableLinkResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] List of Bastion Shareable Links for the request.
  GetBastionShareableLinkResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<BastionShareableLinkResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory GetBastionShareableLinkResult.fromMap(Map<String, dynamic> map) {
    return GetBastionShareableLinkResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<BastionShareableLinkResponse>(map['value'], (value) => BastionShareableLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

