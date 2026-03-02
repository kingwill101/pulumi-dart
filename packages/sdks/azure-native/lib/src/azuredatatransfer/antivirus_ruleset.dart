// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Antivirus scanning rules for replicating data. By default, all antivirus scanning solutions are disabled.
class AntivirusRuleset {
  /// Optional. The list of antiviruses to be used as a scanning solution for replicating data.
  final pulumi.Input<List<String>>? avSolutions;

  /// Creates a new [AntivirusRuleset].
  /// [avSolutions] Optional. The list of antiviruses to be used as a scanning solution for replicating data.
  AntivirusRuleset({
    this.avSolutions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avSolutions': ?avSolutions,
    };
  }

  factory AntivirusRuleset.fromMap(Map<String, dynamic> map) {
    return AntivirusRuleset(
      avSolutions: map['avSolutions'] == null ? null : ((map['avSolutions'] as List).cast<String>()).input(),
    );
  }
}

