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
  DocumentationPartLocation({
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
      method: map['method'] == null ? null : ((map['method'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      path: map['path'] == null ? null : ((map['path'] as String).input()).input(),
      statusCode: map['statusCode'] == null ? null : ((map['statusCode'] as String).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

