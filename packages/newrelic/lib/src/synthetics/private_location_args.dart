// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synthetics_private_location_private_location_args_doc}
/// The set of arguments for PrivateLocation.
/// {@endtemplate}
/// {@macro pulumi_synthetics_private_location_private_location_args_doc}
class PrivateLocationArgs {
  /// The account in which the private location will be created.
  final pulumi.Input<String>? accountId;
  /// The private location description.
  final pulumi.Input<String> description;
  /// The name of the private location.
  final pulumi.Input<String>? name;
  /// The private location requires a password to edit if value is true. Defaults to `false`
  final pulumi.Input<bool>? verifiedScriptExecution;

  /// Creates a new [PrivateLocationArgs].
  /// [accountId] The account in which the private location will be created.
  /// [description] The private location description.
  /// [name] The name of the private location.
  /// [verifiedScriptExecution] The private location requires a password to edit if value is true. Defaults to `false`
  PrivateLocationArgs({
    String? accountId,
    required String description,
    String? name,
    bool? verifiedScriptExecution,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      verifiedScriptExecution = pulumi.Input.asOptionalInput<bool>(verifiedScriptExecution);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': description,
      'name': ?name,
      'verifiedScriptExecution': ?verifiedScriptExecution,
    };
  }

  factory PrivateLocationArgs.fromMap(Map<String, dynamic> map) {
    return PrivateLocationArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      description: map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      verifiedScriptExecution: map['verifiedScriptExecution'] == null ? null : map['verifiedScriptExecution'] as bool,
    );
  }
}

