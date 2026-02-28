// ignore_for_file: unused_element, unnecessary_cast

class CustomLogSourceAttribute {
  /// The ARN of the AWS Glue crawler.
  final String crawlerArn;

  /// The ARN of the AWS Glue database where results are written.
  final String databaseArn;

  /// The ARN of the AWS Glue table.
  final String tableArn;

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
    final map = <String, dynamic>{};
    map['crawlerArn'] = crawlerArn;
    map['databaseArn'] = databaseArn;
    map['tableArn'] = tableArn;
    return map;
  }

  factory CustomLogSourceAttribute.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceAttribute(
      crawlerArn: map['crawlerArn'] as String,
      databaseArn: map['databaseArn'] as String,
      tableArn: map['tableArn'] as String,
    );
  }
}
