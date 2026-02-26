// ignore_for_file: unused_element, unnecessary_cast

import '../policy_security_service_policy_data_policy_option/policy_security_service_policy_data_policy_option.dart';

class PolicySecurityServicePolicyData {
  /// Details about the service that are specific to the service type, in JSON format. For service type `SHIELD_ADVANCED`, this is an empty string. Examples depending on <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> can be found in the [AWS Firewall Manager SecurityServicePolicyData API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_SecurityServicePolicyData.html).
  final String? managedServiceData;

  /// Contains the Network Firewall firewall policy options to configure a centralized deployment model. See the <span pulumi-lang-nodejs="`policyOption`" pulumi-lang-dotnet="`PolicyOption`" pulumi-lang-go="`policyOption`" pulumi-lang-python="`policy_option`" pulumi-lang-yaml="`policyOption`" pulumi-lang-java="`policyOption`">`policy_option`</span> block.
  final PolicySecurityServicePolicyDataPolicyOption? policyOption;

  /// An integer value containing ICMP type.
  final String type;

  PolicySecurityServicePolicyData({
    this.managedServiceData,
    this.policyOption,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final managedServiceDataValue = managedServiceData;
    if (managedServiceDataValue != null) {
      map['managedServiceData'] = managedServiceDataValue;
    }
    final policyOptionValue = policyOption;
    if (policyOptionValue != null) {
      map['policyOption'] = policyOptionValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory PolicySecurityServicePolicyData.fromMap(Map<String, dynamic> map) {
    return PolicySecurityServicePolicyData(
      managedServiceData: map['managedServiceData'] == null
          ? null
          : map['managedServiceData'] as String,
      policyOption: map['policyOption'] == null
          ? null
          : PolicySecurityServicePolicyDataPolicyOption.fromMap(
              (map['policyOption'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
