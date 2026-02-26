// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_feature_response.dart';

/// FeaturePolicy defines features allowed to be used on RBE instances, as well as instance-wide behavior changes that take effect without opt-in or opt-out at usage time.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse {
  /// Which container image sources are allowed. Currently only RBE-supported registry (gcr.io) is allowed. One can allow all repositories under a project or one specific repository only. E.g. container_image_sources { policy: RESTRICTED allowed_values: [ "gcr.io/project-foo", "gcr.io/project-bar/repo-baz", ] } will allow any repositories under "gcr.io/project-foo" plus the repository "gcr.io/project-bar/repo-baz". Default (UNSPECIFIED) is equivalent to any source is allowed.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
      containerImageSources;

  /// Whether dockerAddCapabilities can be used or what capabilities are allowed.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
      dockerAddCapabilities;

  /// Whether dockerChrootPath can be used.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
      dockerChrootPath;

  /// Whether dockerNetwork can be used or what network modes are allowed. E.g. one may allow `off` value only via `allowed_values`.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
      dockerNetwork;

  /// Whether dockerPrivileged can be used.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
      dockerPrivileged;

  /// Whether dockerRunAsRoot can be used.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
      dockerRunAsRoot;

  /// Whether dockerRuntime is allowed to be set or what runtimes are allowed. Note linux_isolation takes precedence, and if set, docker_runtime values may be rejected if they are incompatible with the selected isolation.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
      dockerRuntime;

  /// Whether dockerSiblingContainers can be used.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
      dockerSiblingContainers;

  /// linux_isolation allows overriding the docker runtime used for containers started on Linux.
  final String linuxIsolation;

  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse({
    required this.containerImageSources,
    required this.dockerAddCapabilities,
    required this.dockerChrootPath,
    required this.dockerNetwork,
    required this.dockerPrivileged,
    required this.dockerRunAsRoot,
    required this.dockerRuntime,
    required this.dockerSiblingContainers,
    required this.linuxIsolation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerImageSources'] = containerImageSources.toMap();
    map['dockerAddCapabilities'] = dockerAddCapabilities.toMap();
    map['dockerChrootPath'] = dockerChrootPath.toMap();
    map['dockerNetwork'] = dockerNetwork.toMap();
    map['dockerPrivileged'] = dockerPrivileged.toMap();
    map['dockerRunAsRoot'] = dockerRunAsRoot.toMap();
    map['dockerRuntime'] = dockerRuntime.toMap();
    map['dockerSiblingContainers'] = dockerSiblingContainers.toMap();
    map['linuxIsolation'] = linuxIsolation;
    return map;
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse(
      containerImageSources:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
              .fromMap((map['containerImageSources'] as Map)
                  .cast<String, dynamic>()),
      dockerAddCapabilities:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
              .fromMap((map['dockerAddCapabilities'] as Map)
                  .cast<String, dynamic>()),
      dockerChrootPath:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
              .fromMap(
                  (map['dockerChrootPath'] as Map).cast<String, dynamic>()),
      dockerNetwork:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
              .fromMap((map['dockerNetwork'] as Map).cast<String, dynamic>()),
      dockerPrivileged:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
              .fromMap(
                  (map['dockerPrivileged'] as Map).cast<String, dynamic>()),
      dockerRunAsRoot:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
              .fromMap((map['dockerRunAsRoot'] as Map).cast<String, dynamic>()),
      dockerRuntime:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
              .fromMap((map['dockerRuntime'] as Map).cast<String, dynamic>()),
      dockerSiblingContainers:
          GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
              .fromMap((map['dockerSiblingContainers'] as Map)
                  .cast<String, dynamic>()),
      linuxIsolation: map['linuxIsolation'] as String,
    );
  }
}
