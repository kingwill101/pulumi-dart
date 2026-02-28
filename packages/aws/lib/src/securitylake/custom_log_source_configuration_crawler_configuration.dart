// ignore_for_file: unused_element, unnecessary_cast


class CustomLogSourceConfigurationCrawlerConfiguration {
  /// The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be used by the AWS Glue crawler.
  final String roleArn;

  /// Creates a new [CustomLogSourceConfigurationCrawlerConfiguration].
  /// [roleArn] The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be used by the AWS Glue crawler.
  CustomLogSourceConfigurationCrawlerConfiguration({
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
    };
  }

  factory CustomLogSourceConfigurationCrawlerConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceConfigurationCrawlerConfiguration(
      roleArn: map['roleArn'] as String,
    );
  }
}

