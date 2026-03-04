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
      'certificates':
          ?pulumi.Input.mapOptionalInputValue<
            List<TrustStoreCertificate>,
            List<Map<String, dynamic>>
          >(
            certificates,
            (value) =>
                pulumi.Input.encodeList<
                  TrustStoreCertificate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trustStoreArn': ?trustStoreArn,
    };
  }

  factory TrustStoreState.fromMap(Map<String, dynamic> map) {
    return TrustStoreState(
      associatedPortalArns: (() {
        final guardedValue = map['associatedPortalArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      certificates: (() {
        final guardedValue = map['certificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TrustStoreCertificate>(
            guardedValue,
            (value) => TrustStoreCertificate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      trustStoreArn: (() {
        final guardedValue = map['trustStoreArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
