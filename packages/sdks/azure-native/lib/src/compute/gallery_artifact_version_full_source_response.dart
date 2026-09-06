// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The source of the gallery artifact version.
class GalleryArtifactVersionFullSourceResponse {
  /// The resource Id of the source Community Gallery Image.  Only required when using Community Gallery Image as a source.
  final pulumi.Input<String?>? communityGalleryImageId;
  /// The id of the gallery artifact version source.
  final pulumi.Input<String?>? id;
  /// The resource Id of the source virtual machine.  Only required when capturing a virtual machine to source this Gallery Image Version.
  final pulumi.Input<String?>? virtualMachineId;

  /// Creates a new [GalleryArtifactVersionFullSourceResponse].
  /// [communityGalleryImageId] The resource Id of the source Community Gallery Image.  Only required when using Community Gallery Image as a source.
  /// [id] The id of the gallery artifact version source.
  /// [virtualMachineId] The resource Id of the source virtual machine.  Only required when capturing a virtual machine to source this Gallery Image Version.
  const GalleryArtifactVersionFullSourceResponse({
    this.communityGalleryImageId,
    this.id,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryImageId': ?communityGalleryImageId,
      'id': ?id,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory GalleryArtifactVersionFullSourceResponse.fromMap(Map<String, dynamic> map) {
    return GalleryArtifactVersionFullSourceResponse(
      communityGalleryImageId: (() { final guardedValue = map['communityGalleryImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineId: (() { final guardedValue = map['virtualMachineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
