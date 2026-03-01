// ignore_for_file: unused_element, unnecessary_cast


class HubEventHandlerAuth {
  /// Specify the identity ID of the target resource.
  ///
  /// > **Note:** `managed_identity_id` is required if the auth block is defined
  final String managedIdentityId;

  /// Creates a new [HubEventHandlerAuth].
  /// [managedIdentityId] Specify the identity ID of the target resource.
  HubEventHandlerAuth({
    required this.managedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedIdentityId': managedIdentityId,
    };
  }

  factory HubEventHandlerAuth.fromMap(Map<String, dynamic> map) {
    return HubEventHandlerAuth(
      managedIdentityId: map['managedIdentityId'] as String,
    );
  }
}

