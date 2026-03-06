// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryUserProvisioningConfiguration {
  /// The duration of the Session after the user logs in.
  final pulumi.Input<String>? defaultLandingPage;
  /// The duration of the Session after the user logs in.
  final pulumi.Input<String>? sessionDuration;

  /// Creates a new [DirectoryUserProvisioningConfiguration].
  /// [defaultLandingPage] The duration of the Session after the user logs in.
  /// [sessionDuration] The duration of the Session after the user logs in.
  const DirectoryUserProvisioningConfiguration({
    this.defaultLandingPage,
    this.sessionDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLandingPage': ?defaultLandingPage,
      'sessionDuration': ?sessionDuration,
    };
  }

  factory DirectoryUserProvisioningConfiguration.fromMap(Map<String, dynamic> map) {
    return DirectoryUserProvisioningConfiguration(
      defaultLandingPage: (() { final guardedValue = map['defaultLandingPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

