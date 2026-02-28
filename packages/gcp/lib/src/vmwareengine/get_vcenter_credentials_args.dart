// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_get_vcenter_credentials_get_vcenter_credentials_args_doc}
/// Arguments for getVcenterCredentials.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_get_vcenter_credentials_get_vcenter_credentials_args_doc}
class GetVcenterCredentialsArgs {
  /// The resource name of the private cloud which contains the Vcenter.
  final pulumi.Input<String> parent;

  /// Creates a new [GetVcenterCredentialsArgs].
  /// [parent] The resource name of the private cloud which contains the Vcenter.
  GetVcenterCredentialsArgs({
    required String parent,
  }) : parent = pulumi.Input.asInput<String>(parent);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parent'] = parent;
    return map;
  }

  factory GetVcenterCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetVcenterCredentialsArgs(
      parent: map['parent'] as String,
    );
  }
}
