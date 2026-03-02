// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionConfigurationDistributionSsmParameterConfiguration {
  /// AWS account ID that will own the parameter in the given region. This account must be specified as a target account in the distribution settings.
  final pulumi.Input<String>? amiAccountId;
  /// Data type of the SSM parameter. Valid values are `text` and `aws:ec2:image`. AWS recommends using `aws:ec2:image`.
  final pulumi.Input<String>? dataType;
  /// Name of the SSM parameter that will store the AMI ID after distribution.
  final pulumi.Input<String> parameterName;

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
    return <String, dynamic>{
      'amiAccountId': ?amiAccountId,
      'dataType': ?dataType,
      'parameterName': parameterName,
    };
  }

  factory DistributionConfigurationDistributionSsmParameterConfiguration.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationDistributionSsmParameterConfiguration(
      amiAccountId: map['amiAccountId'] == null ? null : ((map['amiAccountId'] as String).input()).input(),
      dataType: map['dataType'] == null ? null : ((map['dataType'] as String).input()).input(),
      parameterName: (map['parameterName'] as String).input(),
    );
  }
}

