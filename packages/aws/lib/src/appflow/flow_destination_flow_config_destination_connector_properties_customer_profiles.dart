// ignore_for_file: unused_element, unnecessary_cast

class FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles {
  /// Unique name of the Amazon Connect Customer Profiles domain.
  final String domainName;

  /// Object specified in the Amazon Connect Customer Profiles flow destination.
  final String? objectTypeName;

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

  factory FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowDestinationFlowConfigDestinationConnectorPropertiesCustomerProfiles(
      domainName: map['domainName'] as String,
      objectTypeName: map['objectTypeName'] == null
          ? null
          : map['objectTypeName'] as String,
    );
  }
}
