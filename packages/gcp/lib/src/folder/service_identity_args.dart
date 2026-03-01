// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_folder_service_identity_service_identity_args_doc}
/// The set of arguments for ServiceIdentity.
/// {@endtemplate}
/// {@macro pulumi_folder_service_identity_service_identity_args_doc}
class ServiceIdentityArgs {
  /// The folder in which the resource belongs.
  final pulumi.Input<String> folder;

  /// The service to generate identity for.
  ///
  /// - - -
  final pulumi.Input<String> service;

  /// Creates a new [ServiceIdentityArgs].
  /// [folder] The folder in which the resource belongs.
  /// [service] The service to generate identity for.
  ServiceIdentityArgs({required String folder, required String service})
    : folder = pulumi.Input.asInput<String>(folder),
      service = pulumi.Input.asInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'folder': folder, 'service': service};
  }

  factory ServiceIdentityArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIdentityArgs(
      folder: map['folder'] as String,
      service: map['service'] as String,
    );
  }
}
