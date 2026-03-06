// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uefi_key_signatures.dart';

/// Contains UEFI settings for the image version.
class GalleryImageVersionUefiSettings {
  /// Additional UEFI key signatures that will be added to the image in addition to the signature templates
  final pulumi.Input<UefiKeySignatures>? additionalSignatures;
  /// The name of the template(s) that contains default UEFI key signatures that will be added to the image.
  final pulumi.Input<List<String>>? signatureTemplateNames;

  /// Creates a new [GalleryImageVersionUefiSettings].
  /// [additionalSignatures] Additional UEFI key signatures that will be added to the image in addition to the signature templates
  /// [signatureTemplateNames] The name of the template(s) that contains default UEFI key signatures that will be added to the image.
  const GalleryImageVersionUefiSettings({
    this.additionalSignatures,
    this.signatureTemplateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSignatures': ?pulumi.Input.mapOptionalInputValue<UefiKeySignatures, Map<String, dynamic>>(additionalSignatures, (value) => value.toMap()),
      'signatureTemplateNames': ?signatureTemplateNames,
    };
  }

  factory GalleryImageVersionUefiSettings.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionUefiSettings(
      additionalSignatures: (() { final guardedValue = map['additionalSignatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UefiKeySignatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signatureTemplateNames: (() { final guardedValue = map['signatureTemplateNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

