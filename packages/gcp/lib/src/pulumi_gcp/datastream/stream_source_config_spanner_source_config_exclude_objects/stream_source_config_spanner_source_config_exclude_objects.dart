// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_spanner_source_config_exclude_objects_schema/stream_source_config_spanner_source_config_exclude_objects_schema.dart';

class StreamSourceConfigSpannerSourceConfigExcludeObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final List<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema> schemas;

  StreamSourceConfigSpannerSourceConfigExcludeObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemas'] = Input.encodeList<
        StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema,
        Map<String, dynamic>>(schemas, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigSpannerSourceConfigExcludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigExcludeObjects(
      schemas: Input.decodeList<
              StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema>(
          map['schemas'],
          (value) =>
              StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
