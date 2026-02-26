// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_feature.dart';
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_linux_isolation.dart';

/// FeaturePolicy defines features allowed to be used on RBE instances, as well as instance-wide behavior changes that take effect without opt-in or opt-out at usage time.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy {
  /// Which container image sources are allowed. Currently only RBE-supported registry (gcr.io) is allowed. One can allow all repositories under a project or one specific repository only. E.g. container_image_sources { policy: RESTRICTED allowed_values: [ "gcr.io/project-foo", "gcr.io/project-bar/repo-baz", ] } will allow any repositories under "gcr.io/project-foo" plus the repository "gcr.io/project-bar/repo-baz". Default (UNSPECIFIED) is equivalent to any source is allowed.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature?
      containerImageSources;

  /// Whether dockerAddCapabilities can be used or what capabilities are allowed.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature?
      dockerAddCapabilities;

  /// Whether dockerChrootPath can be used.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature?
      dockerChrootPath;

  /// Whether dockerNetwork can be used or what network modes are allowed. E.g. one may allow `off` value only via `allowed_values`.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature?
      dockerNetwork;

  /// Whether dockerPrivileged can be used.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature?
      dockerPrivileged;

  /// Whether dockerRunAsRoot can be used.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature?
      dockerRunAsRoot;

  /// Whether dockerRuntime is allowed to be set or what runtimes are allowed. Note linux_isolation takes precedence, and if set, docker_runtime values may be rejected if they are incompatible with the selected isolation.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature?
      dockerRuntime;

  /// Whether dockerSiblingContainers can be used.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature?
      dockerSiblingContainers;

  /// linux_isolation allows overriding the docker runtime used for containers started on Linux.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation?
      linuxIsolation;

  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy({
    this.containerImageSources,
    this.dockerAddCapabilities,
    this.dockerChrootPath,
    this.dockerNetwork,
    this.dockerPrivileged,
    this.dockerRunAsRoot,
    this.dockerRuntime,
    this.dockerSiblingContainers,
    this.linuxIsolation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerImageSourcesValue = containerImageSources;
    if (containerImageSourcesValue != null) {
      map['containerImageSources'] = containerImageSourcesValue.toMap();
    }
    final dockerAddCapabilitiesValue = dockerAddCapabilities;
    if (dockerAddCapabilitiesValue != null) {
      map['dockerAddCapabilities'] = dockerAddCapabilitiesValue.toMap();
    }
    final dockerChrootPathValue = dockerChrootPath;
    if (dockerChrootPathValue != null) {
      map['dockerChrootPath'] = dockerChrootPathValue.toMap();
    }
    final dockerNetworkValue = dockerNetwork;
    if (dockerNetworkValue != null) {
      map['dockerNetwork'] = dockerNetworkValue.toMap();
    }
    final dockerPrivilegedValue = dockerPrivileged;
    if (dockerPrivilegedValue != null) {
      map['dockerPrivileged'] = dockerPrivilegedValue.toMap();
    }
    final dockerRunAsRootValue = dockerRunAsRoot;
    if (dockerRunAsRootValue != null) {
      map['dockerRunAsRoot'] = dockerRunAsRootValue.toMap();
    }
    final dockerRuntimeValue = dockerRuntime;
    if (dockerRuntimeValue != null) {
      map['dockerRuntime'] = dockerRuntimeValue.toMap();
    }
    final dockerSiblingContainersValue = dockerSiblingContainers;
    if (dockerSiblingContainersValue != null) {
      map['dockerSiblingContainers'] = dockerSiblingContainersValue.toMap();
    }
    final linuxIsolationValue = linuxIsolation;
    if (linuxIsolationValue != null) {
      map['linuxIsolation'] = linuxIsolationValue.value;
    }
    return map;
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy.fromMap(
      Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy(
      containerImageSources: map['containerImageSources'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
              .fromMap((map['containerImageSources'] as Map)
                  .cast<String, dynamic>()),
      dockerAddCapabilities: map['dockerAddCapabilities'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
              .fromMap((map['dockerAddCapabilities'] as Map)
                  .cast<String, dynamic>()),
      dockerChrootPath: map['dockerChrootPath'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
              .fromMap(
                  (map['dockerChrootPath'] as Map).cast<String, dynamic>()),
      dockerNetwork: map['dockerNetwork'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
              .fromMap((map['dockerNetwork'] as Map).cast<String, dynamic>()),
      dockerPrivileged: map['dockerPrivileged'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
              .fromMap(
                  (map['dockerPrivileged'] as Map).cast<String, dynamic>()),
      dockerRunAsRoot: map['dockerRunAsRoot'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
              .fromMap((map['dockerRunAsRoot'] as Map).cast<String, dynamic>()),
      dockerRuntime: map['dockerRuntime'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
              .fromMap((map['dockerRuntime'] as Map).cast<String, dynamic>()),
      dockerSiblingContainers: map['dockerSiblingContainers'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
              .fromMap((map['dockerSiblingContainers'] as Map)
                  .cast<String, dynamic>()),
      linuxIsolation: map['linuxIsolation'] == null
          ? null
          : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation
              .fromValue(map['linuxIsolation'] as String),
    );
  }
}
