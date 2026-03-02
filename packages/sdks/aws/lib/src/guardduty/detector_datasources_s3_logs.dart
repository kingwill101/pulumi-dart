// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DetectorDatasourcesS3Logs {
  /// If true, enables [S3 protection](https://docs.aws.amazon.com/guardduty/latest/ug/s3-protection.html).
  /// Defaults to `true`.
  final pulumi.Input<bool> enable;

  /// Creates a new [DetectorDatasourcesS3Logs].
  /// [enable] If true, enables [S3 protection](https://docs.aws.amazon.com/guardduty/latest/ug/s3-protection.html).
  DetectorDatasourcesS3Logs({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory DetectorDatasourcesS3Logs.fromMap(Map<String, dynamic> map) {
    return DetectorDatasourcesS3Logs(
      enable: (map['enable'] as bool).input(),
    );
  }
}

