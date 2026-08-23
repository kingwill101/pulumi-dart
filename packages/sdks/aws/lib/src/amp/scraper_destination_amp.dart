// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScraperDestinationAmp {
  /// ARN of the prometheus workspace.
  final pulumi.Input<String> workspaceArn;

  /// Creates a new [ScraperDestinationAmp].
  /// [workspaceArn] ARN of the prometheus workspace.
  const ScraperDestinationAmp({
    required this.workspaceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workspaceArn': workspaceArn,
    };
  }

  factory ScraperDestinationAmp.fromMap(Map<String, dynamic> map) {
    return ScraperDestinationAmp(
      workspaceArn: pulumi.Input.fromValue(map['workspaceArn'] as String),
    );
  }
}
