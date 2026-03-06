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
  const AppProductionBranch({
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
      branchName: (() { final guardedValue = map['branchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastDeployTime: (() { final guardedValue = map['lastDeployTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbnailUrl: (() { final guardedValue = map['thumbnailUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

