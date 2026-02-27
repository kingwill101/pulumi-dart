// ignore_for_file: unused_element, unnecessary_cast

class BuildMetadataResponseContaineranalysisV1alpha1 {
  final String finishedOn;
  final String invocationId;
  final String startedOn;

  BuildMetadataResponseContaineranalysisV1alpha1({
    required this.finishedOn,
    required this.invocationId,
    required this.startedOn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['finishedOn'] = finishedOn;
    map['invocationId'] = invocationId;
    map['startedOn'] = startedOn;
    return map;
  }

  factory BuildMetadataResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return BuildMetadataResponseContaineranalysisV1alpha1(
      finishedOn: map['finishedOn'] as String,
      invocationId: map['invocationId'] as String,
      startedOn: map['startedOn'] as String,
    );
  }
}
