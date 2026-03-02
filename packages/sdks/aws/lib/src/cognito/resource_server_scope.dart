// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceServerScope {
  /// The scope description.
  final pulumi.Input<String> scopeDescription;
  /// The scope name.
  final pulumi.Input<String> scopeName;

  /// Creates a new [ResourceServerScope].
  /// [scopeDescription] The scope description.
  /// [scopeName] The scope name.
  ResourceServerScope({
    required this.scopeDescription,
    required this.scopeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopeDescription': scopeDescription,
      'scopeName': scopeName,
    };
  }

  factory ResourceServerScope.fromMap(Map<String, dynamic> map) {
    return ResourceServerScope(
      scopeDescription: (map['scopeDescription'] as String).input(),
      scopeName: (map['scopeName'] as String).input(),
    );
  }
}

