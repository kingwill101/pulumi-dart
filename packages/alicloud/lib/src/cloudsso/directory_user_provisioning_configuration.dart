// ignore_for_file: unused_element, unnecessary_cast


class DirectoryUserProvisioningConfiguration {
  /// The duration of the Session after the user logs in.
  final String? defaultLandingPage;
  /// The duration of the Session after the user logs in.
  final String? sessionDuration;

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
      defaultLandingPage: map['defaultLandingPage'] == null ? null : map['defaultLandingPage'] as String,
      sessionDuration: map['sessionDuration'] == null ? null : map['sessionDuration'] as String,
    );
  }
}

