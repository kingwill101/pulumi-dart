// ignore_for_file: unused_element, unnecessary_cast


class GetLoadbalancerV2Listener {
  final String id;

  /// Creates a new [GetLoadbalancerV2Listener].
  /// [id] Required.
  GetLoadbalancerV2Listener({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetLoadbalancerV2Listener.fromMap(Map<String, dynamic> map) {
    return GetLoadbalancerV2Listener(
      id: map['id'] as String,
    );
  }
}

