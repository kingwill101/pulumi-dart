// ignore_for_file: unused_element, unnecessary_cast

/// Definition of a custom Compute Engine virtual machine image for starting a notebook instance with the environment installed directly on the VM.
class VmImageResponseNotebooksV2 {
  /// Optional. Use this VM image family to find the image; the newest image in this family will be used.
  final String family;

  /// Optional. Use VM image name to find the image.
  final String name;

  /// The name of the Google Cloud project that this VM image belongs to. Format: `{project_id}`
  final String project;

  VmImageResponseNotebooksV2({
    required this.family,
    required this.name,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['family'] = family;
    map['name'] = name;
    map['project'] = project;
    return map;
  }

  factory VmImageResponseNotebooksV2.fromMap(Map<String, dynamic> map) {
    return VmImageResponseNotebooksV2(
      family: map['family'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
    );
  }
}
