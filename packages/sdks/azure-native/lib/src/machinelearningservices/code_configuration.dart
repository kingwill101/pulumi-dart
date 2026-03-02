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
      codeId: map['codeId'] == null ? null : (map['codeId']! as String).input(),
      scoringScript: (map['scoringScript'] as String).input(),
    );
  }
}

