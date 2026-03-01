// ignore_for_file: unused_element, unnecessary_cast


class GetTagsTag {
  /// A count of the database clusters that the tag is applied to.
  final int databasesCount;
  /// A count of the Droplets the tag is applied to.
  final int dropletsCount;
  /// A count of the images that the tag is applied to.
  final int imagesCount;
  /// The name of the tag.
  final String name;
  /// A count of the total number of resources that the tag is applied to.
  final int totalResourceCount;
  /// A count of the volume snapshots that the tag is applied to.
  final int volumeSnapshotsCount;
  /// A count of the volumes that the tag is applied to.
  final int volumesCount;

  /// Creates a new [GetTagsTag].
  /// [databasesCount] A count of the database clusters that the tag is applied to.
  /// [dropletsCount] A count of the Droplets the tag is applied to.
  /// [imagesCount] A count of the images that the tag is applied to.
  /// [name] The name of the tag.
  /// [totalResourceCount] A count of the total number of resources that the tag is applied to.
  /// [volumeSnapshotsCount] A count of the volume snapshots that the tag is applied to.
  /// [volumesCount] A count of the volumes that the tag is applied to.
  GetTagsTag({
    required this.databasesCount,
    required this.dropletsCount,
    required this.imagesCount,
    required this.name,
    required this.totalResourceCount,
    required this.volumeSnapshotsCount,
    required this.volumesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasesCount': databasesCount,
      'dropletsCount': dropletsCount,
      'imagesCount': imagesCount,
      'name': name,
      'totalResourceCount': totalResourceCount,
      'volumeSnapshotsCount': volumeSnapshotsCount,
      'volumesCount': volumesCount,
    };
  }

  factory GetTagsTag.fromMap(Map<String, dynamic> map) {
    return GetTagsTag(
      databasesCount: map['databasesCount'] as int,
      dropletsCount: map['dropletsCount'] as int,
      imagesCount: map['imagesCount'] as int,
      name: map['name'] as String,
      totalResourceCount: map['totalResourceCount'] as int,
      volumeSnapshotsCount: map['volumeSnapshotsCount'] as int,
      volumesCount: map['volumesCount'] as int,
    );
  }
}

