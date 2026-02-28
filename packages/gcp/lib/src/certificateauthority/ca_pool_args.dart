// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_encryption_spec.dart';
import 'ca_pool_issuance_policy.dart';
import 'ca_pool_publishing_options.dart';

/// {@template pulumi_certificateauthority_ca_pool_ca_pool_args_doc}
/// The set of arguments for CaPool.
/// {@endtemplate}
/// {@macro pulumi_certificateauthority_ca_pool_ca_pool_args_doc}
class CaPoolArgs {
  /// Used when customer would like to encrypt data at rest. The customer-provided key will be used
  /// to encrypt the Subject, SubjectAltNames and PEM-encoded certificate fields. When unspecified,
  /// customer data will remain unencrypted.
  /// Structure is documented below.
  final pulumi.Input<CaPoolEncryptionSpec>? encryptionSpec;
  /// The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// Structure is documented below.
  final pulumi.Input<CaPoolIssuancePolicy>? issuancePolicy;
  /// Labels with user-defined metadata.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass":
  /// "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location of the CaPool. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  final pulumi.Input<String> location;
  /// The name for this CaPool.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// Structure is documented below.
  final pulumi.Input<CaPoolPublishingOptions>? publishingOptions;
  /// The Tier of this CaPool.
  /// Possible values are: `ENTERPRISE`, `DEVOPS`.
  final pulumi.Input<String> tier;

  /// Creates a new [CaPoolArgs].
  /// [encryptionSpec] Used when customer would like to encrypt data at rest. The customer-provided key will be used
  /// [issuancePolicy] The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// [labels] Labels with user-defined metadata.
  /// [location] Location of the CaPool. A full list of valid locations can be found by
  /// [name] The name for this CaPool.
  /// [project] The ID of the project in which the resource belongs.
  /// [publishingOptions] The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// [tier] The Tier of this CaPool.
  CaPoolArgs({
    CaPoolEncryptionSpec? encryptionSpec,
    CaPoolIssuancePolicy? issuancePolicy,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
    CaPoolPublishingOptions? publishingOptions,
    required String tier,
  }) :
      encryptionSpec = pulumi.Input.asOptionalInput<CaPoolEncryptionSpec>(encryptionSpec),
      issuancePolicy = pulumi.Input.asOptionalInput<CaPoolIssuancePolicy>(issuancePolicy),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      publishingOptions = pulumi.Input.asOptionalInput<CaPoolPublishingOptions>(publishingOptions),
      tier = pulumi.Input.asInput<String>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<CaPoolEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'issuancePolicy': ?pulumi.Input.mapOptionalInputValue<CaPoolIssuancePolicy, Map<String, dynamic>>(issuancePolicy, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'publishingOptions': ?pulumi.Input.mapOptionalInputValue<CaPoolPublishingOptions, Map<String, dynamic>>(publishingOptions, (value) => value.toMap()),
      'tier': tier,
    };
  }

  factory CaPoolArgs.fromMap(Map<String, dynamic> map) {
    return CaPoolArgs(
      encryptionSpec: map['encryptionSpec'] == null ? null : CaPoolEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>()),
      issuancePolicy: map['issuancePolicy'] == null ? null : CaPoolIssuancePolicy.fromMap((map['issuancePolicy'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      publishingOptions: map['publishingOptions'] == null ? null : CaPoolPublishingOptions.fromMap((map['publishingOptions'] as Map).cast<String, dynamic>()),
      tier: map['tier'] as String,
    );
  }
}

