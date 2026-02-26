// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVcenterCredentials.
class GetVcenterCredentialsArgs {
  /// The resource name of the private cloud which contains the Vcenter.
  final Input<String> parent;

  GetVcenterCredentialsArgs({
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    return map;
  }

  factory GetVcenterCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetVcenterCredentialsArgs(
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
