// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_list_geodata_by_ip_args_doc}
/// Arguments for listGeodataByIp.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_list_geodata_by_ip_args_doc}
class ListGeodataByIpArgs {
  /// Enrichment type
  final pulumi.Input<String> enrichmentType;
  /// The dotted-decimal or colon-separated string representation of the IP address
  final pulumi.Input<String>? ipAddress;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListGeodataByIpArgs].
  /// [enrichmentType] Enrichment type
  /// [ipAddress] The dotted-decimal or colon-separated string representation of the IP address
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  ListGeodataByIpArgs({
    required String enrichmentType,
    String? ipAddress,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      enrichmentType = pulumi.Input.asInput<String>(enrichmentType),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enrichmentType': enrichmentType,
      'ipAddress': ?ipAddress,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListGeodataByIpArgs.fromMap(Map<String, dynamic> map) {
    return ListGeodataByIpArgs(
      enrichmentType: map['enrichmentType'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

