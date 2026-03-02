// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_certificate.dart';

/// {@template pulumi_workspacesweb_trust_store_trust_store_args_doc}
/// The set of arguments for TrustStore.
/// {@endtemplate}
/// {@macro pulumi_workspacesweb_trust_store_trust_store_args_doc}
class TrustStoreArgs {
  /// Set of certificates to include in the trust store. See Certificate below.
  final pulumi.Input<List<TrustStoreCertificate>>? certificates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TrustStoreArgs].
  /// [certificates] Set of certificates to include in the trust store. See Certificate below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TrustStoreArgs({
    this.certificates,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<TrustStoreCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<TrustStoreCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory TrustStoreArgs.fromMap(Map<String, dynamic> map) {
    return TrustStoreArgs(
      certificates: map['certificates'] == null ? null : ((pulumi.Input.decodeList<TrustStoreCertificate>(map['certificates']!, (value) => TrustStoreCertificate.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

