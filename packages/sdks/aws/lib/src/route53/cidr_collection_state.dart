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
  CidrCollectionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<int>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'version': ?version,
    };
  }

  factory CidrCollectionState.fromMap(Map<String, dynamic> map) {
    return CidrCollectionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

