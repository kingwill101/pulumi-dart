// ignore_for_file: unused_element, unnecessary_cast

class GetLinkBandwidth {
  /// Download speed in Mbps.
  final int downloadSpeed;

  /// Upload speed in Mbps.
  final int uploadSpeed;

  GetLinkBandwidth({
    required this.downloadSpeed,
    required this.uploadSpeed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['downloadSpeed'] = downloadSpeed;
    map['uploadSpeed'] = uploadSpeed;
    return map;
  }

  factory GetLinkBandwidth.fromMap(Map<String, dynamic> map) {
    return GetLinkBandwidth(
      downloadSpeed: map['downloadSpeed'] as int,
      uploadSpeed: map['uploadSpeed'] as int,
    );
  }
}
