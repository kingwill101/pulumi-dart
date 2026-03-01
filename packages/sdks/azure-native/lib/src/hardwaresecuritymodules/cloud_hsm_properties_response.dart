// ignore_for_file: unused_element, unnecessary_cast


/// The Cloud HSM Properties
class CloudHsmPropertiesResponse {
  /// FQDN of the Cloud HSM
  final String? fqdn;
  /// The Cloud HSM State. Values are: Deploying, ConfiguringSlb, Starting, Starting, Failed, Failed, Deleting, DeletingSlbEntry, InitialProvisioning, Updating
  final String? state;
  /// The Cloud HSM State message
  final String? stateMessage;

  /// Creates a new [CloudHsmPropertiesResponse].
  /// [fqdn] FQDN of the Cloud HSM
  /// [state] The Cloud HSM State. Values are: Deploying, ConfiguringSlb, Starting, Starting, Failed, Failed, Deleting, DeletingSlbEntry, InitialProvisioning, Updating
  /// [stateMessage] The Cloud HSM State message
  CloudHsmPropertiesResponse({
    this.fqdn,
    this.state,
    this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'state': ?state,
      'stateMessage': ?stateMessage,
    };
  }

  factory CloudHsmPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CloudHsmPropertiesResponse(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      stateMessage: map['stateMessage'] == null ? null : map['stateMessage'] as String,
    );
  }
}

