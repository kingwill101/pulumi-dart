// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_access_policy.dart';

/// Cache security settings.
class CacheSecuritySettings {
  /// NFS access policies defined for this cache.
  final List<NfsAccessPolicy>? accessPolicies;

  /// Creates a new [CacheSecuritySettings].
  /// [accessPolicies] NFS access policies defined for this cache.
  CacheSecuritySettings({
    this.accessPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies == null ? null : pulumi.Input.encodeList<NfsAccessPolicy, Map<String, dynamic>>(accessPolicies!, (value) => value.toMap()),
    };
  }

  factory CacheSecuritySettings.fromMap(Map<String, dynamic> map) {
    return CacheSecuritySettings(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Input.decodeList<NfsAccessPolicy>(map['accessPolicies'], (value) => NfsAccessPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

