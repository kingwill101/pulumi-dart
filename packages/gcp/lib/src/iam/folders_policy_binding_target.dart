// ignore_for_file: unused_element, unnecessary_cast

class FoldersPolicyBindingTarget {
  /// Required. Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  /// Examples for each one of the following supported principal set types:
  /// * Folder: `//cloudresourcemanager.googleapis.com/folders/FOLDER_ID`
  /// It must be parent by the policy binding's parent (the folder).
  final String? principalSet;

  /// Creates a new [FoldersPolicyBindingTarget].
  /// [principalSet] Required. Immutable. Full Resource Name of the principal set used for principal access boundary policy bindings.
  FoldersPolicyBindingTarget({
    this.principalSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final principalSetValue = principalSet;
    if (principalSetValue != null) {
      map['principalSet'] = principalSetValue;
    }
    return map;
  }

  factory FoldersPolicyBindingTarget.fromMap(Map<String, dynamic> map) {
    return FoldersPolicyBindingTarget(
      principalSet:
          map['principalSet'] == null ? null : map['principalSet'] as String,
    );
  }
}
