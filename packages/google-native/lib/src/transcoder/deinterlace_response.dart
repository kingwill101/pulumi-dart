// ignore_for_file: unused_element, unnecessary_cast

import 'bwdif_config_response.dart';
import 'yadif_config_response.dart';

/// Deinterlace configuration for input video.
class DeinterlaceResponse {
  /// Specifies the Bob Weaver Deinterlacing Filter Configuration.
  final BwdifConfigResponse bwdif;

  /// Specifies the Yet Another Deinterlacing Filter Configuration.
  final YadifConfigResponse yadif;

  /// Creates a new [DeinterlaceResponse].
  /// [bwdif] Specifies the Bob Weaver Deinterlacing Filter Configuration.
  /// [yadif] Specifies the Yet Another Deinterlacing Filter Configuration.
  DeinterlaceResponse({
    required this.bwdif,
    required this.yadif,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bwdif'] = bwdif.toMap();
    map['yadif'] = yadif.toMap();
    return map;
  }

  factory DeinterlaceResponse.fromMap(Map<String, dynamic> map) {
    return DeinterlaceResponse(
      bwdif: BwdifConfigResponse.fromMap(
          (map['bwdif'] as Map).cast<String, dynamic>()),
      yadif: YadifConfigResponse.fromMap(
          (map['yadif'] as Map).cast<String, dynamic>()),
    );
  }
}
