// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trust_store_ca_certificates_bundle_source/trust_store_ca_certificates_bundle_source.dart';
import '../trust_store_timeouts/trust_store_timeouts.dart';

/// The set of arguments for TrustStore.
class TrustStoreArgs {
  /// Configuration block for the CA certificates bundle source. See <span pulumi-lang-nodejs="`caCertificatesBundleSource`" pulumi-lang-dotnet="`CaCertificatesBundleSource`" pulumi-lang-go="`caCertificatesBundleSource`" pulumi-lang-python="`ca_certificates_bundle_source`" pulumi-lang-yaml="`caCertificatesBundleSource`" pulumi-lang-java="`caCertificatesBundleSource`">`ca_certificates_bundle_source`</span> below.
  ///
  /// The following arguments are optional:
  final Input<TrustStoreCaCertificatesBundleSource> caCertificatesBundleSource;

  /// Name of the trust store. Changing this forces a new resource to be created.
  final Input<String>? name;

  /// Key-value tags for the place index. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<TrustStoreTimeouts>? timeouts;

  TrustStoreArgs({
    required this.caCertificatesBundleSource,
    this.name,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caCertificatesBundleSource'] = Input.mapInputValue<
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
      map['timeouts'] =
          Input.mapOptionalInputValue<TrustStoreTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TrustStoreArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreArgs(
      caCertificatesBundleSource:
          Input.asInput<TrustStoreCaCertificatesBundleSource>(
              map['caCertificatesBundleSource']),
      name: Input.asOptionalInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<TrustStoreTimeouts>(map['timeouts']),
    );
  }
}
