// ignore_for_file: unused_element, unnecessary_cast


/// Antivirus scanning rules for replicating data. By default, all antivirus scanning solutions are disabled.
class AntivirusRulesetResponse {
  /// Optional. The list of antiviruses to be used as a scanning solution for replicating data.
  final List<String>? avSolutions;

  /// Creates a new [AntivirusRulesetResponse].
  /// [avSolutions] Optional. The list of antiviruses to be used as a scanning solution for replicating data.
  AntivirusRulesetResponse({
    this.avSolutions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avSolutions': ?avSolutions,
    };
  }

  factory AntivirusRulesetResponse.fromMap(Map<String, dynamic> map) {
    return AntivirusRulesetResponse(
      avSolutions: map['avSolutions'] == null ? null : (map['avSolutions'] as List).cast<String>(),
    );
  }
}

