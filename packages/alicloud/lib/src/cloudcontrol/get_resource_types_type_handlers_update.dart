// ignore_for_file: unused_element, unnecessary_cast


class GetResourceTypesTypeHandlersUpdate {
  /// The collection of required RAM permission information.
  final List<String> permissions;

  /// Creates a new [GetResourceTypesTypeHandlersUpdate].
  /// [permissions] The collection of required RAM permission information.
  GetResourceTypesTypeHandlersUpdate({
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
    };
  }

  factory GetResourceTypesTypeHandlersUpdate.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesTypeHandlersUpdate(
      permissions: (map['permissions'] as List).cast<String>(),
    );
  }
}

