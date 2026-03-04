// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_secret_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_secret_args_doc}
class GetSecretArgs {
  /// Specify the $expand query. Example: 'properties($select=value)'
  final pulumi.Input<String>? expand;

  /// The name of the lab.
  final pulumi.Input<String> labName;

  /// The name of the Secret
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the user profile.
  final pulumi.Input<String> userName;

  /// Creates a new [GetSecretArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=value)'
  /// [labName] The name of the lab.
  /// [name] The name of the Secret
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userName] The name of the user profile.
  GetSecretArgs({
    this.expand,
    required this.labName,
    required this.name,
    required this.resourceGroupName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'userName': userName,
    };
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
