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
    required this.labName,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    required this.userName,
    this.value,
  });

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
      labName: (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userName: (map['userName'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

