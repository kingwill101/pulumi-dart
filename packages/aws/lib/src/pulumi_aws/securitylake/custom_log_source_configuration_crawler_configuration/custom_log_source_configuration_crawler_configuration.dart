// ignore_for_file: unused_element, unnecessary_cast

class CustomLogSourceConfigurationCrawlerConfiguration {
  /// The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be used by the AWS Glue crawler.
  final String roleArn;

  CustomLogSourceConfigurationCrawlerConfiguration({
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['roleArn'] = roleArn;
    return map;
  }

  factory CustomLogSourceConfigurationCrawlerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CustomLogSourceConfigurationCrawlerConfiguration(
      roleArn: map['roleArn'] as String,
    );
  }
}
