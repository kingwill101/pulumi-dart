// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogDataProtectionPolicy resources.
class LogDataProtectionPolicyState {
  /// The name of the log group under which the log stream is to be created.
  final pulumi.Input<String>? logGroupName;

  /// Specifies the data protection policy in JSON. Read more at [Data protection policy syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-start.html#mask-sensitive-log-data-policysyntax).
  final pulumi.Input<String>? policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogDataProtectionPolicyState].
  /// [logGroupName] The name of the log group under which the log stream is to be created.
  /// [policyDocument] Specifies the data protection policy in JSON. Read more at [Data protection policy syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data-start.html#mask-sensitive-log-data-policysyntax).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogDataProtectionPolicyState({
    this.logGroupName,
    this.policyDocument,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupName': ?logGroupName,
      'policyDocument': ?policyDocument,
      'region': ?region,
    };
  }

  factory LogDataProtectionPolicyState.fromMap(Map<String, dynamic> map) {
    return LogDataProtectionPolicyState(
      logGroupName: (() {
        final guardedValue = map['logGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyDocument: (() {
        final guardedValue = map['policyDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
