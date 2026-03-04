// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_received_license_consumption_configuration_borrow_configuration.dart';
import 'get_received_license_consumption_configuration_provisional_configuration.dart';

class GetReceivedLicenseConsumptionConfiguration {
  /// Details about a borrow configuration. Detailed below
  final pulumi.Input<
    List<GetReceivedLicenseConsumptionConfigurationBorrowConfiguration>
  >
  borrowConfigurations;

  /// Details about a provisional configuration. Detailed below
  final pulumi.Input<
    List<GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration>
  >
  provisionalConfigurations;
  final pulumi.Input<String> renewType;

  /// Creates a new [GetReceivedLicenseConsumptionConfiguration].
  /// [borrowConfigurations] Details about a borrow configuration. Detailed below
  /// [provisionalConfigurations] Details about a provisional configuration. Detailed below
  /// [renewType] Required.
  GetReceivedLicenseConsumptionConfiguration({
    required this.borrowConfigurations,
    required this.provisionalConfigurations,
    required this.renewType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'borrowConfigurations':
          pulumi.Input.mapInputValue<
            List<GetReceivedLicenseConsumptionConfigurationBorrowConfiguration>,
            List<Map<String, dynamic>>
          >(
            borrowConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetReceivedLicenseConsumptionConfigurationBorrowConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'provisionalConfigurations':
          pulumi.Input.mapInputValue<
            List<
              GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            provisionalConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'renewType': renewType,
    };
  }

  factory GetReceivedLicenseConsumptionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetReceivedLicenseConsumptionConfiguration(
      borrowConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetReceivedLicenseConsumptionConfigurationBorrowConfiguration
        >(
          map['borrowConfigurations']!,
          (value) =>
              GetReceivedLicenseConsumptionConfigurationBorrowConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      provisionalConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration
        >(
          map['provisionalConfigurations']!,
          (value) =>
              GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      renewType: pulumi.Input.fromValue(map['renewType'] as String),
    );
  }
}
