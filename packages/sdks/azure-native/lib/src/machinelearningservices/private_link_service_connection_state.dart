// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A collection of information about the state of the connection between service consumer and provider.
class PrivateLinkServiceConnectionState {
  /// Some RP chose "None". Other RPs use this for region expansion.
  final pulumi.Input<String?>? actionsRequired;
  /// User-defined message that, per NRP doc, may be used for approval-related message.
  final pulumi.Input<String?>? description;
  /// Connection status of the service consumer with the service provider\r\nPossible state transitions\r\nPending -&gt; Approved (Service provider approves the connection request)\r\nPending -&gt; Rejected (Service provider rejects the connection request)\r\nPending -&gt; Disconnected (Service provider deletes the connection)\r\nApproved -&gt; Rejected (Service provider rejects the approved connection)\r\nApproved -&gt; Disconnected (Service provider deletes the connection)\r\nRejected -&gt; Pending (Service consumer re-initiates the connection request that was rejected)\r\nRejected -&gt; Disconnected (Service provider deletes the connection)
  final pulumi.Input<dynamic>? status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionsRequired] Some RP chose "None". Other RPs use this for region expansion.
  /// [description] User-defined message that, per NRP doc, may be used for approval-related message.
  /// [status] Connection status of the service consumer with the service provider\r\nPossible state transitions\r\nPending -&gt; Approved (Service provider approves the connection request)\r\nPending -&gt; Rejected (Service provider rejects the connection request)\r\nPending -&gt; Disconnected (Service provider deletes the connection)\r\nApproved -&gt; Rejected (Service provider rejects the approved connection)\r\nApproved -&gt; Disconnected (Service provider deletes the connection)\r\nRejected -&gt; Pending (Service consumer re-initiates the connection request that was rejected)\r\nRejected -&gt; Disconnected (Service provider deletes the connection)
  const PrivateLinkServiceConnectionState({
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

  factory PrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionState(
      actionsRequired: (() { final guardedValue = map['actionsRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
