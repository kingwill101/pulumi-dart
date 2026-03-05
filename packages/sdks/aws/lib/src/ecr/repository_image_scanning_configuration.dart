// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryImageScanningConfiguration {
  /// Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false).
  final pulumi.Input<bool> scanOnPush;

  /// Creates a new [RepositoryImageScanningConfiguration].
  /// [scanOnPush] Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false).
  RepositoryImageScanningConfiguration({
    required this.scanOnPush,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scanOnPush': scanOnPush,
    };
  }

  factory RepositoryImageScanningConfiguration.fromMap(Map<String, dynamic> map) {
    return RepositoryImageScanningConfiguration(
      scanOnPush: pulumi.Input.fromValue(map['scanOnPush'] as bool),
    );
  }
}

