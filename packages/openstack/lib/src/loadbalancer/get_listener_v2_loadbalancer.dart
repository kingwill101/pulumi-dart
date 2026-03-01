// ignore_for_file: unused_element, unnecessary_cast


class GetListenerV2Loadbalancer {
  final String id;

  /// Creates a new [GetListenerV2Loadbalancer].
  /// [id] Required.
  GetListenerV2Loadbalancer({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetListenerV2Loadbalancer.fromMap(Map<String, dynamic> map) {
    return GetListenerV2Loadbalancer(
      id: map['id'] as String,
    );
  }
}

