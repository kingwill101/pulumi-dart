// ignore_for_file: unused_element, unnecessary_cast

class GetDistributionConfigurationDistributionSsmParameterConfiguration {
  /// The AWS account ID that own the parameter in the given region.
  final String amiAccountId;

  /// The data type of the SSM parameter.
  final String dataType;

  /// Name of the SSM parameter used to store the AMI ID after distribution.
  final String parameterName;

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

  factory GetDistributionConfigurationDistributionSsmParameterConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDistributionConfigurationDistributionSsmParameterConfiguration(
      amiAccountId: map['amiAccountId'] as String,
      dataType: map['dataType'] as String,
      parameterName: map['parameterName'] as String,
    );
  }
}
