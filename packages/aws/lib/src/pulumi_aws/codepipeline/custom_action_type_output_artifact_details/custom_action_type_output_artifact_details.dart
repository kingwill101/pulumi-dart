// ignore_for_file: unused_element, unnecessary_cast

class CustomActionTypeOutputArtifactDetails {
  /// The maximum number of artifacts allowed for the action type. Min: 0, Max: 5
  final int maximumCount;

  /// The minimum number of artifacts allowed for the action type. Min: 0, Max: 5
  final int minimumCount;

  CustomActionTypeOutputArtifactDetails({
    required this.maximumCount,
    required this.minimumCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maximumCount'] = maximumCount;
    map['minimumCount'] = minimumCount;
    return map;
  }

  factory CustomActionTypeOutputArtifactDetails.fromMap(
      Map<String, dynamic> map) {
    return CustomActionTypeOutputArtifactDetails(
      maximumCount: map['maximumCount'] as int,
      minimumCount: map['minimumCount'] as int,
    );
  }
}
