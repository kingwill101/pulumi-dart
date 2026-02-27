// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trust_store_ca_certificates_bundle_source/trust_store_ca_certificates_bundle_source.dart';
import '../trust_store_timeouts/trust_store_timeouts.dart';

/// The set of arguments for TrustStore.
class TrustStoreArgs {
  /// Configuration block for the CA certificates bundle source. See `ca_certificates_bundle_source` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<TrustStoreCaCertificatesBundleSource>
      caCertificatesBundleSource;

  /// Name of the trust store. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<TrustStoreTimeouts>? timeouts;

  TrustStoreArgs({
    required this.caCertificatesBundleSource,
    this.name,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificatesBundleSource'] = pulumi.Input.mapInputValue<
            TrustStoreCaCertificatesBundleSource, Map<String, dynamic>>(
        caCertificatesBundleSource, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<TrustStoreTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TrustStoreArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreArgs(
      caCertificatesBundleSource:
          pulumi.Input.asInput<TrustStoreCaCertificatesBundleSource>(
              map['caCertificatesBundleSource']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<TrustStoreTimeouts>(map['timeouts']),
    );
  }
}
