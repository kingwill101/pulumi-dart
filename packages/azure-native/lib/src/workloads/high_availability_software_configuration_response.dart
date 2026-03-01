// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the HA software configuration.
class HighAvailabilitySoftwareConfigurationResponse {
  /// The fencing client id.
  final String fencingClientId;
  /// The fencing client id secret/password. The secret should never expire. This will be used pacemaker to start/stop the cluster VMs.
  final String fencingClientPassword;

  /// Creates a new [HighAvailabilitySoftwareConfigurationResponse].
  /// [fencingClientId] The fencing client id.
  /// [fencingClientPassword] The fencing client id secret/password. The secret should never expire. This will be used pacemaker to start/stop the cluster VMs.
  HighAvailabilitySoftwareConfigurationResponse({
    required this.fencingClientId,
    required this.fencingClientPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fencingClientId': fencingClientId,
      'fencingClientPassword': fencingClientPassword,
    };
  }

  factory HighAvailabilitySoftwareConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return HighAvailabilitySoftwareConfigurationResponse(
      fencingClientId: map['fencingClientId'] as String,
      fencingClientPassword: map['fencingClientPassword'] as String,
    );
  }
}

