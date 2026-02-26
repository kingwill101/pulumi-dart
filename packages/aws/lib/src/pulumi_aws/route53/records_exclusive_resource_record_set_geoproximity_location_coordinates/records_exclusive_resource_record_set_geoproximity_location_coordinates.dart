// ignore_for_file: unused_element, unnecessary_cast

class RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates {
  /// A coordinate of the north–south position of a geographic point on the surface of the Earth (`-90` - <span pulumi-lang-nodejs="`90`" pulumi-lang-dotnet="`90`" pulumi-lang-go="`90`" pulumi-lang-python="`90`" pulumi-lang-yaml="`90`" pulumi-lang-java="`90`">`90`</span>).
  final String latitude;

  /// A coordinate of the east–west position of a geographic point on the surface of the Earth (`-180` - <span pulumi-lang-nodejs="`180`" pulumi-lang-dotnet="`180`" pulumi-lang-go="`180`" pulumi-lang-python="`180`" pulumi-lang-yaml="`180`" pulumi-lang-java="`180`">`180`</span>).
  final String longitude;

  RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

  factory RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates.fromMap(
      Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates(
      latitude: map['latitude'] as String,
      longitude: map['longitude'] as String,
    );
  }
}
