// ignore_for_file: unused_element, unnecessary_cast

class BuildMetadataContaineranalysisV1beta1 {
  final String? finishedOn;
  final String? invocationId;
  final String? startedOn;

  BuildMetadataContaineranalysisV1beta1({
    this.finishedOn,
    this.invocationId,
    this.startedOn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final finishedOnValue = finishedOn;
    if (finishedOnValue != null) {
      map['finishedOn'] = finishedOnValue;
    }
    final invocationIdValue = invocationId;
    if (invocationIdValue != null) {
      map['invocationId'] = invocationIdValue;
    }
    final startedOnValue = startedOn;
    if (startedOnValue != null) {
      map['startedOn'] = startedOnValue;
    }
    return map;
  }

  factory BuildMetadataContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return BuildMetadataContaineranalysisV1beta1(
      finishedOn:
          map['finishedOn'] == null ? null : map['finishedOn'] as String,
      invocationId:
          map['invocationId'] == null ? null : map['invocationId'] as String,
      startedOn: map['startedOn'] == null ? null : map['startedOn'] as String,
    );
  }
}
