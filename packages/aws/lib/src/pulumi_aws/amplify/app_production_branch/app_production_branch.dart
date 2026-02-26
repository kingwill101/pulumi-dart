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

  AppProductionBranch({
    this.branchName,
    this.lastDeployTime,
    this.status,
    this.thumbnailUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchNameValue = branchName;
    if (branchNameValue != null) {
      map['branchName'] = branchNameValue;
    }
    final lastDeployTimeValue = lastDeployTime;
    if (lastDeployTimeValue != null) {
      map['lastDeployTime'] = lastDeployTimeValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final thumbnailUrlValue = thumbnailUrl;
    if (thumbnailUrlValue != null) {
      map['thumbnailUrl'] = thumbnailUrlValue;
    }
    return map;
  }

  factory AppProductionBranch.fromMap(Map<String, dynamic> map) {
    return AppProductionBranch(
      branchName:
          map['branchName'] == null ? null : map['branchName'] as String,
      lastDeployTime: map['lastDeployTime'] == null
          ? null
          : map['lastDeployTime'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      thumbnailUrl:
          map['thumbnailUrl'] == null ? null : map['thumbnailUrl'] as String,
    );
  }
}
