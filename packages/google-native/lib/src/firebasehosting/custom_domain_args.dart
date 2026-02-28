// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_cert_preference.dart';

/// {@template pulumi_firebasehosting_v1beta1_custom_domain_args_doc}
/// The set of arguments for CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_custom_domain_args_doc}
class CustomDomainArgs {
  /// Annotations you can add to leave both human- and machine-readable metadata about your `CustomDomain`.
  final pulumi.Input<Map<String, String>>? annotations;
  /// A field that lets you specify which SSL certificate type Hosting creates for your domain name. Spark plan custom domains only have access to the `GROUPED` cert type, while Blaze plan domains can select any option.
  final pulumi.Input<CustomDomainCertPreference>? certPreference;
  /// Required. The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  final pulumi.Input<String> customDomainId;
  /// Labels used for extra metadata and/or filtering.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;
  /// A domain name that this `CustomDomain` should direct traffic towards. If specified, Hosting will respond to requests against this custom domain with an HTTP 301 code, and route traffic to the specified `redirect_target` instead.
  final pulumi.Input<String>? redirectTarget;
  final pulumi.Input<String> siteId;

  /// Creates a new [CustomDomainArgs].
  /// [annotations] Annotations you can add to leave both human- and machine-readable metadata about your `CustomDomain`.
  /// [certPreference] A field that lets you specify which SSL certificate type Hosting creates for your domain name. Spark plan custom domains only have access to the `GROUPED` cert type, while Blaze plan domains can select any option.
  /// [customDomainId] Required. The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  /// [labels] Labels used for extra metadata and/or filtering.
  /// [project] Optional.
  /// [redirectTarget] A domain name that this `CustomDomain` should direct traffic towards. If specified, Hosting will respond to requests against this custom domain with an HTTP 301 code, and route traffic to the specified `redirect_target` instead.
  /// [siteId] Required.
  CustomDomainArgs({
    Map<String, String>? annotations,
    CustomDomainCertPreference? certPreference,
    required String customDomainId,
    Map<String, String>? labels,
    String? project,
    String? redirectTarget,
    required String siteId,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      certPreference = pulumi.Input.asOptionalInput<CustomDomainCertPreference>(certPreference),
      customDomainId = pulumi.Input.asInput<String>(customDomainId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project),
      redirectTarget = pulumi.Input.asOptionalInput<String>(redirectTarget),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'certPreference': ?pulumi.Input.mapOptionalInputValue<CustomDomainCertPreference, String>(certPreference, (value) => value.value),
      'customDomainId': customDomainId,
      'labels': ?labels,
      'project': ?project,
      'redirectTarget': ?redirectTarget,
      'siteId': siteId,
    };
  }

  factory CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      certPreference: map['certPreference'] == null ? null : CustomDomainCertPreference.fromValue(map['certPreference'] as String),
      customDomainId: map['customDomainId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      redirectTarget: map['redirectTarget'] == null ? null : map['redirectTarget'] as String,
      siteId: map['siteId'] as String,
    );
  }
}

