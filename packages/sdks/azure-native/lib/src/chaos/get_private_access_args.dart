// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaos_get_private_access_args_doc}
/// Arguments for getPrivateAccess.
/// {@endtemplate}
/// {@macro pulumi_chaos_get_private_access_args_doc}
class GetPrivateAccessArgs {
  /// The name of the private access resource that is being created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  final pulumi.Input<String> privateAccessName;
  /// String that represents an Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateAccessArgs].
  /// [privateAccessName] The name of the private access resource that is being created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  /// [resourceGroupName] String that represents an Azure resource group.
  GetPrivateAccessArgs({
    required this.privateAccessName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateAccessName': privateAccessName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateAccessArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateAccessArgs(
      privateAccessName: (map['privateAccessName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

