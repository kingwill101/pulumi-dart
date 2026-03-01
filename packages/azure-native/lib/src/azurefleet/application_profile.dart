// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmgallery_application.dart';

/// Contains the list of gallery applications that should be made available to the
/// VM/VMSS
class ApplicationProfile {
  /// Specifies the gallery applications that should be made available to the VM/VMSS
  final List<VMGalleryApplication>? galleryApplications;

  /// Creates a new [ApplicationProfile].
  /// [galleryApplications] Specifies the gallery applications that should be made available to the VM/VMSS
  ApplicationProfile({
    this.galleryApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryApplications': ?galleryApplications == null ? null : pulumi.Input.encodeList<VMGalleryApplication, Map<String, dynamic>>(galleryApplications!, (value) => value.toMap()),
    };
  }

  factory ApplicationProfile.fromMap(Map<String, dynamic> map) {
    return ApplicationProfile(
      galleryApplications: map['galleryApplications'] == null ? null : pulumi.Input.decodeList<VMGalleryApplication>(map['galleryApplications'], (value) => VMGalleryApplication.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

