// ignore_for_file: unused_element, unnecessary_cast


class KafkaClusterRestProxy {
  /// The Azure Active Directory Security Group ID. Changing this forces a new resource to be created.
  final String securityGroupId;
  /// The Azure Active Directory Security Group name. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `security_group_name` property will be Required in version 3.0 of the AzureRM Provider.
  final String securityGroupName;

  /// Creates a new [KafkaClusterRestProxy].
  /// [securityGroupId] The Azure Active Directory Security Group ID. Changing this forces a new resource to be created.
  /// [securityGroupName] The Azure Active Directory Security Group name. Changing this forces a new resource to be created.
  KafkaClusterRestProxy({
    required this.securityGroupId,
    required this.securityGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupId': securityGroupId,
      'securityGroupName': securityGroupName,
    };
  }

  factory KafkaClusterRestProxy.fromMap(Map<String, dynamic> map) {
    return KafkaClusterRestProxy(
      securityGroupId: map['securityGroupId'] as String,
      securityGroupName: map['securityGroupName'] as String,
    );
  }
}

