// ignore_for_file: unused_element, unnecessary_cast

import 'custom_domain_state.dart';

/// Custom domain information.
class CustomDomain {
  /// Domain name.
  final String? domain;

  /// Domain state.
  final CustomDomainState? state;

  CustomDomain({
    this.domain,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    return map;
  }

  factory CustomDomain.fromMap(Map<String, dynamic> map) {
    return CustomDomain(
      domain: map['domain'] == null ? null : map['domain'] as String,
      state: map['state'] == null
          ? null
          : CustomDomainState.fromValue(map['state'] as String),
    );
  }
}
