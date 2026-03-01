// ignore_for_file: unused_element, unnecessary_cast


class GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType {
  final String placeHolder;

  /// Creates a new [GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType].
  /// [placeHolder] Required.
  GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType({
    required this.placeHolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placeHolder': placeHolder,
    };
  }

  factory GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType(
      placeHolder: map['placeHolder'] as String,
    );
  }
}

