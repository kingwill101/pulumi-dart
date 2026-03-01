// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmgallery_application_response.dart';

/// Contains the list of gallery applications that should be made available to the
/// VM/VMSS
class ApplicationProfileResponse {
  /// Specifies the gallery applications that should be made available to the VM/VMSS
  final List<VMGalleryApplicationResponse>? galleryApplications;

  /// Creates a new [ApplicationProfileResponse].
  /// [galleryApplications] Specifies the gallery applications that should be made available to the VM/VMSS
  ApplicationProfileResponse({
    this.galleryApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryApplications': ?galleryApplications == null ? null : pulumi.Input.encodeList<VMGalleryApplicationResponse, Map<String, dynamic>>(galleryApplications!, (value) => value.toMap()),
    };
  }

  factory ApplicationProfileResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationProfileResponse(
      galleryApplications: map['galleryApplications'] == null ? null : pulumi.Input.decodeList<VMGalleryApplicationResponse>(map['galleryApplications'], (value) => VMGalleryApplicationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

