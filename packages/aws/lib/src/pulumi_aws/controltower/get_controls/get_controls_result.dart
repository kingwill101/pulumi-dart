// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getControls.
class GetControlsResult {
  /// List of all the ARNs for the controls applied to the <span pulumi-lang-nodejs="`targetIdentifier`" pulumi-lang-dotnet="`TargetIdentifier`" pulumi-lang-go="`targetIdentifier`" pulumi-lang-python="`target_identifier`" pulumi-lang-yaml="`targetIdentifier`" pulumi-lang-java="`targetIdentifier`">`target_identifier`</span>.
  final List<String> enabledControls;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String targetIdentifier;

  GetControlsResult({
    required this.enabledControls,
    required this.id,
    required this.region,
    required this.targetIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabledControls'] = enabledControls;
    map['id'] = id;
    map['region'] = region;
    map['targetIdentifier'] = targetIdentifier;
    return map;
  }

  factory GetControlsResult.fromMap(Map<String, dynamic> map) {
    return GetControlsResult(
      enabledControls: (map['enabledControls'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      targetIdentifier: map['targetIdentifier'] as String,
    );
  }
}
