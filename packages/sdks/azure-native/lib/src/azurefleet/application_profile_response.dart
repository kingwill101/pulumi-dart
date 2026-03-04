// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmgallery_application_response.dart';

/// Contains the list of gallery applications that should be made available to the
/// VM/VMSS
class ApplicationProfileResponse {
  /// Specifies the gallery applications that should be made available to the VM/VMSS
  final pulumi.Input<List<VMGalleryApplicationResponse>>? galleryApplications;

  /// Creates a new [ApplicationProfileResponse].
  /// [galleryApplications] Specifies the gallery applications that should be made available to the VM/VMSS
  ApplicationProfileResponse({this.galleryApplications});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryApplications':
          ?pulumi.Input.mapOptionalInputValue<
            List<VMGalleryApplicationResponse>,
            List<Map<String, dynamic>>
          >(
            galleryApplications,
            (value) =>
                pulumi.Input.encodeList<
                  VMGalleryApplicationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApplicationProfileResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationProfileResponse(
      galleryApplications: (() {
        final guardedValue = map['galleryApplications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VMGalleryApplicationResponse>(
            guardedValue,
            (value) => VMGalleryApplicationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
