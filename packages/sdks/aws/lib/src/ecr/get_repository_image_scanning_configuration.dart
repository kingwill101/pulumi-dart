// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryImageScanningConfiguration {
  /// Whether images are scanned after being pushed to the repository.
  final pulumi.Input<bool> scanOnPush;

  /// Creates a new [GetRepositoryImageScanningConfiguration].
  /// [scanOnPush] Whether images are scanned after being pushed to the repository.
  GetRepositoryImageScanningConfiguration({
    required this.scanOnPush,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scanOnPush': scanOnPush,
    };
  }

  factory GetRepositoryImageScanningConfiguration.fromMap(Map<String, dynamic> map) {
    return GetRepositoryImageScanningConfiguration(
      scanOnPush: (map['scanOnPush'] as bool).input(),
    );
  }
}

