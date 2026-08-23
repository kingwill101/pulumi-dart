// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_analysisservices_get_server_details_args_doc}
/// Arguments for getServerDetails.
/// {@endtemplate}
/// {@macro pulumi_analysisservices_get_server_details_args_doc}
class GetServerDetailsArgs {
  /// The name of the Azure Resource group of which a given Analysis Services server is part. This name must be at least 1 character in length, and no more than 90.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Analysis Services server. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetServerDetailsArgs].
  /// [resourceGroupName] The name of the Azure Resource group of which a given Analysis Services server is part. This name must be at least 1 character in length, and no more than 90.
  /// [serverName] The name of the Analysis Services server. It must be a minimum of 3 characters, and a maximum of 63.
  const GetServerDetailsArgs({
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetServerDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetServerDetailsArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
