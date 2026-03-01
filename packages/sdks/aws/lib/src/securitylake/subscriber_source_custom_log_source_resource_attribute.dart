// ignore_for_file: unused_element, unnecessary_cast


class SubscriberSourceCustomLogSourceResourceAttribute {
  /// The ARN of the AWS Glue crawler.
  final String crawlerArn;
  /// The ARN of the AWS Glue database where results are written.
  final String databaseArn;
  /// The ARN of the AWS Glue table.
  final String tableArn;

  /// Creates a new [SubscriberSourceCustomLogSourceResourceAttribute].
  /// [crawlerArn] The ARN of the AWS Glue crawler.
  /// [databaseArn] The ARN of the AWS Glue database where results are written.
  /// [tableArn] The ARN of the AWS Glue table.
  SubscriberSourceCustomLogSourceResourceAttribute({
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

  factory SubscriberSourceCustomLogSourceResourceAttribute.fromMap(Map<String, dynamic> map) {
    return SubscriberSourceCustomLogSourceResourceAttribute(
      crawlerArn: map['crawlerArn'] as String,
      databaseArn: map['databaseArn'] as String,
      tableArn: map['tableArn'] as String,
    );
  }
}

