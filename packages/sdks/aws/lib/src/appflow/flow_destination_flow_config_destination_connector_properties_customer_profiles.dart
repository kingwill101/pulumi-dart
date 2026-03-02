// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles {
  /// Unique name of the Amazon Connect Customer Profiles domain.
  final pulumi.Input<String> domainName;
  /// Object specified in the Amazon Connect Customer Profiles flow destination.
  final pulumi.Input<String>? objectTypeName;

  /// Creates a new [FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles].
  /// [domainName] Unique name of the Amazon Connect Customer Profiles domain.
  /// [objectTypeName] Object specified in the Amazon Connect Customer Profiles flow destination.
  FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles({
    required this.domainName,
    this.objectTypeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'objectTypeName': ?objectTypeName,
    };
  }

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles.fromMap(Map<String, dynamic> map) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles(
      domainName: (map['domainName'] as String).input(),
      objectTypeName: map['objectTypeName'] == null ? null : ((map['objectTypeName'] as String).input()).input(),
    );
  }
}

