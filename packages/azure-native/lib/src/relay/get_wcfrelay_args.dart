// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_get_wcfrelay_args_doc}
/// Arguments for getWCFRelay.
/// {@endtemplate}
/// {@macro pulumi_relay_get_wcfrelay_args_doc}
class GetWCFRelayArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The relay name.
  final pulumi.Input<String> relayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWCFRelayArgs].
  /// [namespaceName] The namespace name
  /// [relayName] The relay name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetWCFRelayArgs({
    required String namespaceName,
    required String relayName,
    required String resourceGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      relayName = pulumi.Input.asInput<String>(relayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'relayName': relayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWCFRelayArgs.fromMap(Map<String, dynamic> map) {
    return GetWCFRelayArgs(
      namespaceName: map['namespaceName'] as String,
      relayName: map['relayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

