// ignore_for_file: unused_element, unnecessary_cast

import 'enable_state.dart';

/// The lab security profile.
class SecurityProfile {
  /// Whether any user or only specified users can register to a lab.
  final EnableState? openAccess;

  /// Creates a new [SecurityProfile].
  /// [openAccess] Whether any user or only specified users can register to a lab.
  SecurityProfile({
    this.openAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAccess': ?openAccess == null ? null : openAccess!.value,
    };
  }

  factory SecurityProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfile(
      openAccess: map['openAccess'] == null ? null : EnableState.fromValue(map['openAccess'] as String),
    );
  }
}

