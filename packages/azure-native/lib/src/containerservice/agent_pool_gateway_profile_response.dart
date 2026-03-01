// ignore_for_file: unused_element, unnecessary_cast


/// Profile of the managed cluster gateway agent pool.
class AgentPoolGatewayProfileResponse {
  /// The Gateway agent pool associates one public IPPrefix for each static egress gateway to provide public egress. The size of Public IPPrefix should be selected by the user. Each node in the agent pool is assigned with one IP from the IPPrefix. The IPPrefix size thus serves as a cap on the size of the Gateway agent pool. Due to Azure public IPPrefix size limitation, the valid value range is [28, 31] (/31 = 2 nodes/IPs, /30 = 4 nodes/IPs, /29 = 8 nodes/IPs, /28 = 16 nodes/IPs). The default value is 31.
  final int? publicIPPrefixSize;

  /// Creates a new [AgentPoolGatewayProfileResponse].
  /// [publicIPPrefixSize] The Gateway agent pool associates one public IPPrefix for each static egress gateway to provide public egress. The size of Public IPPrefix should be selected by the user. Each node in the agent pool is assigned with one IP from the IPPrefix. The IPPrefix size thus serves as a cap on the size of the Gateway agent pool. Due to Azure public IPPrefix size limitation, the valid value range is [28, 31] (/31 = 2 nodes/IPs, /30 = 4 nodes/IPs, /29 = 8 nodes/IPs, /28 = 16 nodes/IPs). The default value is 31.
  AgentPoolGatewayProfileResponse({
    this.publicIPPrefixSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIPPrefixSize': ?publicIPPrefixSize,
    };
  }

  factory AgentPoolGatewayProfileResponse.fromMap(Map<String, dynamic> map) {
    return AgentPoolGatewayProfileResponse(
      publicIPPrefixSize: map['publicIPPrefixSize'] == null ? null : map['publicIPPrefixSize'] as int,
    );
  }
}

