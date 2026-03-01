// ignore_for_file: unused_element, unnecessary_cast


class GetResourceTypesTypeHandlersGet {
  /// The collection of required RAM permission information.
  final List<String> permissions;

  /// Creates a new [GetResourceTypesTypeHandlersGet].
  /// [permissions] The collection of required RAM permission information.
  GetResourceTypesTypeHandlersGet({
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions,
    };
  }

  factory GetResourceTypesTypeHandlersGet.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesTypeHandlersGet(
      permissions: (map['permissions'] as List).cast<String>(),
    );
  }
}

