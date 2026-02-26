// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ca_pool_tier.dart';
import 'issuance_policy.dart';
import 'publishing_options.dart';

/// The set of arguments for CaPool.
class CaPoolArgs {
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final Input<String> caPoolId;

  /// Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.
  final Input<IssuancePolicy>? issuancePolicy;

  /// Optional. Labels with user-defined metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  final Input<PublishingOptions>? publishingOptions;

  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Immutable. The Tier of this CaPool.
  final Input<CaPoolTier> tier;

  CaPoolArgs({
    required this.caPoolId,
    this.issuancePolicy,
    this.labels,
    this.location,
    this.project,
    this.publishingOptions,
    this.requestId,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPoolId'] = caPoolId;
    final issuancePolicyValue = issuancePolicy;
    if (issuancePolicyValue != null) {
      map['issuancePolicy'] =
          Input.mapOptionalInputValue<IssuancePolicy, Map<String, dynamic>>(
              issuancePolicyValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publishingOptionsValue = publishingOptions;
    if (publishingOptionsValue != null) {
      map['publishingOptions'] =
          Input.mapOptionalInputValue<PublishingOptions, Map<String, dynamic>>(
              publishingOptionsValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['tier'] =
        Input.mapInputValue<CaPoolTier, String>(tier, (value) => value.value);
    return map;
  }

  factory CaPoolArgs.fromMap(Map<String, dynamic> map) {
    return CaPoolArgs(
      caPoolId: Input.asInput<String>(map['caPoolId']),
      issuancePolicy:
          Input.asOptionalInput<IssuancePolicy>(map['issuancePolicy']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      publishingOptions:
          Input.asOptionalInput<PublishingOptions>(map['publishingOptions']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      tier: Input.asInput<CaPoolTier>(map['tier']),
    );
  }
}
