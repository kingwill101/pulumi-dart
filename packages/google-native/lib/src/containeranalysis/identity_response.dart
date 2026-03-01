// ignore_for_file: unused_element, unnecessary_cast

/// The unique identifier of the update.
class IdentityResponse {
  /// The revision number of the update.
  final int revision;

  /// The revision independent identifier of the update.
  final String updateId;

  /// Creates a new [IdentityResponse].
  /// [revision] The revision number of the update.
  /// [updateId] The revision independent identifier of the update.
  IdentityResponse({required this.revision, required this.updateId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'revision': revision, 'updateId': updateId};
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      revision: map['revision'] as int,
      updateId: map['updateId'] as String,
    );
  }
}
