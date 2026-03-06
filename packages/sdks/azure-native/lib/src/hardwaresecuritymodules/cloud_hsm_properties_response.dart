// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Cloud HSM Properties
class CloudHsmPropertiesResponse {
  /// FQDN of the Cloud HSM
  final pulumi.Input<String>? fqdn;
  /// The Cloud HSM State. Values are: Deploying, ConfiguringSlb, Starting, Starting, Failed, Failed, Deleting, DeletingSlbEntry, InitialProvisioning, Updating
  final pulumi.Input<String>? state;
  /// The Cloud HSM State message
  final pulumi.Input<String>? stateMessage;

  /// Creates a new [CloudHsmPropertiesResponse].
  /// [fqdn] FQDN of the Cloud HSM
  /// [state] The Cloud HSM State. Values are: Deploying, ConfiguringSlb, Starting, Starting, Failed, Failed, Deleting, DeletingSlbEntry, InitialProvisioning, Updating
  /// [stateMessage] The Cloud HSM State message
  const CloudHsmPropertiesResponse({
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
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

