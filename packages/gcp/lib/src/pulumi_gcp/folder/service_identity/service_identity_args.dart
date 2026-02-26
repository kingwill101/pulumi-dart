// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServiceIdentity.
class ServiceIdentityArgs {
  /// The folder in which the resource belongs.
  final Input<String> folder;

  /// The service to generate identity for.
  ///
  /// - - -
  final Input<String> service;

  ServiceIdentityArgs({
    required this.folder,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folder'] = folder;
    map['service'] = service;
    return map;
  }

  factory ServiceIdentityArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIdentityArgs(
      folder: Input.asInput<String>(map['folder']),
      service: Input.asInput<String>(map['service']),
    );
  }
}
