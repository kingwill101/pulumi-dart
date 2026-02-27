// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../attached_cluster_authorization/attached_cluster_authorization.dart';
import '../attached_cluster_binary_authorization/attached_cluster_binary_authorization.dart';
import '../attached_cluster_fleet/attached_cluster_fleet.dart';
import '../attached_cluster_logging_config/attached_cluster_logging_config.dart';
import '../attached_cluster_monitoring_config/attached_cluster_monitoring_config.dart';
import '../attached_cluster_oidc_config/attached_cluster_oidc_config.dart';
import '../attached_cluster_proxy_config/attached_cluster_proxy_config.dart';
import '../attached_cluster_security_posture_config/attached_cluster_security_posture_config.dart';

/// The set of arguments for AttachedCluster.
class AttachedClusterArgs {
  /// Optional. Annotations on the cluster. This field has the same
  /// restrictions as Kubernetes annotations. The total size of all keys and
  /// values combined is limited to 256k. Key can have 2 segments: prefix (optional)
  /// and name (required), separated by a slash (/). Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// Configuration related to the cluster RBAC settings.
  /// Structure is documented below.
  final Input<AttachedClusterAuthorization>? authorization;

  /// Binary Authorization configuration.
  /// Structure is documented below.
  final Input<AttachedClusterBinaryAuthorization>? binaryAuthorization;

  /// Policy to determine what flags to send on delete. Possible values: DELETE, DELETE_IGNORE_ERRORS
  final Input<String>? deletionPolicy;

  /// A human readable description of this attached cluster. Cannot be longer
  /// than 255 UTF-8 encoded bytes.
  final Input<String>? description;

  /// The Kubernetes distribution of the underlying attached cluster. Supported values:
  /// "eks", "aks", "generic". The generic distribution provides the ability to register
  /// or migrate any CNCF conformant cluster.
  final Input<String> distribution;

  /// Fleet configuration.
  /// Structure is documented below.
  final Input<AttachedClusterFleet> fleet;

  /// The location for the resource
  final Input<String> location;

  /// Logging configuration.
  /// Structure is documented below.
  final Input<AttachedClusterLoggingConfig>? loggingConfig;

  /// Monitoring configuration.
  /// Structure is documented below.
  final Input<AttachedClusterMonitoringConfig>? monitoringConfig;

  /// The name of this resource.
  final Input<String>? name;

  /// OIDC discovery information of the target cluster.
  /// Kubernetes Service Account (KSA) tokens are JWT tokens signed by the cluster
  /// API server. This fields indicates how GCP services
  /// validate KSA tokens in order to allow system workloads (such as GKE Connect
  /// and telemetry agents) to authenticate back to GCP.
  /// Both clusters with public and private issuer URLs are supported.
  /// Clusters with public issuers only need to specify the `issuer_url` field
  /// while clusters with private issuers need to provide both
  /// `issuer_url` and `jwks`.
  /// Structure is documented below.
  final Input<AttachedClusterOidcConfig> oidcConfig;

  /// The platform version for the cluster (e.g. `1.23.0-gke.1`).
  final Input<String> platformVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Support for proxy configuration.
  /// Structure is documented below.
  final Input<AttachedClusterProxyConfig>? proxyConfig;

  /// (Optional, Deprecated)
  /// Enable/Disable Security Posture API features for the cluster.
  /// Structure is documented below.
  ///
  /// > **Warning:** `security_posture_config` is deprecated and will be removed in a future major release.
  final Input<AttachedClusterSecurityPostureConfig>? securityPostureConfig;

  AttachedClusterArgs({
    this.annotations,
    this.authorization,
    this.binaryAuthorization,
    this.deletionPolicy,
    this.description,
    required this.distribution,
    required this.fleet,
    required this.location,
    this.loggingConfig,
    this.monitoringConfig,
    this.name,
    required this.oidcConfig,
    required this.platformVersion,
    this.project,
    this.proxyConfig,
    this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final authorizationValue = authorization;
    if (authorizationValue != null) {
      map['authorization'] = Input.mapOptionalInputValue<
          AttachedClusterAuthorization,
          Map<String, dynamic>>(authorizationValue, (value) => value.toMap());
    }
    final binaryAuthorizationValue = binaryAuthorization;
    if (binaryAuthorizationValue != null) {
      map['binaryAuthorization'] = Input.mapOptionalInputValue<
              AttachedClusterBinaryAuthorization, Map<String, dynamic>>(
          binaryAuthorizationValue, (value) => value.toMap());
    }
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['distribution'] = distribution;
    map['fleet'] =
        Input.mapInputValue<AttachedClusterFleet, Map<String, dynamic>>(
            fleet, (value) => value.toMap());
    map['location'] = location;
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = Input.mapOptionalInputValue<
          AttachedClusterLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final monitoringConfigValue = monitoringConfig;
    if (monitoringConfigValue != null) {
      map['monitoringConfig'] = Input.mapOptionalInputValue<
              AttachedClusterMonitoringConfig, Map<String, dynamic>>(
          monitoringConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['oidcConfig'] =
        Input.mapInputValue<AttachedClusterOidcConfig, Map<String, dynamic>>(
            oidcConfig, (value) => value.toMap());
    map['platformVersion'] = platformVersion;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyConfigValue = proxyConfig;
    if (proxyConfigValue != null) {
      map['proxyConfig'] = Input.mapOptionalInputValue<
          AttachedClusterProxyConfig,
          Map<String, dynamic>>(proxyConfigValue, (value) => value.toMap());
    }
    final securityPostureConfigValue = securityPostureConfig;
    if (securityPostureConfigValue != null) {
      map['securityPostureConfig'] = Input.mapOptionalInputValue<
              AttachedClusterSecurityPostureConfig, Map<String, dynamic>>(
          securityPostureConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory AttachedClusterArgs.fromMap(Map<String, dynamic> map) {
    return AttachedClusterArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      authorization: Input.asOptionalInput<AttachedClusterAuthorization>(
          map['authorization']),
      binaryAuthorization:
          Input.asOptionalInput<AttachedClusterBinaryAuthorization>(
              map['binaryAuthorization']),
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      distribution: Input.asInput<String>(map['distribution']),
      fleet: Input.asInput<AttachedClusterFleet>(map['fleet']),
      location: Input.asInput<String>(map['location']),
      loggingConfig: Input.asOptionalInput<AttachedClusterLoggingConfig>(
          map['loggingConfig']),
      monitoringConfig: Input.asOptionalInput<AttachedClusterMonitoringConfig>(
          map['monitoringConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      oidcConfig: Input.asInput<AttachedClusterOidcConfig>(map['oidcConfig']),
      platformVersion: Input.asInput<String>(map['platformVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      proxyConfig:
          Input.asOptionalInput<AttachedClusterProxyConfig>(map['proxyConfig']),
      securityPostureConfig:
          Input.asOptionalInput<AttachedClusterSecurityPostureConfig>(
              map['securityPostureConfig']),
    );
  }
}
