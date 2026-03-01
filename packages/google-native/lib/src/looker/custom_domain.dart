// ignore_for_file: unused_element, unnecessary_cast

import 'custom_domain_state.dart';

/// Custom domain information.
class CustomDomain {
  /// Domain name.
  final String? domain;

  /// Domain state.
  final CustomDomainState? state;

  /// Creates a new [CustomDomain].
  /// [domain] Domain name.
  /// [state] Domain state.
  CustomDomain({this.domain, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'state': ?state == null ? null : state!.value,
    };
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
