// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enable_state.dart';

/// The lab security profile.
class SecurityProfile {
  /// Whether any user or only specified users can register to a lab.
  final pulumi.Input<EnableState>? openAccess;

  /// Creates a new [SecurityProfile].
  /// [openAccess] Whether any user or only specified users can register to a lab.
  SecurityProfile({
    this.openAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAccess': ?pulumi.Input.mapOptionalInputValue<EnableState, String>(openAccess, (value) => value.value),
    };
  }

  factory SecurityProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfile(
      openAccess: map['openAccess'] == null ? null : (EnableState.fromValue(map['openAccess'] as String)).input(),
    );
  }
}

