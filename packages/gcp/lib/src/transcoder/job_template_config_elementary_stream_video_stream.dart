// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_config_elementary_stream_video_stream_h264.dart';

class JobTemplateConfigElementaryStreamVideoStream {
  /// H264 codec settings
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_config_elementary_streams_video_stream_h264"></a>The `h264` block supports:
  final JobTemplateConfigElementaryStreamVideoStreamH264? h264;

  /// Creates a new [JobTemplateConfigElementaryStreamVideoStream].
  /// [h264] H264 codec settings
  JobTemplateConfigElementaryStreamVideoStream({
    this.h264,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final h264Value = h264;
    if (h264Value != null) {
      map['h264'] = h264Value.toMap();
    }
    return map;
  }

  factory JobTemplateConfigElementaryStreamVideoStream.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateConfigElementaryStreamVideoStream(
      h264: map['h264'] == null
          ? null
          : JobTemplateConfigElementaryStreamVideoStreamH264.fromMap(
              (map['h264'] as Map).cast<String, dynamic>()),
    );
  }
}
