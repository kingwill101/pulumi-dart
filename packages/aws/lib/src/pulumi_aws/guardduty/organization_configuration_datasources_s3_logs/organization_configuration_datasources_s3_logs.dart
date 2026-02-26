// ignore_for_file: unused_element, unnecessary_cast

class OrganizationConfigurationDatasourcesS3Logs {
  /// Set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if you want S3 data event logs to be automatically enabled for new members of the organization. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  final bool autoEnable;

  OrganizationConfigurationDatasourcesS3Logs({
    required this.autoEnable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnable'] = autoEnable;
    return map;
  }

  factory OrganizationConfigurationDatasourcesS3Logs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConfigurationDatasourcesS3Logs(
      autoEnable: map['autoEnable'] as bool,
    );
  }
}
