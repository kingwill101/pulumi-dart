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
  DirectoryUserProvisioningConfiguration({
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
      defaultLandingPage: map['defaultLandingPage'] == null ? null : (map['defaultLandingPage'] as String).input(),
      sessionDuration: map['sessionDuration'] == null ? null : (map['sessionDuration'] as String).input(),
    );
  }
}

