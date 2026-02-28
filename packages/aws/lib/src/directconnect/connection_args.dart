// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_directconnect_connection_connection_args_doc}
class ConnectionArgs {
  /// The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html) and [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  final pulumi.Input<String> bandwidth;

  /// The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are `no_encrypt`, `should_encrypt`, and `must_encrypt`.
  final pulumi.Input<String>? encryptionMode;

  /// The AWS Direct Connect location where the connection is located. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  final pulumi.Input<String> location;

  /// The name of the connection.
  final pulumi.Input<String>? name;

  /// The name of the service provider associated with the connection.
  final pulumi.Input<String>? providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Boolean value indicating whether you want the connection to support MAC Security (MACsec). MAC Security (MACsec) is only available on dedicated connections. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for more information about MAC Security (MACsec) prerequisites. Default value: `false`.
  ///
  /// > **NOTE:** Changing the value of `request_macsec` will cause the resource to be destroyed and re-created.
  final pulumi.Input<bool>? requestMacsec;

  /// Set to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the state.
  final pulumi.Input<bool>? skipDestroy;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectionArgs].
  /// [bandwidth] The bandwidth of the connection. Valid values for dedicated connections: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Valid values for hosted connections: 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, 10Gbps, and 25Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html) and [Hosted Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/hosted_connection.html).
  /// [encryptionMode] The connection MAC Security (MACsec) encryption mode. MAC Security (MACsec) is only available on dedicated connections. Valid values are `no_encrypt`, `should_encrypt`, and `must_encrypt`.
  /// [location] The AWS Direct Connect location where the connection is located. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  /// [name] The name of the connection.
  /// [providerName] The name of the service provider associated with the connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestMacsec] Boolean value indicating whether you want the connection to support MAC Security (MACsec). MAC Security (MACsec) is only available on dedicated connections. See [MACsec prerequisites](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites) for more information about MAC Security (MACsec) prerequisites. Default value: `false`.
  /// [skipDestroy] Set to true if you do not wish the connection to be deleted at destroy time, and instead just removed from the state.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ConnectionArgs({
    required String bandwidth,
    String? encryptionMode,
    required String location,
    String? name,
    String? providerName,
    String? region,
    bool? requestMacsec,
    bool? skipDestroy,
    Map<String, String>? tags,
  })  : bandwidth = pulumi.Input.asInput<String>(bandwidth),
        encryptionMode = pulumi.Input.asOptionalInput<String>(encryptionMode),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        providerName = pulumi.Input.asOptionalInput<String>(providerName),
        region = pulumi.Input.asOptionalInput<String>(region),
        requestMacsec = pulumi.Input.asOptionalInput<bool>(requestMacsec),
        skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bandwidth'] = bandwidth;
    final encryptionModeValue = encryptionMode;
    if (encryptionModeValue != null) {
      map['encryptionMode'] = encryptionModeValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final providerNameValue = providerName;
    if (providerNameValue != null) {
      map['providerName'] = providerNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestMacsecValue = requestMacsec;
    if (requestMacsecValue != null) {
      map['requestMacsec'] = requestMacsecValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      bandwidth: map['bandwidth'] as String,
      encryptionMode: map['encryptionMode'] == null
          ? null
          : map['encryptionMode'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      providerName:
          map['providerName'] == null ? null : map['providerName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      requestMacsec:
          map['requestMacsec'] == null ? null : map['requestMacsec'] as bool,
      skipDestroy:
          map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
