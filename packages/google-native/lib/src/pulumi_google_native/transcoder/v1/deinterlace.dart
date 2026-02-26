// ignore_for_file: unused_element, unnecessary_cast

import 'bwdif_config.dart';
import 'yadif_config.dart';

/// Deinterlace configuration for input video.
class Deinterlace {
  /// Specifies the Bob Weaver Deinterlacing Filter Configuration.
  final BwdifConfig? bwdif;

  /// Specifies the Yet Another Deinterlacing Filter Configuration.
  final YadifConfig? yadif;

  Deinterlace({
    this.bwdif,
    this.yadif,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bwdifValue = bwdif;
    if (bwdifValue != null) {
      map['bwdif'] = bwdifValue.toMap();
    }
    final yadifValue = yadif;
    if (yadifValue != null) {
      map['yadif'] = yadifValue.toMap();
    }
    return map;
  }

  factory Deinterlace.fromMap(Map<String, dynamic> map) {
    return Deinterlace(
      bwdif: map['bwdif'] == null
          ? null
          : BwdifConfig.fromMap((map['bwdif'] as Map).cast<String, dynamic>()),
      yadif: map['yadif'] == null
          ? null
          : YadifConfig.fromMap((map['yadif'] as Map).cast<String, dynamic>()),
    );
  }
}
