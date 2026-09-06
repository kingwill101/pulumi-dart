// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Antivirus scanning rules for replicating data. By default, all antivirus scanning solutions are disabled.
class AntivirusRulesetResponse {
  /// Optional. The list of antiviruses to be used as a scanning solution for replicating data.
  final pulumi.Input<List<String>?>? avSolutions;

  /// Creates a new [AntivirusRulesetResponse].
  /// [avSolutions] Optional. The list of antiviruses to be used as a scanning solution for replicating data.
  const AntivirusRulesetResponse({
    this.avSolutions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avSolutions': ?avSolutions,
    };
  }

  factory AntivirusRulesetResponse.fromMap(Map<String, dynamic> map) {
    return AntivirusRulesetResponse(
      avSolutions: (() { final guardedValue = map['avSolutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
