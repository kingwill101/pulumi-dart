// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'animation.dart';
import 'image.dart';

/// Overlay configuration.
class Overlay {
  /// List of animations. The list should be chronological, without any time overlap.
  final List<Animation>? animations;
  /// Image overlay.
  final Image? image;

  /// Creates a new [Overlay].
  /// [animations] List of animations. The list should be chronological, without any time overlap.
  /// [image] Image overlay.
  Overlay({
    this.animations,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animations': ?animations == null ? null : pulumi.Input.encodeList<Animation, Map<String, dynamic>>(animations!, (value) => value.toMap()),
      'image': ?image == null ? null : image!.toMap(),
    };
  }

  factory Overlay.fromMap(Map<String, dynamic> map) {
    return Overlay(
      animations: map['animations'] == null ? null : pulumi.Input.decodeList<Animation>(map['animations'], (value) => Animation.fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null ? null : Image.fromMap((map['image'] as Map).cast<String, dynamic>()),
    );
  }
}

