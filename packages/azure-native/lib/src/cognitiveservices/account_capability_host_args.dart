// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_host.dart';

/// {@template pulumi_cognitiveservices_account_capability_host_args_doc}
/// The set of arguments for AccountCapabilityHost.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_account_capability_host_args_doc}
class AccountCapabilityHostArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the capability host associated with the Cognitive Services Resource
  final pulumi.Input<String>? capabilityHostName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CapabilityHost> capabilityHostProperties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AccountCapabilityHostArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [capabilityHostName] The name of the capability host associated with the Cognitive Services Resource
  /// [capabilityHostProperties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AccountCapabilityHostArgs({
    required String accountName,
    String? capabilityHostName,
    required CapabilityHost capabilityHostProperties,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      capabilityHostName = pulumi.Input.asOptionalInput<String>(capabilityHostName),
      capabilityHostProperties = pulumi.Input.asInput<CapabilityHost>(capabilityHostProperties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'capabilityHostName': ?capabilityHostName,
      'capabilityHostProperties': pulumi.Input.mapInputValue<CapabilityHost, Map<String, dynamic>>(capabilityHostProperties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AccountCapabilityHostArgs.fromMap(Map<String, dynamic> map) {
    return AccountCapabilityHostArgs(
      accountName: map['accountName'] as String,
      capabilityHostName: map['capabilityHostName'] == null ? null : map['capabilityHostName'] as String,
      capabilityHostProperties: CapabilityHost.fromMap((map['capabilityHostProperties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

