// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_configuration_distribution_ami_distribution_configuration.dart';
import 'distribution_configuration_distribution_container_distribution_configuration.dart';
import 'distribution_configuration_distribution_fast_launch_configuration.dart';
import 'distribution_configuration_distribution_launch_template_configuration.dart';
import 'distribution_configuration_distribution_s3_export_configuration.dart';
import 'distribution_configuration_distribution_ssm_parameter_configuration.dart';

class DistributionConfigurationDistribution {
  /// Configuration block with Amazon Machine Image (AMI) distribution settings. Detailed below.
  final DistributionConfigurationDistributionAmiDistributionConfiguration?
  amiDistributionConfiguration;

  /// Configuration block with container distribution settings. Detailed below.
  final DistributionConfigurationDistributionContainerDistributionConfiguration?
  containerDistributionConfiguration;

  /// Set of Windows faster-launching configurations to use for AMI distribution. Detailed below.
  final List<DistributionConfigurationDistributionFastLaunchConfiguration>?
  fastLaunchConfigurations;

  /// Set of launch template configuration settings that apply to image distribution. Detailed below.
  final List<DistributionConfigurationDistributionLaunchTemplateConfiguration>?
  launchTemplateConfigurations;

  /// Set of Amazon Resource Names (ARNs) of License Manager License Configurations.
  final List<String>? licenseConfigurationArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// Configuration block with S3 export settings. Detailed below.
  final DistributionConfigurationDistributionS3ExportConfiguration?
  s3ExportConfiguration;

  /// Configuration block with SSM parameter configuration to use as AMI id output. Detailed below.
  final List<DistributionConfigurationDistributionSsmParameterConfiguration>?
  ssmParameterConfigurations;

  /// Creates a new [DistributionConfigurationDistribution].
  /// [amiDistributionConfiguration] Configuration block with Amazon Machine Image (AMI) distribution settings. Detailed below.
  /// [containerDistributionConfiguration] Configuration block with container distribution settings. Detailed below.
  /// [fastLaunchConfigurations] Set of Windows faster-launching configurations to use for AMI distribution. Detailed below.
  /// [launchTemplateConfigurations] Set of launch template configuration settings that apply to image distribution. Detailed below.
  /// [licenseConfigurationArns] Set of Amazon Resource Names (ARNs) of License Manager License Configurations.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3ExportConfiguration] Configuration block with S3 export settings. Detailed below.
  /// [ssmParameterConfigurations] Configuration block with SSM parameter configuration to use as AMI id output. Detailed below.
  DistributionConfigurationDistribution({
    this.amiDistributionConfiguration,
    this.containerDistributionConfiguration,
    this.fastLaunchConfigurations,
    this.launchTemplateConfigurations,
    this.licenseConfigurationArns,
    required this.region,
    this.s3ExportConfiguration,
    this.ssmParameterConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiDistributionConfiguration': ?amiDistributionConfiguration == null
          ? null
          : amiDistributionConfiguration!.toMap(),
      'containerDistributionConfiguration':
          ?containerDistributionConfiguration == null
          ? null
          : containerDistributionConfiguration!.toMap(),
      'fastLaunchConfigurations': ?fastLaunchConfigurations == null
          ? null
          : pulumi.Input.encodeList<
              DistributionConfigurationDistributionFastLaunchConfiguration,
              Map<String, dynamic>
            >(fastLaunchConfigurations!, (value) => value.toMap()),
      'launchTemplateConfigurations': ?launchTemplateConfigurations == null
          ? null
          : pulumi.Input.encodeList<
              DistributionConfigurationDistributionLaunchTemplateConfiguration,
              Map<String, dynamic>
            >(launchTemplateConfigurations!, (value) => value.toMap()),
      'licenseConfigurationArns': ?licenseConfigurationArns,
      'region': region,
      's3ExportConfiguration': ?s3ExportConfiguration == null
          ? null
          : s3ExportConfiguration!.toMap(),
      'ssmParameterConfigurations': ?ssmParameterConfigurations == null
          ? null
          : pulumi.Input.encodeList<
              DistributionConfigurationDistributionSsmParameterConfiguration,
              Map<String, dynamic>
            >(ssmParameterConfigurations!, (value) => value.toMap()),
    };
  }

  factory DistributionConfigurationDistribution.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionConfigurationDistribution(
      amiDistributionConfiguration: map['amiDistributionConfiguration'] == null
          ? null
          : DistributionConfigurationDistributionAmiDistributionConfiguration.fromMap(
              (map['amiDistributionConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      containerDistributionConfiguration:
          map['containerDistributionConfiguration'] == null
          ? null
          : DistributionConfigurationDistributionContainerDistributionConfiguration.fromMap(
              (map['containerDistributionConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      fastLaunchConfigurations: map['fastLaunchConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<
              DistributionConfigurationDistributionFastLaunchConfiguration
            >(
              map['fastLaunchConfigurations'],
              (value) =>
                  DistributionConfigurationDistributionFastLaunchConfiguration.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      launchTemplateConfigurations: map['launchTemplateConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<
              DistributionConfigurationDistributionLaunchTemplateConfiguration
            >(
              map['launchTemplateConfigurations'],
              (value) =>
                  DistributionConfigurationDistributionLaunchTemplateConfiguration.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      licenseConfigurationArns: map['licenseConfigurationArns'] == null
          ? null
          : (map['licenseConfigurationArns'] as List).cast<String>(),
      region: map['region'] as String,
      s3ExportConfiguration: map['s3ExportConfiguration'] == null
          ? null
          : DistributionConfigurationDistributionS3ExportConfiguration.fromMap(
              (map['s3ExportConfiguration'] as Map).cast<String, dynamic>(),
            ),
      ssmParameterConfigurations: map['ssmParameterConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<
              DistributionConfigurationDistributionSsmParameterConfiguration
            >(
              map['ssmParameterConfigurations'],
              (value) =>
                  DistributionConfigurationDistributionSsmParameterConfiguration.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
