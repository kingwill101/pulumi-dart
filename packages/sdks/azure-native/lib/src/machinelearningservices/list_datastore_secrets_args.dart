// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_datastore_secrets_args_doc}
/// Arguments for listDatastoreSecrets.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_datastore_secrets_args_doc}
class ListDatastoreSecretsArgs {
  /// Indicates if the secret is expirable.
  final pulumi.Input<bool?>? expirableSecret;
  /// Number of hours after which the secret will expire.
  final pulumi.Input<int?>? expireAfterHours;
  /// Datastore name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListDatastoreSecretsArgs].
  /// [expirableSecret] Indicates if the secret is expirable.
  /// [expireAfterHours] Number of hours after which the secret will expire.
  /// [name] Datastore name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  ListDatastoreSecretsArgs({
    pulumi.Input<bool?>? expirableSecret,
    pulumi.Input<int?>? expireAfterHours,
    required this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  }) : expirableSecret = expirableSecret ?? pulumi.Input.fromValue(false), expireAfterHours = expireAfterHours ?? pulumi.Input.fromValue(1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirableSecret': ?expirableSecret,
      'expireAfterHours': ?expireAfterHours,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListDatastoreSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListDatastoreSecretsArgs(
      expirableSecret: (() { final guardedValue = map['expirableSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expireAfterHours: (() { final guardedValue = map['expireAfterHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
