// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint.dart';
import 'private_link_connection_state.dart';

/// A request to approve or reject a private endpoint connection
class PrivateLinkConnectionApprovalRequest {
  /// The resource of private endpoint.
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;
  /// The state of a private link connection
  final pulumi.Input<PrivateLinkConnectionState>? privateLinkServiceConnectionState;

  /// Creates a new [PrivateLinkConnectionApprovalRequest].
  /// [privateEndpoint] The resource of private endpoint.
  /// [privateLinkServiceConnectionState] The state of a private link connection
  PrivateLinkConnectionApprovalRequest({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateLinkConnectionApprovalRequest.fromMap(Map<String, dynamic> map) {
    return PrivateLinkConnectionApprovalRequest(
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpoint.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

