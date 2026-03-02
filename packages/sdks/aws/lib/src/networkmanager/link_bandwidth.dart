// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkBandwidth {
  /// Download speed in Mbps.
  final pulumi.Input<int>? downloadSpeed;
  /// Upload speed in Mbps.
  final pulumi.Input<int>? uploadSpeed;

  /// Creates a new [LinkBandwidth].
  /// [downloadSpeed] Download speed in Mbps.
  /// [uploadSpeed] Upload speed in Mbps.
  LinkBandwidth({
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
      downloadSpeed: map['downloadSpeed'] == null ? null : (map['downloadSpeed'] as int).input(),
      uploadSpeed: map['uploadSpeed'] == null ? null : (map['uploadSpeed'] as int).input(),
    );
  }
}

