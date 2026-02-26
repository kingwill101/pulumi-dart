// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'custom_domain_cert_preference.dart';

/// The set of arguments for CustomDomain.
class CustomDomainArgs {
  /// Annotations you can add to leave both human- and machine-readable metadata about your `CustomDomain`.
  final Input<Map<String, String>>? annotations;

  /// A field that lets you specify which SSL certificate type Hosting creates for your domain name. Spark plan custom domains only have access to the `GROUPED` cert type, while Blaze plan domains can select any option.
  final Input<CustomDomainCertPreference>? certPreference;

  /// Required. The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  final Input<String> customDomainId;

  /// Labels used for extra metadata and/or filtering.
  final Input<Map<String, String>>? labels;
  final Input<String>? project;

  /// A domain name that this `CustomDomain` should direct traffic towards. If specified, Hosting will respond to requests against this custom domain with an HTTP 301 code, and route traffic to the specified `redirect_target` instead.
  final Input<String>? redirectTarget;
  final Input<String> siteId;

  CustomDomainArgs({
    this.annotations,
    this.certPreference,
    required this.customDomainId,
    this.labels,
    this.project,
    this.redirectTarget,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final certPreferenceValue = certPreference;
    if (certPreferenceValue != null) {
      map['certPreference'] =
          Input.mapOptionalInputValue<CustomDomainCertPreference, String>(
              certPreferenceValue, (value) => value.value);
    }
    map['customDomainId'] = customDomainId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final redirectTargetValue = redirectTarget;
    if (redirectTargetValue != null) {
      map['redirectTarget'] = redirectTargetValue;
    }
    map['siteId'] = siteId;
    return map;
  }

  factory CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      certPreference: Input.asOptionalInput<CustomDomainCertPreference>(
          map['certPreference']),
      customDomainId: Input.asInput<String>(map['customDomainId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      redirectTarget: Input.asOptionalInput<String>(map['redirectTarget']),
      siteId: Input.asInput<String>(map['siteId']),
    );
  }
}
