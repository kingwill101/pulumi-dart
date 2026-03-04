// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_security_service_policy_data_policy_option.dart';

class PolicySecurityServicePolicyData {
  /// Details about the service that are specific to the service type, in JSON format. For service type `SHIELD_ADVANCED`, this is an empty string. Examples depending on `type` can be found in the [AWS Firewall Manager SecurityServicePolicyData API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_SecurityServicePolicyData.html).
  final pulumi.Input<String>? managedServiceData;

  /// Contains the Network Firewall firewall policy options to configure a centralized deployment model. See the `policy_option` block.
  final pulumi.Input<PolicySecurityServicePolicyDataPolicyOption>? policyOption;

  /// An integer value containing ICMP type.
  final pulumi.Input<String> type;

  /// Creates a new [PolicySecurityServicePolicyData].
  /// [managedServiceData] Details about the service that are specific to the service type, in JSON format. For service type `SHIELD_ADVANCED`, this is an empty string. Examples depending on `type` can be found in the [AWS Firewall Manager SecurityServicePolicyData API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_SecurityServicePolicyData.html).
  /// [policyOption] Contains the Network Firewall firewall policy options to configure a centralized deployment model. See the `policy_option` block.
  /// [type] An integer value containing ICMP type.
  PolicySecurityServicePolicyData({
    this.managedServiceData,
    this.policyOption,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedServiceData': ?managedServiceData,
      'policyOption':
          ?pulumi.Input.mapOptionalInputValue<
            PolicySecurityServicePolicyDataPolicyOption,
            Map<String, dynamic>
          >(policyOption, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PolicySecurityServicePolicyData.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyData(
      managedServiceData: (() {
        final guardedValue = map['managedServiceData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyOption: (() {
        final guardedValue = map['policyOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicySecurityServicePolicyDataPolicyOption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
