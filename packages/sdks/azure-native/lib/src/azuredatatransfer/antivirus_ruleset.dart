// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Antivirus scanning rules for replicating data. By default, all antivirus scanning solutions are disabled.
class AntivirusRuleset {
  /// Optional. The list of antiviruses to be used as a scanning solution for replicating data.
  final pulumi.Input<List<dynamic>?>? avSolutions;

  /// Creates a new [AntivirusRuleset].
  /// [avSolutions] Optional. The list of antiviruses to be used as a scanning solution for replicating data.
  const AntivirusRuleset({
    this.avSolutions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avSolutions': ?avSolutions,
    };
  }

  factory AntivirusRuleset.fromMap(Map<String, dynamic> map) {
    return AntivirusRuleset(
      avSolutions: (() { final guardedValue = map['avSolutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
