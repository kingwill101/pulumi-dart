// ignore_for_file: unused_element, unnecessary_cast


class InstanceEcsList {
  /// The ID of the ECS instance.
  final String? ecsId;

  /// Creates a new [InstanceEcsList].
  /// [ecsId] The ID of the ECS instance.
  InstanceEcsList({
    this.ecsId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecsId': ?ecsId,
    };
  }

  factory InstanceEcsList.fromMap(Map<String, dynamic> map) {
    return InstanceEcsList(
      ecsId: map['ecsId'] == null ? null : map['ecsId'] as String,
    );
  }
}

