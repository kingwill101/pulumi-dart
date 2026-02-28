// ignore_for_file: unused_element, unnecessary_cast

class DistributionConfigurationDistributionSsmParameterConfiguration {
  /// AWS account ID that will own the parameter in the given region. This account must be specified as a target account in the distribution settings.
  final String? amiAccountId;

  /// Data type of the SSM parameter. Valid values are `text` and `aws:ec2:image`. AWS recommends using `aws:ec2:image`.
  final String? dataType;

  /// Name of the SSM parameter that will store the AMI ID after distribution.
  final String parameterName;

  /// Creates a new [DistributionConfigurationDistributionSsmParameterConfiguration].
  /// [amiAccountId] AWS account ID that will own the parameter in the given region. This account must be specified as a target account in the distribution settings.
  /// [dataType] Data type of the SSM parameter. Valid values are `text` and `aws:ec2:image`. AWS recommends using `aws:ec2:image`.
  /// [parameterName] Name of the SSM parameter that will store the AMI ID after distribution.
  DistributionConfigurationDistributionSsmParameterConfiguration({
    this.amiAccountId,
    this.dataType,
    required this.parameterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amiAccountIdValue = amiAccountId;
    if (amiAccountIdValue != null) {
      map['amiAccountId'] = amiAccountIdValue;
    }
    final dataTypeValue = dataType;
    if (dataTypeValue != null) {
      map['dataType'] = dataTypeValue;
    }
    map['parameterName'] = parameterName;
    return map;
  }

  factory DistributionConfigurationDistributionSsmParameterConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DistributionConfigurationDistributionSsmParameterConfiguration(
      amiAccountId:
          map['amiAccountId'] == null ? null : map['amiAccountId'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      parameterName: map['parameterName'] as String,
    );
  }
}
