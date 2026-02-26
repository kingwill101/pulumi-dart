// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_spanner_source_config_include_objects_schema/stream_source_config_spanner_source_config_include_objects_schema.dart';

class StreamSourceConfigSpannerSourceConfigIncludeObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final List<StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema> schemas;

  StreamSourceConfigSpannerSourceConfigIncludeObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemas'] = Input.encodeList<
        StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema,
        Map<String, dynamic>>(schemas, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigSpannerSourceConfigIncludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigIncludeObjects(
      schemas: Input.decodeList<
              StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema>(
          map['schemas'],
          (value) =>
              StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
