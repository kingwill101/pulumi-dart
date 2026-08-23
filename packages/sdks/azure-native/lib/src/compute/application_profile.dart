// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmgallery_application.dart';

/// Contains the list of gallery applications that should be made available to the VM/VMSS
class ApplicationProfile {
  /// Specifies the gallery applications that should be made available to the VM/VMSS
  final pulumi.Input<List<VMGalleryApplication>>? galleryApplications;

  /// Creates a new [ApplicationProfile].
  /// [galleryApplications] Specifies the gallery applications that should be made available to the VM/VMSS
  const ApplicationProfile({
    this.galleryApplications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryApplications': ?pulumi.Input.mapOptionalInputValue<List<VMGalleryApplication>, List<Map<String, dynamic>>>(galleryApplications, (value) => pulumi.Input.encodeList<VMGalleryApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationProfile.fromMap(Map<String, dynamic> map) {
    return ApplicationProfile(
      galleryApplications: (() { final guardedValue = map['galleryApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMGalleryApplication>(guardedValue, (value) => VMGalleryApplication.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
