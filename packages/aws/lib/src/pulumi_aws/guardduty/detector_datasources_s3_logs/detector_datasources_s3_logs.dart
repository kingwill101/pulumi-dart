// ignore_for_file: unused_element, unnecessary_cast

class DetectorDatasourcesS3Logs {
  /// If true, enables [S3 protection](https://docs.aws.amazon.com/guardduty/latest/ug/s3-protection.html).
  /// Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool enable;

  DetectorDatasourcesS3Logs({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    return map;
  }

  factory DetectorDatasourcesS3Logs.fromMap(Map<String, dynamic> map) {
    return DetectorDatasourcesS3Logs(
      enable: map['enable'] as bool,
    );
  }
}
