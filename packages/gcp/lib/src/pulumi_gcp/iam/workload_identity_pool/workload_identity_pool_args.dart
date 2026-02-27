// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workload_identity_pool_inline_certificate_issuance_config/workload_identity_pool_inline_certificate_issuance_config.dart';
import '../workload_identity_pool_inline_trust_config/workload_identity_pool_inline_trust_config.dart';

/// The set of arguments for WorkloadIdentityPool.
class WorkloadIdentityPoolArgs {
  /// A description of the pool. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use
  /// existing tokens to access resources. If the pool is re-enabled, existing tokens grant
  /// access again.
  final pulumi.Input<bool>? disabled;

  /// A display name for the pool. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;

  /// Represents configuration for generating mutual TLS (mTLS) certificates for the identities
  /// within this pool. Defines the Certificate Authority (CA) pool resources and configurations
  /// required for issuance and rotation of mTLS workload certificates.
  /// Structure is documented below.
  final pulumi.Input<WorkloadIdentityPoolInlineCertificateIssuanceConfig>?
      inlineCertificateIssuanceConfig;

  /// Represents config to add additional trusted trust domains. Defines configuration for extending
  /// trust to additional trust domains. By establishing trust with another domain, the current
  /// domain will recognize and accept certificates issued by entities within the trusted domains.
  /// Note that a trust domain automatically trusts itself, eliminating the need for explicit
  /// configuration.
  /// Structure is documented below.
  final pulumi.Input<WorkloadIdentityPoolInlineTrustConfig>? inlineTrustConfig;

  /// The mode for the pool is operating in. Pools with an unspecified mode will operate as if they
  /// are in `FEDERATION_ONLY` mode.
  ///
  /// > **Note** This field cannot be changed after the Workload Identity Pool is created. While
  /// `pulumi preview` may show an update if you change this field's value, `pulumi up`
  /// **will fail with an API error** (such as `Error 400: Attempted to update an immutable field.`).
  /// To specify a different `mode`, please create a new Workload Identity Pool resource.
  /// * `FEDERATION_ONLY`: Pools can only be used for federating external workload identities into
  /// Google Cloud. Unless otherwise noted, no structure or format constraints are applied to
  /// workload identities in a `FEDERATION_ONLY` mode pool, and you may not create any resources
  /// within the pool besides providers.
  /// * `TRUST_DOMAIN`: Pools can be used to assign identities to Google Cloud workloads. All
  /// identities within a `TRUST_DOMAIN` mode pool must consist of a single namespace and individual
  /// workload identifier. The subject identifier for all identities must conform to the following
  /// format: `ns/<namespace>/sa/<workload_identifier>`.
  /// `gcp.iam.WorkloadIdentityPoolProvider`s cannot be created within `TRUST_DOMAIN`
  /// mode pools.
  /// Possible values are: `FEDERATION_ONLY`, `TRUST_DOMAIN`.
  final pulumi.Input<String>? mode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workloadIdentityPoolId;

  WorkloadIdentityPoolArgs({
    this.description,
    this.disabled,
    this.displayName,
    this.inlineCertificateIssuanceConfig,
    this.inlineTrustConfig,
    this.mode,
    this.project,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final inlineCertificateIssuanceConfigValue =
        inlineCertificateIssuanceConfig;
    if (inlineCertificateIssuanceConfigValue != null) {
      map['inlineCertificateIssuanceConfig'] =
          pulumi.Input.mapOptionalInputValue<
                  WorkloadIdentityPoolInlineCertificateIssuanceConfig,
                  Map<String, dynamic>>(
              inlineCertificateIssuanceConfigValue, (value) => value.toMap());
    }
    final inlineTrustConfigValue = inlineTrustConfig;
    if (inlineTrustConfigValue != null) {
      map['inlineTrustConfig'] = pulumi.Input.mapOptionalInputValue<
              WorkloadIdentityPoolInlineTrustConfig, Map<String, dynamic>>(
          inlineTrustConfigValue, (value) => value.toMap());
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    return map;
  }

  factory WorkloadIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      inlineCertificateIssuanceConfig: pulumi.Input.asOptionalInput<
              WorkloadIdentityPoolInlineCertificateIssuanceConfig>(
          map['inlineCertificateIssuanceConfig']),
      inlineTrustConfig:
          pulumi.Input.asOptionalInput<WorkloadIdentityPoolInlineTrustConfig>(
              map['inlineTrustConfig']),
      mode: pulumi.Input.asOptionalInput<String>(map['mode']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      workloadIdentityPoolId:
          pulumi.Input.asInput<String>(map['workloadIdentityPoolId']),
    );
  }
}
