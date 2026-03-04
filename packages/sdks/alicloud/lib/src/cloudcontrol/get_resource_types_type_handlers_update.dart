// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceTypesTypeHandlersUpdate {
  /// The collection of required RAM permission information.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [GetResourceTypesTypeHandlersUpdate].
  /// [permissions] The collection of required RAM permission information.
  GetResourceTypesTypeHandlersUpdate({required this.permissions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'permissions': permissions};
  }

  factory GetResourceTypesTypeHandlersUpdate.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesTypeHandlersUpdate(
      permissions: pulumi.Input.fromValue(
        (map['permissions'] as List).cast<String>(),
      ),
    );
  }
}
