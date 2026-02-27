// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trust_config_allowlisted_certificate/trust_config_allowlisted_certificate.dart';
import '../trust_config_trust_store/trust_config_trust_store.dart';

/// The set of arguments for TrustConfig.
class TrustConfigArgs {
  /// Allowlisted PEM-encoded certificates. A certificate matching an allowlisted certificate is always considered valid as long as
  /// the certificate is parseable, proof of private key possession is established, and constraints on the certificate's SAN field are met.
  /// Structure is documented below.
  final pulumi.Input<List<TrustConfigAllowlistedCertificate>>?
      allowlistedCertificates;

  /// One or more paragraphs of text description of a trust config.
  final pulumi.Input<String>? description;

  /// Set of label tags associated with the trust config.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The trust config location.
  final pulumi.Input<String> location;

  /// A user-defined name of the trust config. Trust config names must be unique globally.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Set of trust stores to perform validation against.
  /// This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation.
  /// Structure is documented below.
  final pulumi.Input<List<TrustConfigTrustStore>>? trustStores;

  TrustConfigArgs({
    this.allowlistedCertificates,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.trustStores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowlistedCertificatesValue = allowlistedCertificates;
    if (allowlistedCertificatesValue != null) {
      map['allowlistedCertificates'] = pulumi.Input.mapOptionalInputValue<
              List<TrustConfigAllowlistedCertificate>,
              List<Map<String, dynamic>>>(
          allowlistedCertificatesValue,
          (value) => pulumi.Input.encodeList<TrustConfigAllowlistedCertificate,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
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
    final trustStoresValue = trustStores;
    if (trustStoresValue != null) {
      map['trustStores'] = pulumi.Input.mapOptionalInputValue<
              List<TrustConfigTrustStore>, List<Map<String, dynamic>>>(
          trustStoresValue,
          (value) => pulumi.Input.encodeList<TrustConfigTrustStore,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory TrustConfigArgs.fromMap(Map<String, dynamic> map) {
    return TrustConfigArgs(
      allowlistedCertificates:
          pulumi.Input.asOptionalInput<List<TrustConfigAllowlistedCertificate>>(
              map['allowlistedCertificates']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      trustStores: pulumi.Input.asOptionalInput<List<TrustConfigTrustStore>>(
          map['trustStores']),
    );
  }
}
