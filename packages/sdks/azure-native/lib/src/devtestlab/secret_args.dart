// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_secret_args_doc}
class SecretArgs {
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the Secret
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the user profile.
  final pulumi.Input<String> userName;
  /// The value of the secret for secret creation.
  final pulumi.Input<String>? value;

  /// Creates a new [SecretArgs].
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [name] The name of the Secret
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  /// [userName] The name of the user profile.
  /// [value] The value of the secret for secret creation.
  SecretArgs({
    required pulumi.Output<String> labName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> userName,
    pulumi.Output<String>? value,
  }) :
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userName = pulumi.Input.asInput<String>(userName),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'userName': userName,
      'value': ?value,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      labName: pulumi.Output.create<String>(map['labName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userName: pulumi.Output.create<String>(map['userName'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

