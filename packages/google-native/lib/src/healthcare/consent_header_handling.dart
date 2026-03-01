// ignore_for_file: unused_element, unnecessary_cast

import 'consent_header_handling_profile.dart';

/// How the server handles the consent header.
class ConsentHeaderHandling {
  /// Optional. Specifies the default server behavior when the header is empty. If not specified, the `ScopeProfile.PERMIT_EMPTY_SCOPE` option is used.
  final ConsentHeaderHandlingProfile? profile;

  /// Creates a new [ConsentHeaderHandling].
  /// [profile] Optional. Specifies the default server behavior when the header is empty. If not specified, the `ScopeProfile.PERMIT_EMPTY_SCOPE` option is used.
  ConsentHeaderHandling({this.profile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profile': ?profile == null ? null : profile!.value,
    };
  }

  factory ConsentHeaderHandling.fromMap(Map<String, dynamic> map) {
    return ConsentHeaderHandling(
      profile: map['profile'] == null
          ? null
          : ConsentHeaderHandlingProfile.fromValue(map['profile'] as String),
    );
  }
}
