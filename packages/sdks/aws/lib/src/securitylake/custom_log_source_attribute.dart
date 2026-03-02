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
      crawlerArn: (map['crawlerArn'] as String).input(),
      databaseArn: (map['databaseArn'] as String).input(),
      tableArn: (map['tableArn'] as String).input(),
    );
  }
}

