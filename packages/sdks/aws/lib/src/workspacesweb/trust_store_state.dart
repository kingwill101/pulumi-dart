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
    pulumi.Output<List<String>>? associatedPortalArns,
    pulumi.Output<List<TrustStoreCertificate>>? certificates,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? trustStoreArn,
  }) :
      associatedPortalArns = pulumi.Input.asOptionalInput<List<String>>(associatedPortalArns),
      certificates = pulumi.Input.asOptionalInput<List<TrustStoreCertificate>>(certificates),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      trustStoreArn = pulumi.Input.asOptionalInput<String>(trustStoreArn);

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
      associatedPortalArns: map['associatedPortalArns'] == null ? null : pulumi.Output.create<List<String>>((map['associatedPortalArns'] as List).cast<String>()),
      certificates: map['certificates'] == null ? null : pulumi.Output.create<List<TrustStoreCertificate>>(pulumi.Input.decodeList<TrustStoreCertificate>(map['certificates'], (value) => TrustStoreCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      trustStoreArn: map['trustStoreArn'] == null ? null : pulumi.Output.create<String>(map['trustStoreArn'] as String),
    );
  }
}

