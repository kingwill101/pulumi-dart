// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_tier.dart';
import 'issuance_policy.dart';
import 'publishing_options.dart';

/// {@template pulumi_privateca_v1_ca_pool_args_doc}
/// The set of arguments for CaPool.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_ca_pool_args_doc}
class CaPoolArgs {
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> caPoolId;
  /// Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.
  final pulumi.Input<IssuancePolicy>? issuancePolicy;
  /// Optional. Labels with user-defined metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  final pulumi.Input<PublishingOptions>? publishingOptions;
  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Immutable. The Tier of this CaPool.
  final pulumi.Input<CaPoolTier> tier;

  /// Creates a new [CaPoolArgs].
  /// [caPoolId] Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  /// [issuancePolicy] Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// [labels] Optional. Labels with user-defined metadata.
  /// [location] Optional.
  /// [project] Optional.
  /// [publishingOptions] Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// [requestId] Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [tier] Immutable. The Tier of this CaPool.
  CaPoolArgs({
    required String caPoolId,
    IssuancePolicy? issuancePolicy,
    Map<String, String>? labels,
    String? location,
    String? project,
    PublishingOptions? publishingOptions,
    String? requestId,
    required CaPoolTier tier,
  }) :
      caPoolId = pulumi.Input.asInput<String>(caPoolId),
      issuancePolicy = pulumi.Input.asOptionalInput<IssuancePolicy>(issuancePolicy),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      publishingOptions = pulumi.Input.asOptionalInput<PublishingOptions>(publishingOptions),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      tier = pulumi.Input.asInput<CaPoolTier>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'issuancePolicy': ?pulumi.Input.mapOptionalInputValue<IssuancePolicy, Map<String, dynamic>>(issuancePolicy, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'publishingOptions': ?pulumi.Input.mapOptionalInputValue<PublishingOptions, Map<String, dynamic>>(publishingOptions, (value) => value.toMap()),
      'requestId': ?requestId,
      'tier': pulumi.Input.mapInputValue<CaPoolTier, String>(tier, (value) => value.value),
    };
  }

  factory CaPoolArgs.fromMap(Map<String, dynamic> map) {
    return CaPoolArgs(
      caPoolId: map['caPoolId'] as String,
      issuancePolicy: map['issuancePolicy'] == null ? null : IssuancePolicy.fromMap((map['issuancePolicy'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      publishingOptions: map['publishingOptions'] == null ? null : PublishingOptions.fromMap((map['publishingOptions'] as Map).cast<String, dynamic>()),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      tier: CaPoolTier.fromValue(map['tier'] as String),
    );
  }
}

