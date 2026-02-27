// ignore_for_file: unused_element, unnecessary_cast

class BuilderConfigContaineranalysisV1alpha1 {
  final String? id;

  BuilderConfigContaineranalysisV1alpha1({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory BuilderConfigContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return BuilderConfigContaineranalysisV1alpha1(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
