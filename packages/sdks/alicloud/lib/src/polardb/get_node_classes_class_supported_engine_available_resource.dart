// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeClassesClassSupportedEngineAvailableResource {
  /// The PolarDB node class type by the user.
  final pulumi.Input<String> dbNodeClass;

  /// Creates a new [GetNodeClassesClassSupportedEngineAvailableResource].
  /// [dbNodeClass] The PolarDB node class type by the user.
  GetNodeClassesClassSupportedEngineAvailableResource({
    required this.dbNodeClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dbNodeClass': dbNodeClass};
  }

  factory GetNodeClassesClassSupportedEngineAvailableResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNodeClassesClassSupportedEngineAvailableResource(
      dbNodeClass: pulumi.Input.fromValue(map['dbNodeClass'] as String),
    );
  }
}
