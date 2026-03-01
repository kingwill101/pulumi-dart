// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'producer_image_share_group_image.dart';

/// {@template pulumi_index_producer_image_share_group_producer_image_share_group_args_doc}
/// The set of arguments for ProducerImageShareGroup.
/// {@endtemplate}
/// {@macro pulumi_index_producer_image_share_group_producer_image_share_group_args_doc}
class ProducerImageShareGroupArgs {
  /// The description of the Image Share Group
  ///
  /// * `images` - (Optional) A list of Images to include in the Image Share Group.
  final pulumi.Input<String>? description;
  /// The images to be shared using this Image Share Group.
  final pulumi.Input<List<ProducerImageShareGroupImage>>? images;
  /// The label of the Image Share Group.
  final pulumi.Input<String> label;

  /// Creates a new [ProducerImageShareGroupArgs].
  /// [description] The description of the Image Share Group
  /// [images] The images to be shared using this Image Share Group.
  /// [label] The label of the Image Share Group.
  ProducerImageShareGroupArgs({
    String? description,
    List<ProducerImageShareGroupImage>? images,
    required String label,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      images = pulumi.Input.asOptionalInput<List<ProducerImageShareGroupImage>>(images),
      label = pulumi.Input.asInput<String>(label);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'images': ?pulumi.Input.mapOptionalInputValue<List<ProducerImageShareGroupImage>, List<Map<String, dynamic>>>(images, (value) => pulumi.Input.encodeList<ProducerImageShareGroupImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
    };
  }

  factory ProducerImageShareGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProducerImageShareGroupArgs(
      description: map['description'] == null ? null : map['description'] as String,
      images: map['images'] == null ? null : pulumi.Input.decodeList<ProducerImageShareGroupImage>(map['images'], (value) => ProducerImageShareGroupImage.fromMap((value as Map).cast<String, dynamic>())),
      label: map['label'] as String,
    );
  }
}

