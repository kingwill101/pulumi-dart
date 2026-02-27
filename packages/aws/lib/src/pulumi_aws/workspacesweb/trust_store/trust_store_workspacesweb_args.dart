// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trust_store_certificate/trust_store_certificate.dart';

/// The set of arguments for TrustStore.
class TrustStoreWorkspaceswebArgs {
  /// Set of certificates to include in the trust store. See Certificate below.
  final pulumi.Input<List<TrustStoreCertificate>>? certificates;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  TrustStoreWorkspaceswebArgs({
    this.certificates,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificatesValue = certificates;
    if (certificatesValue != null) {
      map['certificates'] = pulumi.Input.mapOptionalInputValue<
              List<TrustStoreCertificate>, List<Map<String, dynamic>>>(
          certificatesValue,
          (value) => pulumi.Input.encodeList<TrustStoreCertificate,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory TrustStoreWorkspaceswebArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreWorkspaceswebArgs(
      certificates: pulumi.Input.asOptionalInput<List<TrustStoreCertificate>>(
          map['certificates']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
