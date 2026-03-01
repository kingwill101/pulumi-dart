// ignore_for_file: unused_element, unnecessary_cast


/// The parameters used to create a new virtual network rule while creating a new Data Lake Store account.
class CreateVirtualNetworkRuleWithAccountParameters {
  /// The unique name of the virtual network rule to create.
  final String name;
  /// The resource identifier for the subnet.
  final String subnetId;

  /// Creates a new [CreateVirtualNetworkRuleWithAccountParameters].
  /// [name] The unique name of the virtual network rule to create.
  /// [subnetId] The resource identifier for the subnet.
  CreateVirtualNetworkRuleWithAccountParameters({
    required this.name,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'subnetId': subnetId,
    };
  }

  factory CreateVirtualNetworkRuleWithAccountParameters.fromMap(Map<String, dynamic> map) {
    return CreateVirtualNetworkRuleWithAccountParameters(
      name: map['name'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

