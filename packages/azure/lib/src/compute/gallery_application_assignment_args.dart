// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_gallery_application_assignment_gallery_application_assignment_args_doc}
/// The set of arguments for GalleryApplicationAssignment.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_application_assignment_gallery_application_assignment_args_doc}
class GalleryApplicationAssignmentArgs {
  /// Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. Changing this forces a new resource to be created.
  final pulumi.Input<String>? configurationBlobUri;
  /// The ID of the Gallery Application Version. Changing this forces a new resource to be created.
  final pulumi.Input<String> galleryApplicationVersionId;
  /// Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`.
  final pulumi.Input<int>? order;
  /// Specifies a passthrough value for more generic context. This field can be any valid `string` value. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tag;
  /// The ID of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [GalleryApplicationAssignmentArgs].
  /// [configurationBlobUri] Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. Changing this forces a new resource to be created.
  /// [galleryApplicationVersionId] The ID of the Gallery Application Version. Changing this forces a new resource to be created.
  /// [order] Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`.
  /// [tag] Specifies a passthrough value for more generic context. This field can be any valid `string` value. Changing this forces a new resource to be created.
  /// [virtualMachineId] The ID of the Virtual Machine. Changing this forces a new resource to be created.
  GalleryApplicationAssignmentArgs({
    String? configurationBlobUri,
    required String galleryApplicationVersionId,
    int? order,
    String? tag,
    required String virtualMachineId,
  }) :
      configurationBlobUri = pulumi.Input.asOptionalInput<String>(configurationBlobUri),
      galleryApplicationVersionId = pulumi.Input.asInput<String>(galleryApplicationVersionId),
      order = pulumi.Input.asOptionalInput<int>(order),
      tag = pulumi.Input.asOptionalInput<String>(tag),
      virtualMachineId = pulumi.Input.asInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationBlobUri': ?configurationBlobUri,
      'galleryApplicationVersionId': galleryApplicationVersionId,
      'order': ?order,
      'tag': ?tag,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory GalleryApplicationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationAssignmentArgs(
      configurationBlobUri: map['configurationBlobUri'] == null ? null : map['configurationBlobUri'] as String,
      galleryApplicationVersionId: map['galleryApplicationVersionId'] as String,
      order: map['order'] == null ? null : map['order'] as int,
      tag: map['tag'] == null ? null : map['tag'] as String,
      virtualMachineId: map['virtualMachineId'] as String,
    );
  }
}

