// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CidrCollection resources.
class CidrCollectionState {
  /// The Amazon Resource Name (ARN) of the CIDR collection.
  final pulumi.Input<String>? arn;
  /// Unique name for the CIDR collection.
  final pulumi.Input<String>? name;
  /// The lastest version of the CIDR collection.
  final pulumi.Input<int>? version;

  /// Creates a new [CidrCollectionState].
  /// [arn] The Amazon Resource Name (ARN) of the CIDR collection.
  /// [name] Unique name for the CIDR collection.
  /// [version] The lastest version of the CIDR collection.
  const CidrCollectionState({
    this.arn,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'version': ?version,
    };
  }

  factory CidrCollectionState.fromMap(Map<String, dynamic> map) {
    return CidrCollectionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
