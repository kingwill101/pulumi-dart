// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceTypesTypeHandlersDelete {
  /// The collection of required RAM permission information.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [GetResourceTypesTypeHandlersDelete].
  /// [permissions] The collection of required RAM permission information.
  GetResourceTypesTypeHandlersDelete({required this.permissions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'permissions': permissions};
  }

  factory GetResourceTypesTypeHandlersDelete.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesTypeHandlersDelete(
      permissions: pulumi.Input.fromValue(
        (map['permissions'] as List).cast<String>(),
      ),
    );
  }
}
