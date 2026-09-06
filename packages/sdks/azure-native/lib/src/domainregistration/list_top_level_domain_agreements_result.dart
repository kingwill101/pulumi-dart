// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tld_legal_agreement_response.dart';

/// Result data returned by listTopLevelDomainAgreements.
class ListTopLevelDomainAgreementsResult {
  /// Link to next page of resources.
  final String? nextLink;
  /// Collection of resources.
  final List<TldLegalAgreementResponse>? value;

  /// Creates a new [ListTopLevelDomainAgreementsResult].
  /// [nextLink] Link to next page of resources.
  /// [value] Collection of resources.
  const ListTopLevelDomainAgreementsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<TldLegalAgreementResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListTopLevelDomainAgreementsResult.fromMap(Map<String, dynamic> map) {
    return ListTopLevelDomainAgreementsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TldLegalAgreementResponse>(guardedValue, (value) => TldLegalAgreementResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
