// ignore_for_file: unused_element, unnecessary_cast

/// Message describing resource status
class ResourceStatusResponse {
  /// Historical: Used before 2023-05-22 the new version of rule id if exists
  final List<String> rulesNewerVersions;

  /// State of the resource
  final String state;

  /// Creates a new [ResourceStatusResponse].
  /// [rulesNewerVersions] Historical: Used before 2023-05-22 the new version of rule id if exists
  /// [state] State of the resource
  ResourceStatusResponse({
    required this.rulesNewerVersions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rulesNewerVersions': rulesNewerVersions,
      'state': state,
    };
  }

  factory ResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponse(
      rulesNewerVersions: (map['rulesNewerVersions'] as List).cast<String>(),
      state: map['state'] as String,
    );
  }
}
