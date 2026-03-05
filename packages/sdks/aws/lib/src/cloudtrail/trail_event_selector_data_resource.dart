// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrailEventSelectorDataResource {
  /// Resource type in which you want to log data events. You can specify only the following value: "AWS::S3::Object", "AWS::Lambda::Function" and "AWS::DynamoDB::Table".
  final pulumi.Input<String> type;
  /// List of ARN strings or partial ARN strings to specify selectors for data audit events over data resources. ARN list is specific to single-valued `type`. For example, `arn:aws:s3:::&lt;bucket name&gt;/` for all objects in a bucket, `arn:aws:s3:::&lt;bucket name&gt;/key` for specific objects, `arn:aws:lambda` for all lambda events within an account, `arn:aws:lambda:&lt;region&gt;:&lt;account number&gt;:function:&lt;function name&gt;` for a specific Lambda function, `arn:aws:dynamodb` for all DDB events for all tables within an account, or `arn:aws:dynamodb:&lt;region&gt;:&lt;account number&gt;:table/&lt;table name&gt;` for a specific DynamoDB table.
  final pulumi.Input<List<String>> values;

  /// Creates a new [TrailEventSelectorDataResource].
  /// [type] Resource type in which you want to log data events. You can specify only the following value: "AWS::S3::Object", "AWS::Lambda::Function" and "AWS::DynamoDB::Table".
  /// [values] List of ARN strings or partial ARN strings to specify selectors for data audit events over data resources. ARN list is specific to single-valued `type`. For example, `arn:aws:s3:::&lt;bucket name&gt;/` for all objects in a bucket, `arn:aws:s3:::&lt;bucket name&gt;/key` for specific objects, `arn:aws:lambda` for all lambda events within an account, `arn:aws:lambda:&lt;region&gt;:&lt;account number&gt;:function:&lt;function name&gt;` for a specific Lambda function, `arn:aws:dynamodb` for all DDB events for all tables within an account, or `arn:aws:dynamodb:&lt;region&gt;:&lt;account number&gt;:table/&lt;table name&gt;` for a specific DynamoDB table.
  TrailEventSelectorDataResource({
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'values': values,
    };
  }

  factory TrailEventSelectorDataResource.fromMap(Map<String, dynamic> map) {
    return TrailEventSelectorDataResource(
      type: pulumi.Input.fromValue(map['type'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

