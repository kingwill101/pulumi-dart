// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyXksKeyConfiguration {
  /// ID of the external key in the external key manager.
  final pulumi.Input<String> id;

  /// Creates a new [GetKeyXksKeyConfiguration].
  /// [id] ID of the external key in the external key manager.
  const GetKeyXksKeyConfiguration({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetKeyXksKeyConfiguration.fromMap(Map<String, dynamic> map) {
    return GetKeyXksKeyConfiguration(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
