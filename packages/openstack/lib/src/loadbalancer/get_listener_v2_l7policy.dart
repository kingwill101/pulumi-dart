// ignore_for_file: unused_element, unnecessary_cast


class GetListenerV2L7policy {
  final String id;

  /// Creates a new [GetListenerV2L7policy].
  /// [id] Required.
  GetListenerV2L7policy({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetListenerV2L7policy.fromMap(Map<String, dynamic> map) {
    return GetListenerV2L7policy(
      id: map['id'] as String,
    );
  }
}

