// ignore_for_file: unused_element, unnecessary_cast

/// Message describing resource status
class ResourceStatusResponseWorkloadmanagerV1 {
  /// Historical: Used before 2023-05-22 the new version of rule id if exists
  final List<String> rulesNewerVersions;

  /// State of the resource
  final String state;

  ResourceStatusResponseWorkloadmanagerV1({
    required this.rulesNewerVersions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rulesNewerVersions'] = rulesNewerVersions;
    map['state'] = state;
    return map;
  }

  factory ResourceStatusResponseWorkloadmanagerV1.fromMap(
      Map<String, dynamic> map) {
    return ResourceStatusResponseWorkloadmanagerV1(
      rulesNewerVersions: (map['rulesNewerVersions'] as List).cast<String>(),
      state: map['state'] as String,
    );
  }
}
