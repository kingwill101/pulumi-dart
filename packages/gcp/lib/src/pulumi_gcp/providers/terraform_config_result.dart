// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by terraformConfig.
class TerraformConfigResult {
  final Map<String, dynamic> result;

  TerraformConfigResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['result'] = result;
    return map;
  }

  factory TerraformConfigResult.fromMap(Map<String, dynamic> map) {
    return TerraformConfigResult(
      result: (map['result'] as Map).cast<String, dynamic>(),
    );
  }
}
