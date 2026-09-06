import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ComputeType implements pulumi.PulumiEnum<String> {
  bUILDGENERAL12XLARGE("BUILD_GENERAL1_2XLARGE"),
  bUILDGENERAL1LARGE("BUILD_GENERAL1_LARGE"),
  bUILDGENERAL1MEDIUM("BUILD_GENERAL1_MEDIUM"),
  bUILDGENERAL1SMALL("BUILD_GENERAL1_SMALL"),
  bUILDGENERAL1XLARGE("BUILD_GENERAL1_XLARGE"),
  bUILDLAMBDA10GB("BUILD_LAMBDA_10GB"),
  bUILDLAMBDA1GB("BUILD_LAMBDA_1GB"),
  bUILDLAMBDA2GB("BUILD_LAMBDA_2GB"),
  bUILDLAMBDA4GB("BUILD_LAMBDA_4GB"),
  bUILDLAMBDA8GB("BUILD_LAMBDA_8GB");

  const ComputeType(this.wireValue);
  @override
  final String wireValue;

  static ComputeType fromValue(String value) {
    for (final item in ComputeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputeType value: $value');
  }
}
