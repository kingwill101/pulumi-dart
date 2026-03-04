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
  final pulumi.Input<
    List<GetDistributionConfigurationDistributionAmiDistributionConfiguration>
  >
  amiDistributionConfigurations;

  /// Nested list of container distribution configurations.
  final pulumi.Input<
    List<
      GetDistributionConfigurationDistributionContainerDistributionConfiguration
    >
  >
  containerDistributionConfigurations;

  /// Nested list of Windows faster-launching configurations to use for AMI distribution.
  final pulumi.Input<
    List<GetDistributionConfigurationDistributionFastLaunchConfiguration>
  >
  fastLaunchConfigurations;

  /// Nested list of launch template configurations.
  final pulumi.Input<
    List<GetDistributionConfigurationDistributionLaunchTemplateConfiguration>
  >
  launchTemplateConfigurations;

  /// Set of Amazon Resource Names (ARNs) of License Manager License Configurations.
  final pulumi.Input<List<String>> licenseConfigurationArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;

  /// Nested list of S3 export configuration.
  final pulumi.Input<
    List<GetDistributionConfigurationDistributionS3ExportConfiguration>
  >
  s3ExportConfigurations;

  /// Nested list of SSM parameter configuration.
  final pulumi.Input<
    List<GetDistributionConfigurationDistributionSsmParameterConfiguration>
  >
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
          pulumi.Input.mapInputValue<
            List<
              GetDistributionConfigurationDistributionAmiDistributionConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            amiDistributionConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDistributionConfigurationDistributionAmiDistributionConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'containerDistributionConfigurations':
          pulumi.Input.mapInputValue<
            List<
              GetDistributionConfigurationDistributionContainerDistributionConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            containerDistributionConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDistributionConfigurationDistributionContainerDistributionConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'fastLaunchConfigurations':
          pulumi.Input.mapInputValue<
            List<
              GetDistributionConfigurationDistributionFastLaunchConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            fastLaunchConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDistributionConfigurationDistributionFastLaunchConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'launchTemplateConfigurations':
          pulumi.Input.mapInputValue<
            List<
              GetDistributionConfigurationDistributionLaunchTemplateConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            launchTemplateConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDistributionConfigurationDistributionLaunchTemplateConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'licenseConfigurationArns': licenseConfigurationArns,
      'region': region,
      's3ExportConfigurations':
          pulumi.Input.mapInputValue<
            List<GetDistributionConfigurationDistributionS3ExportConfiguration>,
            List<Map<String, dynamic>>
          >(
            s3ExportConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDistributionConfigurationDistributionS3ExportConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ssmParameterConfigurations':
          pulumi.Input.mapInputValue<
            List<
              GetDistributionConfigurationDistributionSsmParameterConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            ssmParameterConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetDistributionConfigurationDistributionSsmParameterConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetDistributionConfigurationDistribution.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDistributionConfigurationDistribution(
      amiDistributionConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDistributionConfigurationDistributionAmiDistributionConfiguration
        >(
          map['amiDistributionConfigurations']!,
          (value) =>
              GetDistributionConfigurationDistributionAmiDistributionConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      containerDistributionConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDistributionConfigurationDistributionContainerDistributionConfiguration
        >(
          map['containerDistributionConfigurations']!,
          (value) =>
              GetDistributionConfigurationDistributionContainerDistributionConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      fastLaunchConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDistributionConfigurationDistributionFastLaunchConfiguration
        >(
          map['fastLaunchConfigurations']!,
          (value) =>
              GetDistributionConfigurationDistributionFastLaunchConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      launchTemplateConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDistributionConfigurationDistributionLaunchTemplateConfiguration
        >(
          map['launchTemplateConfigurations']!,
          (value) =>
              GetDistributionConfigurationDistributionLaunchTemplateConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      licenseConfigurationArns: pulumi.Input.fromValue(
        (map['licenseConfigurationArns'] as List).cast<String>(),
      ),
      region: pulumi.Input.fromValue(map['region'] as String),
      s3ExportConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDistributionConfigurationDistributionS3ExportConfiguration
        >(
          map['s3ExportConfigurations']!,
          (value) =>
              GetDistributionConfigurationDistributionS3ExportConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      ssmParameterConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDistributionConfigurationDistributionSsmParameterConfiguration
        >(
          map['ssmParameterConfigurations']!,
          (value) =>
              GetDistributionConfigurationDistributionSsmParameterConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
