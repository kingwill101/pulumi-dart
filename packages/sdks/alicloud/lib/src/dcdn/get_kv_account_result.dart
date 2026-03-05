// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKvAccount.
class GetKvAccountResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The current kv account enable status.
  final String status;

  /// Creates a new [GetKvAccountResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [status] The current kv account enable status.
  GetKvAccountResult({required this.id, required this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'status': status};
  }

  factory GetKvAccountResult.fromMap(Map<String, dynamic> map) {
    return GetKvAccountResult(
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}
