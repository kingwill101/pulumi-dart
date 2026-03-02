// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDistributionConfigurationDistributionSsmParameterConfiguration {
  /// The AWS account ID that own the parameter in the given region.
  final pulumi.Input<String> amiAccountId;
  /// The data type of the SSM parameter.
  final pulumi.Input<String> dataType;
  /// Name of the SSM parameter used to store the AMI ID after distribution.
  final pulumi.Input<String> parameterName;

  /// Creates a new [GetDistributionConfigurationDistributionSsmParameterConfiguration].
  /// [amiAccountId] The AWS account ID that own the parameter in the given region.
  /// [dataType] The data type of the SSM parameter.
  /// [parameterName] Name of the SSM parameter used to store the AMI ID after distribution.
  GetDistributionConfigurationDistributionSsmParameterConfiguration({
    required this.amiAccountId,
    required this.dataType,
    required this.parameterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiAccountId': amiAccountId,
      'dataType': dataType,
      'parameterName': parameterName,
    };
  }

  factory GetDistributionConfigurationDistributionSsmParameterConfiguration.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionSsmParameterConfiguration(
      amiAccountId: (map['amiAccountId'] as String).input(),
      dataType: (map['dataType'] as String).input(),
      parameterName: (map['parameterName'] as String).input(),
    );
  }
}

