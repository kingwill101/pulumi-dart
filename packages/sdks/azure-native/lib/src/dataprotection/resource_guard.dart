// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGuard {
  /// List of critical operations which are not protected by this resourceGuard
  final pulumi.Input<List<String>>? vaultCriticalOperationExclusionList;

  /// Creates a new [ResourceGuard].
  /// [vaultCriticalOperationExclusionList] List of critical operations which are not protected by this resourceGuard
  ResourceGuard({
    this.vaultCriticalOperationExclusionList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vaultCriticalOperationExclusionList': ?vaultCriticalOperationExclusionList,
    };
  }

  factory ResourceGuard.fromMap(Map<String, dynamic> map) {
    return ResourceGuard(
      vaultCriticalOperationExclusionList: map['vaultCriticalOperationExclusionList'] == null ? null : ((map['vaultCriticalOperationExclusionList']! as List).cast<String>()).input(),
    );
  }
}

