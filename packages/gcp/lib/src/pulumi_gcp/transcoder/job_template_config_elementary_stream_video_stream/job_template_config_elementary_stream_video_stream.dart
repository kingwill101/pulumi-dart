// ignore_for_file: unused_element, unnecessary_cast

import '../job_template_config_elementary_stream_video_stream_h264/job_template_config_elementary_stream_video_stream_h264.dart';

class JobTemplateConfigElementaryStreamVideoStream {
  /// H264 codec settings
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedConfigElementaryStreamsVideoStreamH264"" pulumi-lang-dotnet=""NestedConfigElementaryStreamsVideoStreamH264"" pulumi-lang-go=""nestedConfigElementaryStreamsVideoStreamH264"" pulumi-lang-python=""nested_config_elementary_streams_video_stream_h264"" pulumi-lang-yaml=""nestedConfigElementaryStreamsVideoStreamH264"" pulumi-lang-java=""nestedConfigElementaryStreamsVideoStreamH264"">"nested_config_elementary_streams_video_stream_h264"</span>></a>The <span pulumi-lang-nodejs="`h264`" pulumi-lang-dotnet="`H264`" pulumi-lang-go="`h264`" pulumi-lang-python="`h264`" pulumi-lang-yaml="`h264`" pulumi-lang-java="`h264`">`h264`</span> block supports:
  final JobTemplateConfigElementaryStreamVideoStreamH264? h264;

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
