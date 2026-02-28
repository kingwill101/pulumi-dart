// ignore_for_file: unused_element, unnecessary_cast

class BuildMetadataResponseContaineranalysisV1beta1 {
  final String finishedOn;
  final String invocationId;
  final String startedOn;

  /// Creates a new [BuildMetadataResponseContaineranalysisV1beta1].
  /// [finishedOn] Required.
  /// [invocationId] Required.
  /// [startedOn] Required.
  BuildMetadataResponseContaineranalysisV1beta1({
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

  factory BuildMetadataResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return BuildMetadataResponseContaineranalysisV1beta1(
      finishedOn: map['finishedOn'] as String,
      invocationId: map['invocationId'] as String,
      startedOn: map['startedOn'] as String,
    );
  }
}
