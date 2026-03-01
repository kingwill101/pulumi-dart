// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint.dart';
import 'private_link_connection_state.dart';

/// A request to approve or reject a private endpoint connection
class PrivateLinkConnectionApprovalRequest {
  /// The resource of private endpoint.
  final PrivateEndpoint? privateEndpoint;
  /// The state of a private link connection
  final PrivateLinkConnectionState? privateLinkServiceConnectionState;

  /// Creates a new [PrivateLinkConnectionApprovalRequest].
  /// [privateEndpoint] The resource of private endpoint.
  /// [privateLinkServiceConnectionState] The state of a private link connection
  PrivateLinkConnectionApprovalRequest({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
    };
  }

  factory PrivateLinkConnectionApprovalRequest.fromMap(Map<String, dynamic> map) {
    return PrivateLinkConnectionApprovalRequest(
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

