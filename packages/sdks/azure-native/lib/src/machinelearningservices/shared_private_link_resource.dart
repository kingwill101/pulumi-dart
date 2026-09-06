// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SharedPrivateLinkResource {
  /// group id of the private link
  final pulumi.Input<String?>? groupId;
  /// Unique name of the private link
  final pulumi.Input<String?>? name;
  /// the resource id that private link links to
  final pulumi.Input<String?>? privateLinkResourceId;
  /// Request message
  final pulumi.Input<String?>? requestMessage;
  /// Connection status of the service consumer with the service provider\r\nPossible state transitions\r\nPending -&gt; Approved (Service provider approves the connection request)\r\nPending -&gt; Rejected (Service provider rejects the connection request)\r\nPending -&gt; Disconnected (Service provider deletes the connection)\r\nApproved -&gt; Rejected (Service provider rejects the approved connection)\r\nApproved -&gt; Disconnected (Service provider deletes the connection)\r\nRejected -&gt; Pending (Service consumer re-initiates the connection request that was rejected)\r\nRejected -&gt; Disconnected (Service provider deletes the connection)
  final pulumi.Input<dynamic>? status;

  /// Creates a new [SharedPrivateLinkResource].
  /// [groupId] group id of the private link
  /// [name] Unique name of the private link
  /// [privateLinkResourceId] the resource id that private link links to
  /// [requestMessage] Request message
  /// [status] Connection status of the service consumer with the service provider\r\nPossible state transitions\r\nPending -&gt; Approved (Service provider approves the connection request)\r\nPending -&gt; Rejected (Service provider rejects the connection request)\r\nPending -&gt; Disconnected (Service provider deletes the connection)\r\nApproved -&gt; Rejected (Service provider rejects the approved connection)\r\nApproved -&gt; Disconnected (Service provider deletes the connection)\r\nRejected -&gt; Pending (Service consumer re-initiates the connection request that was rejected)\r\nRejected -&gt; Disconnected (Service provider deletes the connection)
  const SharedPrivateLinkResource({
    this.groupId,
    this.name,
    this.privateLinkResourceId,
    this.requestMessage,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'name': ?name,
      'privateLinkResourceId': ?privateLinkResourceId,
      'requestMessage': ?requestMessage,
      'status': ?status,
    };
  }

  factory SharedPrivateLinkResource.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResource(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
