// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_ca_certificates_bundle_source.dart';
import 'trust_store_timeouts.dart';

/// {@template pulumi_cloudfront_trust_store_trust_store_args_doc}
/// The set of arguments for TrustStore.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_trust_store_trust_store_args_doc}
class TrustStoreArgs {
  /// Configuration block for the CA certificates bundle source. See `ca_certificates_bundle_source` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<TrustStoreCaCertificatesBundleSource> caCertificatesBundleSource;
  /// Name of the trust store. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<TrustStoreTimeouts>? timeouts;

  /// Creates a new [TrustStoreArgs].
  /// [caCertificatesBundleSource] Configuration block for the CA certificates bundle source. See `ca_certificates_bundle_source` below.
  /// [name] Name of the trust store. Changing this forces a new resource to be created.
  /// [tags] Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  TrustStoreArgs({
    required pulumi.Output<TrustStoreCaCertificatesBundleSource> caCertificatesBundleSource,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<TrustStoreTimeouts>? timeouts,
  }) :
      caCertificatesBundleSource = pulumi.Input.asInput<TrustStoreCaCertificatesBundleSource>(caCertificatesBundleSource),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<TrustStoreTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificatesBundleSource': pulumi.Input.mapInputValue<TrustStoreCaCertificatesBundleSource, Map<String, dynamic>>(caCertificatesBundleSource, (value) => value.toMap()),
      'name': ?name,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TrustStoreTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TrustStoreArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreArgs(
      caCertificatesBundleSource: pulumi.Output.create<TrustStoreCaCertificatesBundleSource>(TrustStoreCaCertificatesBundleSource.fromMap((map['caCertificatesBundleSource'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<TrustStoreTimeouts>(TrustStoreTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

