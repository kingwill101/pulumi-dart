// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trust_store_certificate/trust_store_certificate.dart';

/// The set of arguments for TrustStore.
class TrustStoreArgs3 {
  /// Set of certificates to include in the trust store. See Certificate below.
  final Input<List<TrustStoreCertificate>>? certificates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  TrustStoreArgs3({
    this.certificates,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificatesValue = certificates;
    if (certificatesValue != null) {
      map['certificates'] = Input.mapOptionalInputValue<
              List<TrustStoreCertificate>, List<Map<String, dynamic>>>(
          certificatesValue,
          (value) =>
              Input.encodeList<TrustStoreCertificate, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TrustStoreArgs3.fromMap(Map<String, dynamic> map) {
    return TrustStoreArgs3(
      certificates: Input.asOptionalInput<List<TrustStoreCertificate>>(
          map['certificates']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
