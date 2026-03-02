// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppProductionBranch {
  /// Branch name for the production branch.
  final pulumi.Input<String>? branchName;
  /// Last deploy time of the production branch.
  final pulumi.Input<String>? lastDeployTime;
  /// Status of the production branch.
  final pulumi.Input<String>? status;
  /// Thumbnail URL for the production branch.
  final pulumi.Input<String>? thumbnailUrl;

  /// Creates a new [AppProductionBranch].
  /// [branchName] Branch name for the production branch.
  /// [lastDeployTime] Last deploy time of the production branch.
  /// [status] Status of the production branch.
  /// [thumbnailUrl] Thumbnail URL for the production branch.
  AppProductionBranch({
    this.branchName,
    this.lastDeployTime,
    this.status,
    this.thumbnailUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'lastDeployTime': ?lastDeployTime,
      'status': ?status,
      'thumbnailUrl': ?thumbnailUrl,
    };
  }

  factory AppProductionBranch.fromMap(Map<String, dynamic> map) {
    return AppProductionBranch(
      branchName: map['branchName'] == null ? null : ((map['branchName'] as String).input()).input(),
      lastDeployTime: map['lastDeployTime'] == null ? null : ((map['lastDeployTime'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      thumbnailUrl: map['thumbnailUrl'] == null ? null : ((map['thumbnailUrl'] as String).input()).input(),
    );
  }
}

