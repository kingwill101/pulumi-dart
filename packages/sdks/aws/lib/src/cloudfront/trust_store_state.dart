// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_ca_certificates_bundle_source.dart';
import 'trust_store_timeouts.dart';

/// Input properties used for looking up and filtering TrustStore resources.
class TrustStoreState {
  /// ARN of the trust store.
  final pulumi.Input<String>? arn;
  /// Configuration block for the CA certificates bundle source. See `ca_certificates_bundle_source` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<TrustStoreCaCertificatesBundleSource>? caCertificatesBundleSource;
  /// ETag of the trust store.
  final pulumi.Input<String>? etag;
  /// Name of the trust store. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Number of CA certificates in the trust store.
  final pulumi.Input<int>? numberOfCaCertificates;
  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<TrustStoreTimeouts>? timeouts;

  /// Creates a new [TrustStoreState].
  /// [arn] ARN of the trust store.
  /// [caCertificatesBundleSource] Configuration block for the CA certificates bundle source. See `ca_certificates_bundle_source` below.
  /// [etag] ETag of the trust store.
  /// [name] Name of the trust store. Changing this forces a new resource to be created.
  /// [numberOfCaCertificates] Number of CA certificates in the trust store.
  /// [tags] Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  TrustStoreState({
    this.arn,
    this.caCertificatesBundleSource,
    this.etag,
    this.name,
    this.numberOfCaCertificates,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'caCertificatesBundleSource': ?pulumi.Input.mapOptionalInputValue<TrustStoreCaCertificatesBundleSource, Map<String, dynamic>>(caCertificatesBundleSource, (value) => value.toMap()),
      'etag': ?etag,
      'name': ?name,
      'numberOfCaCertificates': ?numberOfCaCertificates,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TrustStoreTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TrustStoreState.fromMap(Map<String, dynamic> map) {
    return TrustStoreState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      caCertificatesBundleSource: map['caCertificatesBundleSource'] == null ? null : ((TrustStoreCaCertificatesBundleSource.fromMap((map['caCertificatesBundleSource']! as Map).cast<String, dynamic>())).input()).input(),
      etag: map['etag'] == null ? null : ((map['etag'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      numberOfCaCertificates: map['numberOfCaCertificates'] == null ? null : ((map['numberOfCaCertificates'] as int).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((TrustStoreTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

