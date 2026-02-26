// ignore_for_file: unused_element, unnecessary_cast

class BuildMetadataResponse3 {
  final String finishedOn;
  final String invocationId;
  final String startedOn;

  BuildMetadataResponse3({
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

  factory BuildMetadataResponse3.fromMap(Map<String, dynamic> map) {
    return BuildMetadataResponse3(
      finishedOn: map['finishedOn'] as String,
      invocationId: map['invocationId'] as String,
      startedOn: map['startedOn'] as String,
    );
  }
}
