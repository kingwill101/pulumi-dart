// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomLogSourceConfigurationCrawlerConfiguration {
  /// The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be used by the AWS Glue crawler.
  final pulumi.Input<String> roleArn;

  /// Creates a new [CustomLogSourceConfigurationCrawlerConfiguration].
  /// [roleArn] The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role to be used by the AWS Glue crawler.
  CustomLogSourceConfigurationCrawlerConfiguration({required this.roleArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'roleArn': roleArn};
  }

  factory CustomLogSourceConfigurationCrawlerConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomLogSourceConfigurationCrawlerConfiguration(
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
