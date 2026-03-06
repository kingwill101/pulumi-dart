// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicNetwork resources.
class PublicNetworkState {
  /// Open or close the public connection. Value:
  final pulumi.Input<int>? enablePublicNetwork;
  /// Engine type, value:
  final pulumi.Input<String>? engineType;
  /// Instance ID
  final pulumi.Input<String>? instanceId;
  /// Instance status, returns:_EXPANDING`: Capacity-based cloud storage is being expanded._version_transing`: The minor version is being upgraded._CHANGING`: The specification is being upgraded or downgraded._SWITCHING`:SSL is being changed._OPENING`: The data subscription function is being activated._TRANSFER`: migrates data to the database._CREATING`: in the production disaster recovery instance._RECOVERING`: The backup is being restored._IMPORTING`: Data is being imported._MODIFYING`: The network is being changed._SWITCHING`: The internal network and the external network are being switched._CREATING`: creates a network link._DELETING`: deletes a network link.
  final pulumi.Input<String>? status;

  /// Creates a new [PublicNetworkState].
  /// [enablePublicNetwork] Open or close the public connection. Value:
  /// [engineType] Engine type, value:
  /// [instanceId] Instance ID
  /// [status] Instance status, returns:_EXPANDING`: Capacity-based cloud storage is being expanded._version_transing`: The minor version is being upgraded._CHANGING`: The specification is being upgraded or downgraded._SWITCHING`:SSL is being changed._OPENING`: The data subscription function is being activated._TRANSFER`: migrates data to the database._CREATING`: in the production disaster recovery instance._RECOVERING`: The backup is being restored._IMPORTING`: Data is being imported._MODIFYING`: The network is being changed._SWITCHING`: The internal network and the external network are being switched._CREATING`: creates a network link._DELETING`: deletes a network link.
  const PublicNetworkState({
    this.enablePublicNetwork,
    this.engineType,
    this.instanceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePublicNetwork': ?enablePublicNetwork,
      'engineType': ?engineType,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory PublicNetworkState.fromMap(Map<String, dynamic> map) {
    return PublicNetworkState(
      enablePublicNetwork: (() { final guardedValue = map['enablePublicNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

