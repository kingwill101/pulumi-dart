// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dimension.dart';

/// Definition of PublishMetricAction
class PublishMetricAction {
  /// Property dimensions
  final pulumi.Input<List<Dimension>>? dimensions;

  /// Creates a new [PublishMetricAction].
  /// [dimensions] Property dimensions
  PublishMetricAction({this.dimensions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<Dimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) => pulumi.Input.encodeList<Dimension, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory PublishMetricAction.fromMap(Map<String, dynamic> map) {
    return PublishMetricAction(
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Dimension>(
            guardedValue,
            (value) =>
                Dimension.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
