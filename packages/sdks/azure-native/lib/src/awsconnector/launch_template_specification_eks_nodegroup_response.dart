// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LaunchTemplateSpecification
class LaunchTemplateSpecificationEksNodegroupResponse {
  /// Property id
  final pulumi.Input<String>? id;
  /// Property name
  final pulumi.Input<String>? name;
  /// Property version
  final pulumi.Input<String>? version;

  /// Creates a new [LaunchTemplateSpecificationEksNodegroupResponse].
  /// [id] Property id
  /// [name] Property name
  /// [version] Property version
  const LaunchTemplateSpecificationEksNodegroupResponse({
    this.id,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'version': ?version,
    };
  }

  factory LaunchTemplateSpecificationEksNodegroupResponse.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateSpecificationEksNodegroupResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
