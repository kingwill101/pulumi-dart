// ignore_for_file: unused_element, unnecessary_cast

class BuildMetadataResponse {
  final String finishedOn;
  final String invocationId;
  final String startedOn;

  /// Creates a new [BuildMetadataResponse].
  /// [finishedOn] Required.
  /// [invocationId] Required.
  /// [startedOn] Required.
  BuildMetadataResponse({
    required this.finishedOn,
    required this.invocationId,
    required this.startedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finishedOn': finishedOn,
      'invocationId': invocationId,
      'startedOn': startedOn,
    };
  }

  factory BuildMetadataResponse.fromMap(Map<String, dynamic> map) {
    return BuildMetadataResponse(
      finishedOn: map['finishedOn'] as String,
      invocationId: map['invocationId'] as String,
      startedOn: map['startedOn'] as String,
    );
  }
}
