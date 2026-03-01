// ignore_for_file: unused_element, unnecessary_cast


class AppProductionBranch {
  /// Branch name for the production branch.
  final String? branchName;
  /// Last deploy time of the production branch.
  final String? lastDeployTime;
  /// Status of the production branch.
  final String? status;
  /// Thumbnail URL for the production branch.
  final String? thumbnailUrl;

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
      branchName: map['branchName'] == null ? null : map['branchName'] as String,
      lastDeployTime: map['lastDeployTime'] == null ? null : map['lastDeployTime'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      thumbnailUrl: map['thumbnailUrl'] == null ? null : map['thumbnailUrl'] as String,
    );
  }
}

