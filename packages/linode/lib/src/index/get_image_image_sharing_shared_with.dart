// ignore_for_file: unused_element, unnecessary_cast


class GetImageImageSharingSharedWith {
  /// The number of sharegroups the private image is present in.
  final int sharegroupCount;
  /// The GET api url to view the sharegroups in which the image is shared.
  final String sharegroupListUrl;

  /// Creates a new [GetImageImageSharingSharedWith].
  /// [sharegroupCount] The number of sharegroups the private image is present in.
  /// [sharegroupListUrl] The GET api url to view the sharegroups in which the image is shared.
  GetImageImageSharingSharedWith({
    required this.sharegroupCount,
    required this.sharegroupListUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharegroupCount': sharegroupCount,
      'sharegroupListUrl': sharegroupListUrl,
    };
  }

  factory GetImageImageSharingSharedWith.fromMap(Map<String, dynamic> map) {
    return GetImageImageSharingSharedWith(
      sharegroupCount: map['sharegroupCount'] as int,
      sharegroupListUrl: map['sharegroupListUrl'] as String,
    );
  }
}

