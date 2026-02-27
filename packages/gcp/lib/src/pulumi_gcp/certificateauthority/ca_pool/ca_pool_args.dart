// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ca_pool_encryption_spec/ca_pool_encryption_spec.dart';
import '../ca_pool_issuance_policy/ca_pool_issuance_policy.dart';
import '../ca_pool_publishing_options/ca_pool_publishing_options.dart';

/// The set of arguments for CaPool.
class CaPoolArgs {
  /// Used when customer would like to encrypt data at rest. The customer-provided key will be used
  /// to encrypt the Subject, SubjectAltNames and PEM-encoded certificate fields. When unspecified,
  /// customer data will remain unencrypted.
  /// Structure is documented below.
  final Input<CaPoolEncryptionSpec>? encryptionSpec;

  /// The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// Structure is documented below.
  final Input<CaPoolIssuancePolicy>? issuancePolicy;

  /// Labels with user-defined metadata.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass":
  /// "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location of the CaPool. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  final Input<String> location;

  /// The name for this CaPool.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// Structure is documented below.
  final Input<CaPoolPublishingOptions>? publishingOptions;

  /// The Tier of this CaPool.
  /// Possible values are: `ENTERPRISE`, `DEVOPS`.
  final Input<String> tier;

  CaPoolArgs({
    this.encryptionSpec,
    this.issuancePolicy,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.publishingOptions,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<CaPoolEncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final issuancePolicyValue = issuancePolicy;
    if (issuancePolicyValue != null) {
      map['issuancePolicy'] = Input.mapOptionalInputValue<CaPoolIssuancePolicy,
          Map<String, dynamic>>(issuancePolicyValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publishingOptionsValue = publishingOptions;
    if (publishingOptionsValue != null) {
      map['publishingOptions'] = Input.mapOptionalInputValue<
              CaPoolPublishingOptions, Map<String, dynamic>>(
          publishingOptionsValue, (value) => value.toMap());
    }
    map['tier'] = tier;
    return map;
  }

  factory CaPoolArgs.fromMap(Map<String, dynamic> map) {
    return CaPoolArgs(
      encryptionSpec:
          Input.asOptionalInput<CaPoolEncryptionSpec>(map['encryptionSpec']),
      issuancePolicy:
          Input.asOptionalInput<CaPoolIssuancePolicy>(map['issuancePolicy']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      publishingOptions: Input.asOptionalInput<CaPoolPublishingOptions>(
          map['publishingOptions']),
      tier: Input.asInput<String>(map['tier']),
    );
  }
}
