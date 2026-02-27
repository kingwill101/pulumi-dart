// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_received_license_consumption_configuration_borrow_configuration/get_received_license_consumption_configuration_borrow_configuration.dart';
import '../get_received_license_consumption_configuration_provisional_configuration/get_received_license_consumption_configuration_provisional_configuration.dart';

class GetReceivedLicenseConsumptionConfiguration {
  /// Details about a borrow configuration. Detailed below
  final List<GetReceivedLicenseConsumptionConfigurationBorrowConfiguration>
      borrowConfigurations;

  /// Details about a provisional configuration. Detailed below
  final List<GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration>
      provisionalConfigurations;
  final String renewType;

  GetReceivedLicenseConsumptionConfiguration({
    required this.borrowConfigurations,
    required this.provisionalConfigurations,
    required this.renewType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['borrowConfigurations'] = pulumi.Input.encodeList<
        GetReceivedLicenseConsumptionConfigurationBorrowConfiguration,
        Map<String, dynamic>>(borrowConfigurations, (value) => value.toMap());
    map['provisionalConfigurations'] = pulumi.Input.encodeList<
            GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration,
            Map<String, dynamic>>(
        provisionalConfigurations, (value) => value.toMap());
    map['renewType'] = renewType;
    return map;
  }

  factory GetReceivedLicenseConsumptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetReceivedLicenseConsumptionConfiguration(
      borrowConfigurations: pulumi.Input.decodeList<
              GetReceivedLicenseConsumptionConfigurationBorrowConfiguration>(
          map['borrowConfigurations'],
          (value) =>
              GetReceivedLicenseConsumptionConfigurationBorrowConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
      provisionalConfigurations: pulumi.Input.decodeList<
              GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration>(
          map['provisionalConfigurations'],
          (value) =>
              GetReceivedLicenseConsumptionConfigurationProvisionalConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
      renewType: map['renewType'] as String,
    );
  }
}
