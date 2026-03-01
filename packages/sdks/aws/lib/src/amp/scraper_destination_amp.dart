// ignore_for_file: unused_element, unnecessary_cast


class ScraperDestinationAmp {
  /// The Amazon Resource Name (ARN) of the prometheus workspace.
  final String workspaceArn;

  /// Creates a new [ScraperDestinationAmp].
  /// [workspaceArn] The Amazon Resource Name (ARN) of the prometheus workspace.
  ScraperDestinationAmp({
    required this.workspaceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workspaceArn': workspaceArn,
    };
  }

  factory ScraperDestinationAmp.fromMap(Map<String, dynamic> map) {
    return ScraperDestinationAmp(
      workspaceArn: map['workspaceArn'] as String,
    );
  }
}

