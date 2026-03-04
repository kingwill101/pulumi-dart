// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceTypesTypeHandlersList {
  /// The collection of required RAM permission information.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [GetResourceTypesTypeHandlersList].
  /// [permissions] The collection of required RAM permission information.
  GetResourceTypesTypeHandlersList({required this.permissions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'permissions': permissions};
  }

  factory GetResourceTypesTypeHandlersList.fromMap(Map<String, dynamic> map) {
    return GetResourceTypesTypeHandlersList(
      permissions: pulumi.Input.fromValue(
        (map['permissions'] as List).cast<String>(),
      ),
    );
  }
}
