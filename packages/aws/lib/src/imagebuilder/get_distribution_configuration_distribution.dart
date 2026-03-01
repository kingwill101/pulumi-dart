// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configuration_distribution_ami_distribution_configuration.dart';
import 'get_distribution_configuration_distribution_container_distribution_configuration.dart';
import 'get_distribution_configuration_distribution_fast_launch_configuration.dart';
import 'get_distribution_configuration_distribution_launch_template_configuration.dart';
import 'get_distribution_configuration_distribution_s3_export_configuration.dart';
import 'get_distribution_configuration_distribution_ssm_parameter_configuration.dart';

class GetDistributionConfigurationDistribution {
  /// Nested list of AMI distribution configuration.
  final List<
    GetDistributionConfigurationDistributionAmiDistributionConfiguration
  >
  amiDistributionConfigurations;

  /// Nested list of container distribution configurations.
  final List<
    GetDistributionConfigurationDistributionContainerDistributionConfiguration
  >
  containerDistributionConfigurations;

  /// Nested list of Windows faster-launching configurations to use for AMI distribution.
  final List<GetDistributionConfigurationDistributionFastLaunchConfiguration>
  fastLaunchConfigurations;

  /// Nested list of launch template configurations.
  final List<
    GetDistributionConfigurationDistributionLaunchTemplateConfiguration
  >
  launchTemplateConfigurations;

  /// Set of Amazon Resource Names (ARNs) of License Manager License Configurations.
  final List<String> licenseConfigurationArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// Nested list of S3 export configuration.
  final List<GetDistributionConfigurationDistributionS3ExportConfiguration>
  s3ExportConfigurations;

  /// Nested list of SSM parameter configuration.
  final List<GetDistributionConfigurationDistributionSsmParameterConfiguration>
  ssmParameterConfigurations;

  /// Creates a new [GetDistributionConfigurationDistribution].
  /// [amiDistributionConfigurations] Nested list of AMI distribution configuration.
  /// [containerDistributionConfigurations] Nested list of container distribution configurations.
  /// [fastLaunchConfigurations] Nested list of Windows faster-launching configurations to use for AMI distribution.
  /// [launchTemplateConfigurations] Nested list of launch template configurations.
  /// [licenseConfigurationArns] Set of Amazon Resource Names (ARNs) of License Manager License Configurations.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3ExportConfigurations] Nested list of S3 export configuration.
  /// [ssmParameterConfigurations] Nested list of SSM parameter configuration.
  GetDistributionConfigurationDistribution({
    required this.amiDistributionConfigurations,
    required this.containerDistributionConfigurations,
    required this.fastLaunchConfigurations,
    required this.launchTemplateConfigurations,
    required this.licenseConfigurationArns,
    required this.region,
    required this.s3ExportConfigurations,
    required this.ssmParameterConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiDistributionConfigurations':
          pulumi.Input.encodeList<
            GetDistributionConfigurationDistributionAmiDistributionConfiguration,
            Map<String, dynamic>
          >(amiDistributionConfigurations, (value) => value.toMap()),
      'containerDistributionConfigurations':
          pulumi.Input.encodeList<
            GetDistributionConfigurationDistributionContainerDistributionConfiguration,
            Map<String, dynamic>
          >(containerDistributionConfigurations, (value) => value.toMap()),
      'fastLaunchConfigurations':
          pulumi.Input.encodeList<
            GetDistributionConfigurationDistributionFastLaunchConfiguration,
            Map<String, dynamic>
          >(fastLaunchConfigurations, (value) => value.toMap()),
      'launchTemplateConfigurations':
          pulumi.Input.encodeList<
            GetDistributionConfigurationDistributionLaunchTemplateConfiguration,
            Map<String, dynamic>
          >(launchTemplateConfigurations, (value) => value.toMap()),
      'licenseConfigurationArns': licenseConfigurationArns,
      'region': region,
      's3ExportConfigurations':
          pulumi.Input.encodeList<
            GetDistributionConfigurationDistributionS3ExportConfiguration,
            Map<String, dynamic>
          >(s3ExportConfigurations, (value) => value.toMap()),
      'ssmParameterConfigurations':
          pulumi.Input.encodeList<
            GetDistributionConfigurationDistributionSsmParameterConfiguration,
            Map<String, dynamic>
          >(ssmParameterConfigurations, (value) => value.toMap()),
    };
  }

  factory GetDistributionConfigurationDistribution.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDistributionConfigurationDistribution(
      amiDistributionConfigurations:
          pulumi.Input.decodeList<
            GetDistributionConfigurationDistributionAmiDistributionConfiguration
          >(
            map['amiDistributionConfigurations'],
            (value) =>
                GetDistributionConfigurationDistributionAmiDistributionConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      containerDistributionConfigurations:
          pulumi.Input.decodeList<
            GetDistributionConfigurationDistributionContainerDistributionConfiguration
          >(
            map['containerDistributionConfigurations'],
            (value) =>
                GetDistributionConfigurationDistributionContainerDistributionConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      fastLaunchConfigurations:
          pulumi.Input.decodeList<
            GetDistributionConfigurationDistributionFastLaunchConfiguration
          >(
            map['fastLaunchConfigurations'],
            (value) =>
                GetDistributionConfigurationDistributionFastLaunchConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      launchTemplateConfigurations:
          pulumi.Input.decodeList<
            GetDistributionConfigurationDistributionLaunchTemplateConfiguration
          >(
            map['launchTemplateConfigurations'],
            (value) =>
                GetDistributionConfigurationDistributionLaunchTemplateConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      licenseConfigurationArns: (map['licenseConfigurationArns'] as List)
          .cast<String>(),
      region: map['region'] as String,
      s3ExportConfigurations:
          pulumi.Input.decodeList<
            GetDistributionConfigurationDistributionS3ExportConfiguration
          >(
            map['s3ExportConfigurations'],
            (value) =>
                GetDistributionConfigurationDistributionS3ExportConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      ssmParameterConfigurations:
          pulumi.Input.decodeList<
            GetDistributionConfigurationDistributionSsmParameterConfiguration
          >(
            map['ssmParameterConfigurations'],
            (value) =>
                GetDistributionConfigurationDistributionSsmParameterConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
