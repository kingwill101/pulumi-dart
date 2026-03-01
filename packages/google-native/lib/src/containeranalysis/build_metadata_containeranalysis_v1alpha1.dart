// ignore_for_file: unused_element, unnecessary_cast

class BuildMetadataContaineranalysisV1alpha1 {
  final String? finishedOn;
  final String? invocationId;
  final String? startedOn;

  /// Creates a new [BuildMetadataContaineranalysisV1alpha1].
  /// [finishedOn] Optional.
  /// [invocationId] Optional.
  /// [startedOn] Optional.
  BuildMetadataContaineranalysisV1alpha1({
    this.finishedOn,
    this.invocationId,
    this.startedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finishedOn': ?finishedOn,
      'invocationId': ?invocationId,
      'startedOn': ?startedOn,
    };
  }

  factory BuildMetadataContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return BuildMetadataContaineranalysisV1alpha1(
      finishedOn: map['finishedOn'] == null
          ? null
          : map['finishedOn'] as String,
      invocationId: map['invocationId'] == null
          ? null
          : map['invocationId'] as String,
      startedOn: map['startedOn'] == null ? null : map['startedOn'] as String,
    );
  }
}
