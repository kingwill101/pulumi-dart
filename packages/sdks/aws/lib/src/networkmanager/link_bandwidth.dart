// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkBandwidth {
  /// Download speed in Mbps.
  final pulumi.Input<int?>? downloadSpeed;
  /// Upload speed in Mbps.
  final pulumi.Input<int?>? uploadSpeed;

  /// Creates a new [LinkBandwidth].
  /// [downloadSpeed] Download speed in Mbps.
  /// [uploadSpeed] Upload speed in Mbps.
  const LinkBandwidth({
    this.downloadSpeed,
    this.uploadSpeed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadSpeed': ?downloadSpeed,
      'uploadSpeed': ?uploadSpeed,
    };
  }

  factory LinkBandwidth.fromMap(Map<String, dynamic> map) {
    return LinkBandwidth(
      downloadSpeed: (() { final guardedValue = map['downloadSpeed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      uploadSpeed: (() { final guardedValue = map['uploadSpeed']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
