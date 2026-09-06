// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Customer Managed Identity
class MyWorkbookManagedIdentity {
  /// The identity type.
  final pulumi.Input<String?>? type;

  /// Creates a new [MyWorkbookManagedIdentity].
  /// [type] The identity type.
  const MyWorkbookManagedIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory MyWorkbookManagedIdentity.fromMap(Map<String, dynamic> map) {
    return MyWorkbookManagedIdentity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
