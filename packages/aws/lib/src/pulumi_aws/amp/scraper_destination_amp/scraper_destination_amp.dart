// ignore_for_file: unused_element, unnecessary_cast

class ScraperDestinationAmp {
  /// The Amazon Resource Name (ARN) of the prometheus workspace.
  final String workspaceArn;

  ScraperDestinationAmp({
    required this.workspaceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['workspaceArn'] = workspaceArn;
    return map;
  }

  factory ScraperDestinationAmp.fromMap(Map<String, dynamic> map) {
    return ScraperDestinationAmp(
      workspaceArn: map['workspaceArn'] as String,
    );
  }
}
