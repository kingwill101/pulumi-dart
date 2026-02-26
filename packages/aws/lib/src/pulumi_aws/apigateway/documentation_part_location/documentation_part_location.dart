// ignore_for_file: unused_element, unnecessary_cast

class DocumentationPartLocation {
  /// HTTP verb of a method. The default value is `*` for any method.
  final String? method;

  /// Name of the targeted API entity.
  final String? name;

  /// URL path of the target. The default value is `/` for the root resource.
  final String? path;

  /// HTTP status code of a response. The default value is `*` for any status code.
  final String? statusCode;

  /// Type of API entity to which the documentation content appliesE.g., `API`, `METHOD` or `REQUEST_BODY`
  final String type;

  DocumentationPartLocation({
    this.method,
    this.name,
    this.path,
    this.statusCode,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final statusCodeValue = statusCode;
    if (statusCodeValue != null) {
      map['statusCode'] = statusCodeValue;
    }
    map['type'] = type;
    return map;
  }

  factory DocumentationPartLocation.fromMap(Map<String, dynamic> map) {
    return DocumentationPartLocation(
      method: map['method'] == null ? null : map['method'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      statusCode:
          map['statusCode'] == null ? null : map['statusCode'] as String,
      type: map['type'] as String,
    );
  }
}
