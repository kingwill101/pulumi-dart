// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceTypesTypeHandlersGet {
  /// The collection of required RAM permission information.
  final pulumi.Input<List<String>> permissions;

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
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
    );
  }
}

