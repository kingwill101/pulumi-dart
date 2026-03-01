// ignore_for_file: unused_element, unnecessary_cast


/// NamedResourcesAllocationResult is used in AllocationResultModel.
class NamedResourcesAllocationResultPatch {
  /// Name is the name of the selected resource instance.
  final String? name;

  /// Creates a new [NamedResourcesAllocationResultPatch].
  /// [name] Name is the name of the selected resource instance.
  NamedResourcesAllocationResultPatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory NamedResourcesAllocationResultPatch.fromMap(Map<String, dynamic> map) {
    return NamedResourcesAllocationResultPatch(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

