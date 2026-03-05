// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomLogSourceAttribute {
  /// The ARN of the AWS Glue crawler.
  final pulumi.Input<String> crawlerArn;
  /// The ARN of the AWS Glue database where results are written.
  final pulumi.Input<String> databaseArn;
  /// The ARN of the AWS Glue table.
  final pulumi.Input<String> tableArn;

  /// Creates a new [CustomLogSourceAttribute].
  /// [crawlerArn] The ARN of the AWS Glue crawler.
  /// [databaseArn] The ARN of the AWS Glue database where results are written.
  /// [tableArn] The ARN of the AWS Glue table.
  CustomLogSourceAttribute({
    required this.crawlerArn,
    required this.databaseArn,
    required this.tableArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crawlerArn': crawlerArn,
      'databaseArn': databaseArn,
      'tableArn': tableArn,
    };
  }

  factory CustomLogSourceAttribute.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceAttribute(
      crawlerArn: pulumi.Input.fromValue(map['crawlerArn'] as String),
      databaseArn: pulumi.Input.fromValue(map['databaseArn'] as String),
      tableArn: pulumi.Input.fromValue(map['tableArn'] as String),
    );
  }
}

