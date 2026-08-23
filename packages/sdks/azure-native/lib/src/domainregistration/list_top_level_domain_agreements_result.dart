// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tld_legal_agreement_response.dart';

/// Result data returned by listTopLevelDomainAgreements.
class ListTopLevelDomainAgreementsResult {
  /// Link to next page of resources.
  final String nextLink;
  /// Collection of resources.
  final List<TldLegalAgreementResponse> value;

  /// Creates a new [ListTopLevelDomainAgreementsResult].
  /// [nextLink] Link to next page of resources.
  /// [value] Collection of resources.
  const ListTopLevelDomainAgreementsResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': pulumi.Input.encodeList<TldLegalAgreementResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListTopLevelDomainAgreementsResult.fromMap(Map<String, dynamic> map) {
    return ListTopLevelDomainAgreementsResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<TldLegalAgreementResponse>(map['value']!, (value) => TldLegalAgreementResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
