// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_prefix_args_doc}
/// The set of arguments for Prefix.
/// {@endtemplate}
/// {@macro pulumi_peering_prefix_args_doc}
class PrefixArgs {
  /// The name of the peering service.
  final pulumi.Input<String> peeringServiceName;
  /// The peering service prefix key
  final pulumi.Input<String>? peeringServicePrefixKey;
  /// The prefix from which your traffic originates.
  final pulumi.Input<String>? prefix;
  /// The name of the prefix.
  final pulumi.Input<String>? prefixName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrefixArgs].
  /// [peeringServiceName] The name of the peering service.
  /// [peeringServicePrefixKey] The peering service prefix key
  /// [prefix] The prefix from which your traffic originates.
  /// [prefixName] The name of the prefix.
  /// [resourceGroupName] The name of the resource group.
  PrefixArgs({
    required String peeringServiceName,
    String? peeringServicePrefixKey,
    String? prefix,
    String? prefixName,
    required String resourceGroupName,
  }) :
      peeringServiceName = pulumi.Input.asInput<String>(peeringServiceName),
      peeringServicePrefixKey = pulumi.Input.asOptionalInput<String>(peeringServicePrefixKey),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      prefixName = pulumi.Input.asOptionalInput<String>(prefixName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringServiceName': peeringServiceName,
      'peeringServicePrefixKey': ?peeringServicePrefixKey,
      'prefix': ?prefix,
      'prefixName': ?prefixName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrefixArgs.fromMap(Map<String, dynamic> map) {
    return PrefixArgs(
      peeringServiceName: map['peeringServiceName'] as String,
      peeringServicePrefixKey: map['peeringServicePrefixKey'] == null ? null : map['peeringServicePrefixKey'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      prefixName: map['prefixName'] == null ? null : map['prefixName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

