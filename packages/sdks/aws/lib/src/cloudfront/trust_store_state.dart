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
    pulumi.Output<String>? arn,
    pulumi.Output<TrustStoreCaCertificatesBundleSource>? caCertificatesBundleSource,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? name,
    pulumi.Output<int>? numberOfCaCertificates,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<TrustStoreTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      caCertificatesBundleSource = pulumi.Input.asOptionalInput<TrustStoreCaCertificatesBundleSource>(caCertificatesBundleSource),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      name = pulumi.Input.asOptionalInput<String>(name),
      numberOfCaCertificates = pulumi.Input.asOptionalInput<int>(numberOfCaCertificates),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<TrustStoreTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      caCertificatesBundleSource: map['caCertificatesBundleSource'] == null ? null : pulumi.Output.create<TrustStoreCaCertificatesBundleSource>(TrustStoreCaCertificatesBundleSource.fromMap((map['caCertificatesBundleSource'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      numberOfCaCertificates: map['numberOfCaCertificates'] == null ? null : pulumi.Output.create<int>(map['numberOfCaCertificates'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<TrustStoreTimeouts>(TrustStoreTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

