// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uefi_key_signatures_response.dart';

/// Contains UEFI settings for the image version.
class GalleryImageVersionUefiSettingsResponse {
  /// Additional UEFI key signatures that will be added to the image in addition to the signature templates
  final pulumi.Input<UefiKeySignaturesResponse>? additionalSignatures;
  /// The name of the template(s) that contains default UEFI key signatures that will be added to the image.
  final pulumi.Input<List<String>>? signatureTemplateNames;

  /// Creates a new [GalleryImageVersionUefiSettingsResponse].
  /// [additionalSignatures] Additional UEFI key signatures that will be added to the image in addition to the signature templates
  /// [signatureTemplateNames] The name of the template(s) that contains default UEFI key signatures that will be added to the image.
  GalleryImageVersionUefiSettingsResponse({
    this.additionalSignatures,
    this.signatureTemplateNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSignatures': ?pulumi.Input.mapOptionalInputValue<UefiKeySignaturesResponse, Map<String, dynamic>>(additionalSignatures, (value) => value.toMap()),
      'signatureTemplateNames': ?signatureTemplateNames,
    };
  }

  factory GalleryImageVersionUefiSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageVersionUefiSettingsResponse(
      additionalSignatures: map['additionalSignatures'] == null ? null : (UefiKeySignaturesResponse.fromMap((map['additionalSignatures'] as Map).cast<String, dynamic>())).input(),
      signatureTemplateNames: map['signatureTemplateNames'] == null ? null : ((map['signatureTemplateNames'] as List).cast<String>()).input(),
    );
  }
}

