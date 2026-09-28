// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinkBandwidth {
  /// Download speed in Mbps.
  final pulumi.Input<int> downloadSpeed;
  /// Upload speed in Mbps.
  final pulumi.Input<int> uploadSpeed;

  /// Creates a new [GetLinkBandwidth].
  /// [downloadSpeed] Download speed in Mbps.
  /// [uploadSpeed] Upload speed in Mbps.
  const GetLinkBandwidth({
    required this.downloadSpeed,
    required this.uploadSpeed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'downloadSpeed': downloadSpeed,
      'uploadSpeed': uploadSpeed,
    };
  }

  factory GetLinkBandwidth.fromMap(Map<String, dynamic> map) {
    return GetLinkBandwidth(
      downloadSpeed: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['downloadSpeed'])),
      uploadSpeed: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['uploadSpeed'])),
    );
  }
}
