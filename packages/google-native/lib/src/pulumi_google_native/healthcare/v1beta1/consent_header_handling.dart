// ignore_for_file: unused_element, unnecessary_cast

import 'consent_header_handling_profile.dart';

/// How the server handles the consent header.
class ConsentHeaderHandling {
  /// Optional. Specifies the default server behavior when the header is empty. If not specified, the `ScopeProfile.PERMIT_EMPTY_SCOPE` option is used.
  final ConsentHeaderHandlingProfile? profile;

  ConsentHeaderHandling({
    this.profile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final profileValue = profile;
    if (profileValue != null) {
      map['profile'] = profileValue.value;
    }
    return map;
  }

  factory ConsentHeaderHandling.fromMap(Map<String, dynamic> map) {
    return ConsentHeaderHandling(
      profile: map['profile'] == null
          ? null
          : ConsentHeaderHandlingProfile.fromValue(map['profile'] as String),
    );
  }
}
