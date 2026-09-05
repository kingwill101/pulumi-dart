// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_ca_certificates_bundle_source.dart';
import 'trust_store_timeouts.dart';

/// Input properties used for looking up and filtering TrustStore resources.
class TrustStoreState {
  /// ARN of the trust store.
  final pulumi.Input<String?>? arn;
  /// Configuration block for the CA certificates bundle source. See `caCertificatesBundleSource` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<TrustStoreCaCertificatesBundleSource?>? caCertificatesBundleSource;
  /// ETag of the trust store.
  final pulumi.Input<String?>? etag;
  /// Name of the trust store. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Number of CA certificates in the trust store.
  final pulumi.Input<int?>? numberOfCaCertificates;
  /// Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<TrustStoreTimeouts?>? timeouts;

  /// Creates a new [TrustStoreState].
  /// [arn] ARN of the trust store.
  /// [caCertificatesBundleSource] Configuration block for the CA certificates bundle source. See `caCertificatesBundleSource` below.
  /// [etag] ETag of the trust store.
  /// [name] Name of the trust store. Changing this forces a new resource to be created.
  /// [numberOfCaCertificates] Number of CA certificates in the trust store.
  /// [tags] Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const TrustStoreState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caCertificatesBundleSource: (() { final guardedValue = map['caCertificatesBundleSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustStoreCaCertificatesBundleSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfCaCertificates: (() { final guardedValue = map['numberOfCaCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
