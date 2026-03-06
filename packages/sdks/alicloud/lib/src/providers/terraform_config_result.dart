// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by terraformConfig.
class TerraformConfigResult {
  final Map<String, dynamic> result;

  /// Creates a new [TerraformConfigResult].
  /// [result] Required.
  const TerraformConfigResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory TerraformConfigResult.fromMap(Map<String, dynamic> map) {
    return TerraformConfigResult(
      result: (map['result'] as Map).cast<String, dynamic>(),
    );
  }
}

