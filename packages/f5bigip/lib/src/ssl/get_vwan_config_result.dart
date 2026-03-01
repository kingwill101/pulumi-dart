// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVWanConfig.
class GetVWanConfigResult {
  final String azureVwanName;
  final String azureVwanResourcegroup;
  final String azureVwanVpnsite;
  /// (type `string`) provides IP address of BIGIP G/W for IPSec Endpoint.
  final String bigipGwIp;
  /// (type `string`) Provides IP Address space used on vWAN Hub.
  final String hubAddressSpace;
  /// (type `list`) Provides Subnets connected to vWAN Hub.
  final List<String> hubConnectedSubnets;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (type `string`) provides pre-shared-key used for IPSec Tunnel creation.
  final String presharedKey;
  /// (type `list`) Provides vWAN Gateway Address for IPSec End point
  final List<String> vwanGwAddresses;

  /// Creates a new [GetVWanConfigResult].
  /// [azureVwanName] Required.
  /// [azureVwanResourcegroup] Required.
  /// [azureVwanVpnsite] Required.
  /// [bigipGwIp] (type `string`) provides IP address of BIGIP G/W for IPSec Endpoint.
  /// [hubAddressSpace] (type `string`) Provides IP Address space used on vWAN Hub.
  /// [hubConnectedSubnets] (type `list`) Provides Subnets connected to vWAN Hub.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [presharedKey] (type `string`) provides pre-shared-key used for IPSec Tunnel creation.
  /// [vwanGwAddresses] (type `list`) Provides vWAN Gateway Address for IPSec End point
  GetVWanConfigResult({
    required this.azureVwanName,
    required this.azureVwanResourcegroup,
    required this.azureVwanVpnsite,
    required this.bigipGwIp,
    required this.hubAddressSpace,
    required this.hubConnectedSubnets,
    required this.id,
    required this.presharedKey,
    required this.vwanGwAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureVwanName': azureVwanName,
      'azureVwanResourcegroup': azureVwanResourcegroup,
      'azureVwanVpnsite': azureVwanVpnsite,
      'bigipGwIp': bigipGwIp,
      'hubAddressSpace': hubAddressSpace,
      'hubConnectedSubnets': hubConnectedSubnets,
      'id': id,
      'presharedKey': presharedKey,
      'vwanGwAddresses': vwanGwAddresses,
    };
  }

  factory GetVWanConfigResult.fromMap(Map<String, dynamic> map) {
    return GetVWanConfigResult(
      azureVwanName: map['azureVwanName'] as String,
      azureVwanResourcegroup: map['azureVwanResourcegroup'] as String,
      azureVwanVpnsite: map['azureVwanVpnsite'] as String,
      bigipGwIp: map['bigipGwIp'] as String,
      hubAddressSpace: map['hubAddressSpace'] as String,
      hubConnectedSubnets: (map['hubConnectedSubnets'] as List).cast<String>(),
      id: map['id'] as String,
      presharedKey: map['presharedKey'] as String,
      vwanGwAddresses: (map['vwanGwAddresses'] as List).cast<String>(),
    );
  }
}

