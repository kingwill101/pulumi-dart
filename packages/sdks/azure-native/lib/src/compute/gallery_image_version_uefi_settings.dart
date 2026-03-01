// ignore_for_file: unused_element, unnecessary_cast

import 'uefi_key_signatures.dart';

/// Contains UEFI settings for the image version.
class GalleryImageVersionUefiSettings {
  /// Additional UEFI key signatures that will be added to the image in addition to the signature templates
  final UefiKeySignatures? additionalSignatures;
  /// The name of the template(s) that contains default UEFI key signatures that will be added to the image.
  final List<String>? signatureTemplateNames;

  /// Creates a new [GalleryImageVersionUefiSettings].
  /// [additionalSignatures] Additional UEFI key signatures that will be added to the image in addition to the signature templates
  /// [signatureTemplateNames] The name of the template(s) that contains default UEFI key signatures that will be added to the image.
  GalleryImageVersionUefiSettings({
    this.additionalSignatures,
    this.signatureTemplateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSignatures': ?additionalSignatures == null ? null : additionalSignatures!.toMap(),
      'signatureTemplateNames': ?signatureTemplateNames,
    };
  }

  factory GalleryImageVersionUefiSettings.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionUefiSettings(
      additionalSignatures: map['additionalSignatures'] == null ? null : UefiKeySignatures.fromMap((map['additionalSignatures'] as Map).cast<String, dynamic>()),
      signatureTemplateNames: map['signatureTemplateNames'] == null ? null : (map['signatureTemplateNames'] as List).cast<String>(),
    );
  }
}

