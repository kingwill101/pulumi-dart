// ignore_for_file: unused_element, unnecessary_cast

class WorkspaceNetworkAccessControl {
  /// An array of prefix list IDs.
  final List<String> prefixListIds;

  /// An array of Amazon VPC endpoint IDs for the workspace. The only VPC endpoints that can be specified here are interface VPC endpoints for Grafana workspaces (using the com.amazonaws.[region].grafana-workspace service endpoint). Other VPC endpoints will be ignored.
  final List<String> vpceIds;

  /// Creates a new [WorkspaceNetworkAccessControl].
  /// [prefixListIds] An array of prefix list IDs.
  /// [vpceIds] An array of Amazon VPC endpoint IDs for the workspace. The only VPC endpoints that can be specified here are interface VPC endpoints for Grafana workspaces (using the com.amazonaws.[region].grafana-workspace service endpoint). Other VPC endpoints will be ignored.
  WorkspaceNetworkAccessControl({
    required this.prefixListIds,
    required this.vpceIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['prefixListIds'] = prefixListIds;
    map['vpceIds'] = vpceIds;
    return map;
  }

  factory WorkspaceNetworkAccessControl.fromMap(Map<String, dynamic> map) {
    return WorkspaceNetworkAccessControl(
      prefixListIds: (map['prefixListIds'] as List).cast<String>(),
      vpceIds: (map['vpceIds'] as List).cast<String>(),
    );
  }
}
