// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SdkvoiceSipMediaApplicationEndpoints {
  /// Valid ARN of the Lambda function, version, or alias. The function must be created in the same AWS Region as the SIP media application.
  final pulumi.Input<String> lambdaArn;

  /// Creates a new [SdkvoiceSipMediaApplicationEndpoints].
  /// [lambdaArn] Valid ARN of the Lambda function, version, or alias. The function must be created in the same AWS Region as the SIP media application.
  const SdkvoiceSipMediaApplicationEndpoints({
    required this.lambdaArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lambdaArn': lambdaArn,
    };
  }

  factory SdkvoiceSipMediaApplicationEndpoints.fromMap(Map<String, dynamic> map) {
    return SdkvoiceSipMediaApplicationEndpoints(
      lambdaArn: pulumi.Input.fromValue(map['lambdaArn'] as String),
    );
  }
}
