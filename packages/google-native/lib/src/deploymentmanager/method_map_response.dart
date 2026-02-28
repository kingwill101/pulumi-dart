// ignore_for_file: unused_element, unnecessary_cast

/// Deployment Manager will call these methods during the events of creation/deletion/update/get/setIamPolicy
class MethodMapResponse {
  /// The action identifier for the create method to be used for this collection
  final String create;

  /// The action identifier for the delete method to be used for this collection
  final String delete;

  /// The action identifier for the get method to be used for this collection
  final String get;

  /// The action identifier for the setIamPolicy method to be used for this collection
  final String setIamPolicy;

  /// The action identifier for the update method to be used for this collection
  final String update;

  /// Creates a new [MethodMapResponse].
  /// [create] The action identifier for the create method to be used for this collection
  /// [delete] The action identifier for the delete method to be used for this collection
  /// [get] The action identifier for the get method to be used for this collection
  /// [setIamPolicy] The action identifier for the setIamPolicy method to be used for this collection
  /// [update] The action identifier for the update method to be used for this collection
  MethodMapResponse({
    required this.create,
    required this.delete,
    required this.get,
    required this.setIamPolicy,
    required this.update,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['create'] = create;
    map['delete'] = delete;
    map['get'] = get;
    map['setIamPolicy'] = setIamPolicy;
    map['update'] = update;
    return map;
  }

  factory MethodMapResponse.fromMap(Map<String, dynamic> map) {
    return MethodMapResponse(
      create: map['create'] as String,
      delete: map['delete'] as String,
      get: map['get'] as String,
      setIamPolicy: map['setIamPolicy'] as String,
      update: map['update'] as String,
    );
  }
}
