// ignore_for_file: unused_element, unnecessary_cast

/// The unique identifier of the update.
class IdentityResponse {
  /// The revision number of the update.
  final int revision;

  /// The revision independent identifier of the update.
  final String updateId;

  IdentityResponse({
    required this.revision,
    required this.updateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['revision'] = revision;
    map['updateId'] = updateId;
    return map;
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      revision: map['revision'] as int,
      updateId: map['updateId'] as String,
    );
  }
}
