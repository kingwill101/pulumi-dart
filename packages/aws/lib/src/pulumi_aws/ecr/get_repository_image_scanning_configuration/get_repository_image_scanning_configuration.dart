// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryImageScanningConfiguration {
  /// Whether images are scanned after being pushed to the repository.
  final bool scanOnPush;

  GetRepositoryImageScanningConfiguration({
    required this.scanOnPush,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scanOnPush'] = scanOnPush;
    return map;
  }

  factory GetRepositoryImageScanningConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryImageScanningConfiguration(
      scanOnPush: map['scanOnPush'] as bool,
    );
  }
}
