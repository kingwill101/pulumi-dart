// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyXksKeyConfiguration {
  /// The globally unique identifier for the key
  final pulumi.Input<String> id;

  /// Creates a new [GetKeyXksKeyConfiguration].
  /// [id] The globally unique identifier for the key
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
