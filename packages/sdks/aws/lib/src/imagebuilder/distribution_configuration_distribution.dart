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
  final pulumi.Input<DistributionConfigurationDistributionAmiDistributionConfiguration>? amiDistributionConfiguration;
  /// Configuration block with container distribution settings. Detailed below.
  final pulumi.Input<DistributionConfigurationDistributionContainerDistributionConfiguration>? containerDistributionConfiguration;
  /// Set of Windows faster-launching configurations to use for AMI distribution. Detailed below.
  final pulumi.Input<List<DistributionConfigurationDistributionFastLaunchConfiguration>>? fastLaunchConfigurations;
  /// Set of launch template configuration settings that apply to image distribution. Detailed below.
  final pulumi.Input<List<DistributionConfigurationDistributionLaunchTemplateConfiguration>>? launchTemplateConfigurations;
  /// Set of Amazon Resource Names (ARNs) of License Manager License Configurations.
  final pulumi.Input<List<String>>? licenseConfigurationArns;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;
  /// Configuration block with S3 export settings. Detailed below.
  final pulumi.Input<DistributionConfigurationDistributionS3ExportConfiguration>? s3ExportConfiguration;
  /// Configuration block with SSM parameter configuration to use as AMI id output. Detailed below.
  final pulumi.Input<List<DistributionConfigurationDistributionSsmParameterConfiguration>>? ssmParameterConfigurations;

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
      'amiDistributionConfiguration': ?pulumi.Input.mapOptionalInputValue<DistributionConfigurationDistributionAmiDistributionConfiguration, Map<String, dynamic>>(amiDistributionConfiguration, (value) => value.toMap()),
      'containerDistributionConfiguration': ?pulumi.Input.mapOptionalInputValue<DistributionConfigurationDistributionContainerDistributionConfiguration, Map<String, dynamic>>(containerDistributionConfiguration, (value) => value.toMap()),
      'fastLaunchConfigurations': ?pulumi.Input.mapOptionalInputValue<List<DistributionConfigurationDistributionFastLaunchConfiguration>, List<Map<String, dynamic>>>(fastLaunchConfigurations, (value) => pulumi.Input.encodeList<DistributionConfigurationDistributionFastLaunchConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchTemplateConfigurations': ?pulumi.Input.mapOptionalInputValue<List<DistributionConfigurationDistributionLaunchTemplateConfiguration>, List<Map<String, dynamic>>>(launchTemplateConfigurations, (value) => pulumi.Input.encodeList<DistributionConfigurationDistributionLaunchTemplateConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenseConfigurationArns': ?licenseConfigurationArns,
      'region': region,
      's3ExportConfiguration': ?pulumi.Input.mapOptionalInputValue<DistributionConfigurationDistributionS3ExportConfiguration, Map<String, dynamic>>(s3ExportConfiguration, (value) => value.toMap()),
      'ssmParameterConfigurations': ?pulumi.Input.mapOptionalInputValue<List<DistributionConfigurationDistributionSsmParameterConfiguration>, List<Map<String, dynamic>>>(ssmParameterConfigurations, (value) => pulumi.Input.encodeList<DistributionConfigurationDistributionSsmParameterConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DistributionConfigurationDistribution.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationDistribution(
      amiDistributionConfiguration: map['amiDistributionConfiguration'] == null ? null : (DistributionConfigurationDistributionAmiDistributionConfiguration.fromMap((map['amiDistributionConfiguration'] as Map).cast<String, dynamic>())).input(),
      containerDistributionConfiguration: map['containerDistributionConfiguration'] == null ? null : (DistributionConfigurationDistributionContainerDistributionConfiguration.fromMap((map['containerDistributionConfiguration'] as Map).cast<String, dynamic>())).input(),
      fastLaunchConfigurations: map['fastLaunchConfigurations'] == null ? null : (pulumi.Input.decodeList<DistributionConfigurationDistributionFastLaunchConfiguration>(map['fastLaunchConfigurations'], (value) => DistributionConfigurationDistributionFastLaunchConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      launchTemplateConfigurations: map['launchTemplateConfigurations'] == null ? null : (pulumi.Input.decodeList<DistributionConfigurationDistributionLaunchTemplateConfiguration>(map['launchTemplateConfigurations'], (value) => DistributionConfigurationDistributionLaunchTemplateConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      licenseConfigurationArns: map['licenseConfigurationArns'] == null ? null : ((map['licenseConfigurationArns'] as List).cast<String>()).input(),
      region: (map['region'] as String).input(),
      s3ExportConfiguration: map['s3ExportConfiguration'] == null ? null : (DistributionConfigurationDistributionS3ExportConfiguration.fromMap((map['s3ExportConfiguration'] as Map).cast<String, dynamic>())).input(),
      ssmParameterConfigurations: map['ssmParameterConfigurations'] == null ? null : (pulumi.Input.decodeList<DistributionConfigurationDistributionSsmParameterConfiguration>(map['ssmParameterConfigurations'], (value) => DistributionConfigurationDistributionSsmParameterConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

