// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The connection state.
class RegistryPrivateLinkServiceConnectionState {
  /// Some RP chose "None". Other RPs use this for region expansion.
  final pulumi.Input<String>? actionsRequired;
  /// User-defined message that, per NRP doc, may be used for approval-related message.
  final pulumi.Input<String>? description;
  /// Connection status of the service consumer with the service provider
  final pulumi.Input<String>? status;

  /// Creates a new [RegistryPrivateLinkServiceConnectionState].
  /// [actionsRequired] Some RP chose "None". Other RPs use this for region expansion.
  /// [description] User-defined message that, per NRP doc, may be used for approval-related message.
  /// [status] Connection status of the service consumer with the service provider
  RegistryPrivateLinkServiceConnectionState({
    this.actionsRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory RegistryPrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return RegistryPrivateLinkServiceConnectionState(
      actionsRequired: (() { final guardedValue = map['actionsRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

