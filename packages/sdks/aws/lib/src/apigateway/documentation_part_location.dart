// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DocumentationPartLocation {
  /// HTTP verb of a method. The default value is `*` for any method.
  final pulumi.Input<String>? method;
  /// Name of the targeted API entity.
  final pulumi.Input<String>? name;
  /// URL path of the target. The default value is `/` for the root resource.
  final pulumi.Input<String>? path;
  /// HTTP status code of a response. The default value is `*` for any status code.
  final pulumi.Input<String>? statusCode;
  /// Type of API entity to which the documentation content appliesE.g., `API`, `METHOD` or `REQUEST_BODY`
  final pulumi.Input<String> type;

  /// Creates a new [DocumentationPartLocation].
  /// [method] HTTP verb of a method. The default value is `*` for any method.
  /// [name] Name of the targeted API entity.
  /// [path] URL path of the target. The default value is `/` for the root resource.
  /// [statusCode] HTTP status code of a response. The default value is `*` for any status code.
  /// [type] Type of API entity to which the documentation content appliesE.g., `API`, `METHOD` or `REQUEST_BODY`
  const DocumentationPartLocation({
    this.method,
    this.name,
    this.path,
    this.statusCode,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'name': ?name,
      'path': ?path,
      'statusCode': ?statusCode,
      'type': type,
    };
  }

  factory DocumentationPartLocation.fromMap(Map<String, dynamic> map) {
    return DocumentationPartLocation(
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
