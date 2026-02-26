// ignore_for_file: unused_element, unnecessary_cast

class RepositoryImageScanningConfiguration {
  /// Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false).
  final bool scanOnPush;

  RepositoryImageScanningConfiguration({
    required this.scanOnPush,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scanOnPush'] = scanOnPush;
    return map;
  }

  factory RepositoryImageScanningConfiguration.fromMap(
      Map<String, dynamic> map) {
    return RepositoryImageScanningConfiguration(
      scanOnPush: map['scanOnPush'] as bool,
    );
  }
}
