// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecVpc {
  /// The ID of the dedicated egress IP.
  final String id;

  /// Creates a new [GetAppSpecVpc].
  /// [id] The ID of the dedicated egress IP.
  GetAppSpecVpc({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetAppSpecVpc.fromMap(Map<String, dynamic> map) {
    return GetAppSpecVpc(
      id: map['id'] as String,
    );
  }
}

