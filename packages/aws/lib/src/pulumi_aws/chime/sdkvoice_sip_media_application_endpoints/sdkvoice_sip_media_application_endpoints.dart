// ignore_for_file: unused_element, unnecessary_cast

class SdkvoiceSipMediaApplicationEndpoints {
  /// Valid Amazon Resource Name (ARN) of the Lambda function, version, or alias. The function must be created in the same AWS Region as the SIP media application.
  final String lambdaArn;

  SdkvoiceSipMediaApplicationEndpoints({
    required this.lambdaArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lambdaArn'] = lambdaArn;
    return map;
  }

  factory SdkvoiceSipMediaApplicationEndpoints.fromMap(
      Map<String, dynamic> map) {
    return SdkvoiceSipMediaApplicationEndpoints(
      lambdaArn: map['lambdaArn'] as String,
    );
  }
}
