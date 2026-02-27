// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_template_passthrough_extensions_additional_extension/certificate_template_passthrough_extensions_additional_extension.dart';

class CertificateTemplatePassthroughExtensions {
  /// Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
  /// Structure is documented below.
  final List<CertificateTemplatePassthroughExtensionsAdditionalExtension>?
      additionalExtensions;

  /// Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
  final List<String>? knownExtensions;

  CertificateTemplatePassthroughExtensions({
    this.additionalExtensions,
    this.knownExtensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalExtensionsValue = additionalExtensions;
    if (additionalExtensionsValue != null) {
      map['additionalExtensions'] = pulumi.Input.encodeList<
              CertificateTemplatePassthroughExtensionsAdditionalExtension,
              Map<String, dynamic>>(
          additionalExtensionsValue, (value) => value.toMap());
    }
    final knownExtensionsValue = knownExtensions;
    if (knownExtensionsValue != null) {
      map['knownExtensions'] = knownExtensionsValue;
    }
    return map;
  }

  factory CertificateTemplatePassthroughExtensions.fromMap(
      Map<String, dynamic> map) {
    return CertificateTemplatePassthroughExtensions(
      additionalExtensions: map['additionalExtensions'] == null
          ? null
          : pulumi.Input.decodeList<
                  CertificateTemplatePassthroughExtensionsAdditionalExtension>(
              map['additionalExtensions'],
              (value) =>
                  CertificateTemplatePassthroughExtensionsAdditionalExtension
                      .fromMap((value as Map).cast<String, dynamic>())),
      knownExtensions: map['knownExtensions'] == null
          ? null
          : (map['knownExtensions'] as List).cast<String>(),
    );
  }
}
