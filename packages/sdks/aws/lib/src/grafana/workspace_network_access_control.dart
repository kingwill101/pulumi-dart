// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceNetworkAccessControl {
  /// An array of prefix list IDs.
  final pulumi.Input<List<String>> prefixListIds;
  /// An array of Amazon VPC endpoint IDs for the workspace. The only VPC endpoints that can be specified here are interface VPC endpoints for Grafana workspaces (using the com.amazonaws.[region].grafana-workspace service endpoint). Other VPC endpoints will be ignored.
  final pulumi.Input<List<String>> vpceIds;

  /// Creates a new [WorkspaceNetworkAccessControl].
  /// [prefixListIds] An array of prefix list IDs.
  /// [vpceIds] An array of Amazon VPC endpoint IDs for the workspace. The only VPC endpoints that can be specified here are interface VPC endpoints for Grafana workspaces (using the com.amazonaws.[region].grafana-workspace service endpoint). Other VPC endpoints will be ignored.
  WorkspaceNetworkAccessControl({
    required this.prefixListIds,
    required this.vpceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefixListIds': prefixListIds,
      'vpceIds': vpceIds,
    };
  }

  factory WorkspaceNetworkAccessControl.fromMap(Map<String, dynamic> map) {
    return WorkspaceNetworkAccessControl(
      prefixListIds: pulumi.Input.fromValue((map['prefixListIds'] as List).cast<String>()),
      vpceIds: pulumi.Input.fromValue((map['vpceIds'] as List).cast<String>()),
    );
  }
}

