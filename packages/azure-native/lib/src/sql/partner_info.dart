// ignore_for_file: unused_element, unnecessary_cast


/// Partner server information for the failover group.
class PartnerInfo {
  /// Resource identifier of the partner server.
  final String id;

  /// Creates a new [PartnerInfo].
  /// [id] Resource identifier of the partner server.
  PartnerInfo({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PartnerInfo.fromMap(Map<String, dynamic> map) {
    return PartnerInfo(
      id: map['id'] as String,
    );
  }
}

