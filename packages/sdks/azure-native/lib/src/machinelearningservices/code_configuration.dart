// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a scoring code asset.
class CodeConfiguration {
  /// ARM resource ID of the code asset.
  final pulumi.Input<String>? codeId;
  /// [Required] The script to execute on startup. eg. "score.py"
  final pulumi.Input<String> scoringScript;

  /// Creates a new [CodeConfiguration].
  /// [codeId] ARM resource ID of the code asset.
  /// [scoringScript] [Required] The script to execute on startup. eg. "score.py"
  CodeConfiguration({
    this.codeId,
    required this.scoringScript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeId': ?codeId,
      'scoringScript': scoringScript,
    };
  }

  factory CodeConfiguration.fromMap(Map<String, dynamic> map) {
    return CodeConfiguration(
      codeId: (() { final guardedValue = map['codeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scoringScript: pulumi.Input.fromValue(map['scoringScript'] as String),
    );
  }
}

