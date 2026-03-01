// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension.dart';

/// Definition of PublishMetricAction
class PublishMetricAction {
  /// Property dimensions
  final List<Dimension>? dimensions;

  /// Creates a new [PublishMetricAction].
  /// [dimensions] Property dimensions
  PublishMetricAction({
    this.dimensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<Dimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
    };
  }

  factory PublishMetricAction.fromMap(Map<String, dynamic> map) {
    return PublishMetricAction(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<Dimension>(map['dimensions'], (value) => Dimension.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

