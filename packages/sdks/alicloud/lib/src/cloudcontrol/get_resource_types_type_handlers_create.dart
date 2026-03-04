// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceTypesTypeHandlersCreate {
  /// The collection of required RAM permission information.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [GetResourceTypesTypeHandlersCreate].
  /// [permissions] The collection of required RAM permission information.
  GetResourceTypesTypeHandlersCreate({required this.permissions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'permissions': permissions};
  }

  factory GetResourceTypesTypeHandlersCreate.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesTypeHandlersCreate(
      permissions: pulumi.Input.fromValue(
        (map['permissions'] as List).cast<String>(),
      ),
    );
  }
}
