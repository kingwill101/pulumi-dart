// ignore_for_file: unused_element, unnecessary_cast

class TrailEventSelectorDataResource {
  /// Resource type in which you want to log data events. You can specify only the following value: "AWS::S3::Object", "AWS::Lambda::Function" and "AWS::DynamoDB::Table".
  final String type;

  /// List of ARN strings or partial ARN strings to specify selectors for data audit events over data resources. ARN list is specific to single-valued <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span>. For example, `arn:aws:s3:::<bucket name>/` for all objects in a bucket, `arn:aws:s3:::<bucket name>/key` for specific objects, `arn:aws:lambda` for all lambda events within an account, `arn:aws:lambda:<region>:<account number>:function:<function name>` for a specific Lambda function, `arn:aws:dynamodb` for all DDB events for all tables within an account, or `arn:aws:dynamodb:<region>:<account number>:table/<table name>` for a specific DynamoDB table.
  final List<String> values;

  TrailEventSelectorDataResource({
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['values'] = values;
    return map;
  }

  factory TrailEventSelectorDataResource.fromMap(Map<String, dynamic> map) {
    return TrailEventSelectorDataResource(
      type: map['type'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
