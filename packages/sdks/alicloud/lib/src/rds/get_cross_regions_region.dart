// ignore_for_file: unused_element, unnecessary_cast


class GetCrossRegionsRegion {
  /// ID of the region.
  final String id;

  /// Creates a new [GetCrossRegionsRegion].
  /// [id] ID of the region.
  GetCrossRegionsRegion({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetCrossRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetCrossRegionsRegion(
      id: map['id'] as String,
    );
  }
}

