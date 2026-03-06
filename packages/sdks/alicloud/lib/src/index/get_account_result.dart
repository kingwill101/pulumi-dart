// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccount.
class GetAccountResult {
  /// Account ID (e.g. "1239306421830812"). It can be used to construct an ARN.
  final String id;

  /// Creates a new [GetAccountResult].
  /// [id] Account ID (e.g. "1239306421830812"). It can be used to construct an ARN.
  const GetAccountResult({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      id: map['id'] as String,
    );
  }
}

