// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceEcsList {
  /// The ID of the ECS instance.
  final String ecsId;

  /// Creates a new [GetInstancesInstanceEcsList].
  /// [ecsId] The ID of the ECS instance.
  GetInstancesInstanceEcsList({
    required this.ecsId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecsId': ecsId,
    };
  }

  factory GetInstancesInstanceEcsList.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceEcsList(
      ecsId: map['ecsId'] as String,
    );
  }
}

