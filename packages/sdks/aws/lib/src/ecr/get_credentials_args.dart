// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_get_credentials_get_credentials_args_doc}
/// Arguments for getCredentials.
/// {@endtemplate}
/// {@macro pulumi_ecr_get_credentials_get_credentials_args_doc}
class GetCredentialsArgs {
  final pulumi.Input<String> registryId;

  /// Creates a new [GetCredentialsArgs].
  /// [registryId] Required.
  const GetCredentialsArgs({
    required this.registryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryId': registryId,
    };
  }

  factory GetCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialsArgs(
      registryId: pulumi.Input.fromValue(map['registryId'] as String),
    );
  }
}
