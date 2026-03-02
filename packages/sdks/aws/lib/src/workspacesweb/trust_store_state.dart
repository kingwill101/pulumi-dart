// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_certificate.dart';

/// Input properties used for looking up and filtering TrustStore resources.
class TrustStoreState {
  /// List of ARNs of the web portals associated with the trust store.
  final pulumi.Input<List<String>>? associatedPortalArns;
  /// Set of certificates to include in the trust store. See Certificate below.
  final pulumi.Input<List<TrustStoreCertificate>>? certificates;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the trust store.
  final pulumi.Input<String>? trustStoreArn;

  /// Creates a new [TrustStoreState].
  /// [associatedPortalArns] List of ARNs of the web portals associated with the trust store.
  /// [certificates] Set of certificates to include in the trust store. See Certificate below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [trustStoreArn] ARN of the trust store.
  TrustStoreState({
    this.associatedPortalArns,
    this.certificates,
    this.region,
    this.tags,
    this.tagsAll,
    this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedPortalArns': ?associatedPortalArns,
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<TrustStoreCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<TrustStoreCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trustStoreArn': ?trustStoreArn,
    };
  }

  factory TrustStoreState.fromMap(Map<String, dynamic> map) {
    return TrustStoreState(
      associatedPortalArns: map['associatedPortalArns'] == null ? null : ((map['associatedPortalArns'] as List).cast<String>()).input(),
      certificates: map['certificates'] == null ? null : (pulumi.Input.decodeList<TrustStoreCertificate>(map['certificates'], (value) => TrustStoreCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      trustStoreArn: map['trustStoreArn'] == null ? null : (map['trustStoreArn'] as String).input(),
    );
  }
}

