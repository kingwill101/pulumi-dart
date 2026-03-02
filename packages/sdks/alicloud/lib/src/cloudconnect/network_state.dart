// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// The CidrBlock of the CCN instance. Defaults to null.
  final pulumi.Input<String>? cidrBlock;
  /// The description of the CCN instance. The description can contain 2 to 256 characters. The description must start with English letters, but cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// Created by default. If the client does not have ccn in the binding, it will create a ccn for the user to replace.
  final pulumi.Input<bool>? isDefault;
  /// The name of the CCN instance. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  final pulumi.Input<String>? name;

  /// Creates a new [NetworkState].
  /// [cidrBlock] The CidrBlock of the CCN instance. Defaults to null.
  /// [description] The description of the CCN instance. The description can contain 2 to 256 characters. The description must start with English letters, but cannot start with http:// or https://.
  /// [isDefault] Created by default. If the client does not have ccn in the binding, it will create a ccn for the user to replace.
  /// [name] The name of the CCN instance. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  NetworkState({
    this.cidrBlock,
    this.description,
    this.isDefault,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'description': ?description,
      'isDefault': ?isDefault,
      'name': ?name,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

