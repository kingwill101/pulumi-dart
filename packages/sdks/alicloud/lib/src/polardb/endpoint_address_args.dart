// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_endpoint_address_endpoint_address_args_doc}
/// The set of arguments for EndpointAddress.
/// {@endtemplate}
/// {@macro pulumi_polardb_endpoint_address_endpoint_address_args_doc}
class EndpointAddressArgs {
  /// Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  final pulumi.Input<String>? connectionPrefix;
  /// The Id of cluster that can run database.
  final pulumi.Input<String> dbClusterId;
  /// The Id of endpoint that can run database.
  final pulumi.Input<String> dbEndpointId;
  /// Internet connection net type. Valid value: `Public`. Default to `Public`. Currently supported only `Public`.
  final pulumi.Input<String>? netType;
  /// Port of the specified endpoint. Valid values: 3000 to 5999.
  final pulumi.Input<String>? port;

  /// Creates a new [EndpointAddressArgs].
  /// [connectionPrefix] Prefix of the specified endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter.
  /// [dbClusterId] The Id of cluster that can run database.
  /// [dbEndpointId] The Id of endpoint that can run database.
  /// [netType] Internet connection net type. Valid value: `Public`. Default to `Public`. Currently supported only `Public`.
  /// [port] Port of the specified endpoint. Valid values: 3000 to 5999.
  EndpointAddressArgs({
    pulumi.Output<String>? connectionPrefix,
    required pulumi.Output<String> dbClusterId,
    required pulumi.Output<String> dbEndpointId,
    pulumi.Output<String>? netType,
    pulumi.Output<String>? port,
  }) :
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId),
      dbEndpointId = pulumi.Input.asInput<String>(dbEndpointId),
      netType = pulumi.Input.asOptionalInput<String>(netType),
      port = pulumi.Input.asOptionalInput<String>(port);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'dbClusterId': dbClusterId,
      'dbEndpointId': dbEndpointId,
      'netType': ?netType,
      'port': ?port,
    };
  }

  factory EndpointAddressArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAddressArgs(
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      dbClusterId: pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbEndpointId: pulumi.Output.create<String>(map['dbEndpointId'] as String),
      netType: map['netType'] == null ? null : pulumi.Output.create<String>(map['netType'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
    );
  }
}

