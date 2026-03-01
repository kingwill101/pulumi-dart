// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vision_v1_get_reference_image_args_doc}
/// Arguments for getReferenceImage.
/// {@endtemplate}
/// {@macro pulumi_vision_v1_get_reference_image_args_doc}
class GetReferenceImageArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> referenceImageId;

  /// Creates a new [GetReferenceImageArgs].
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  /// [referenceImageId] Required.
  GetReferenceImageArgs({
    required String location,
    required String productId,
    String? project,
    required String referenceImageId,
  }) : location = pulumi.Input.asInput<String>(location),
       productId = pulumi.Input.asInput<String>(productId),
       project = pulumi.Input.asOptionalInput<String>(project),
       referenceImageId = pulumi.Input.asInput<String>(referenceImageId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'productId': productId,
      'project': ?project,
      'referenceImageId': referenceImageId,
    };
  }

  factory GetReferenceImageArgs.fromMap(Map<String, dynamic> map) {
    return GetReferenceImageArgs(
      location: map['location'] as String,
      productId: map['productId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      referenceImageId: map['referenceImageId'] as String,
    );
  }
}
